import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/constants/constants.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/news_services.dart';

import '../views/home_view.dart';
part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherStates> {
  WeatherCubit() : super(WeatherInitial());

  static WeatherCubit get(context) => BlocProvider.of(context);
  WeatherModel? model;
  //String? message;
  getWeather({required String city, required context}) {
    emit(WeatherLoadingDataState());
    WeatherServices.getNewsData(url: api, query: {
      "q": city,
      "key": apiKey,
    }).then((value) {
      emit(WeatherGetDataSuccessState());
      model = WeatherModel.fromJson(value.data);
      //message = value.data['error']['message'];
      navigateToHomeView(context);
      print(model!.weatherCondition);
    }).catchError((error) {
      emit(WeatherGetDataErrorState(error));
      throw Exception(error.toString());
    });
  }

  void navigateToHomeView(context) {
    navigateToFinish(context, const HomeView());
    emit(WeatherNavigateToHomeViewState());
  }
}
