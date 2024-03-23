import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/weather_cubit.dart';
import '../constants/constants.dart';

class WeatherBody extends StatelessWidget {
  const WeatherBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherCubit, WeatherStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        WeatherCubit cubit = WeatherCubit.get(context);
        return Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: height(context) / 10),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/after_noon.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Text(
                cubit.model!.cityName ?? "",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                "Updated at ${cubit.model!.date ?? ""}",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(
                height: height(context) / 20,
              ),
              Image.asset("assets/images/cloudy.png"),
              SizedBox(
                height: height(context) / 40,
              ),
              Text(
                "17°C",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w900,
                      fontSize: 50,
                    ),
              ),
              SizedBox(
                height: height(context) / 20,
              ),
              Text(
                cubit.model!.weatherCondition ?? "Cloudy",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: height(context) / 20,
              ),
              const Text(
                "25°C / 28°C",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
