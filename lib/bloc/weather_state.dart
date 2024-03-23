part of 'weather_cubit.dart';

abstract class WeatherStates {}

class WeatherInitial extends WeatherStates {}

class WeatherLoadingDataState extends WeatherStates {}

class WeatherGetDataSuccessState extends WeatherStates {}

class WeatherGetDataErrorState extends WeatherStates {
  final error;
  WeatherGetDataErrorState(this.error);
}

class WeatherNavigateToHomeViewState extends WeatherStates {}
