import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather_cubit.dart';
import 'package:weather_app/constants/constants.dart';
import 'package:weather_app/views/search_view.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/no_weather_body.dart';
import '../widgets/weather_body_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherCubit, WeatherStates>(
      listener: (context, state) {},
      builder: (context, state) {
        WeatherCubit cubit = WeatherCubit.get(context);
        return Scaffold(
          appBar: buildAppBar(
            context,
            [
              IconButton(
                onPressed: () {
                  navigateTo(context, const SearchView());
                },
                icon: const Icon(Icons.search),
              ),
            ],
          ),
          body: cubit.model == null
              ? const NoWeatherBody()
              : WeatherBody(weatherModel: cubit.model!),
        );
      },
    );
  }
}
