import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather_cubit.dart';
import 'package:weather_app/constants/constants.dart';

import 'package:weather_app/widgets/app_bar_widget.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return BlocConsumer<WeatherCubit, WeatherStates>(
      listener: (context, state) {},
      builder: (context, state) {
        WeatherCubit cubit = WeatherCubit.get(context);
        return Scaffold(
          appBar: buildAppBar(context),
          body: Padding(
            padding: EdgeInsets.symmetric(
                vertical: height(context) / 20,
                horizontal: width(context) / 50),
            child: Column(
              children: [
                SearchBar(
                  onTap: () {},
                  onSubmitted: (value) async {
                    await cubit.getWeather(city: value, context: context);

                    searchController.clear();
                  },
                  controller: searchController,
                  leading: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  hintText: 'Enter City Name',
                  hintStyle: MaterialStatePropertyAll(
                      Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Colors.grey,
                          )),
                  elevation: const MaterialStatePropertyAll(1.0),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
