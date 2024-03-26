import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import '../constants/constants.dart';

class WeatherBody extends StatelessWidget {
  const WeatherBody({
    super.key,
    required this.weatherModel,
  });

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: height(context) / 10),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/night.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                weatherModel.cityName ?? "",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                "Updated at ${weatherModel.date!.hour}:${weatherModel.date!.minute}  ",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(
                height: height(context) / 20,
              ),
              Image.network(
                weatherModel.image!.contains('https')
                    ? '${weatherModel.image}'
                    : 'https:${weatherModel.image}',
                errorBuilder: (context, error, stackTrace) =>
                    Image.asset("assets/images/cloudy.png"),
              ),
              SizedBox(
                height: height(context) / 40,
              ),
              Text(
                "${weatherModel.temp!.round()}°C",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w900,
                      fontSize: 50,
                    ),
              ),
              SizedBox(
                height: height(context) / 20,
              ),
              Text(
                weatherModel.weatherCondition ?? "",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: height(context) / 20,
              ),
              Text(
                "${weatherModel.minTemp!.round()}°C / ${weatherModel.maxTemp!.round()}°C",
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
