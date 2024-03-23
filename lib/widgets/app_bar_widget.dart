import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context, [List<Widget>? actions]) {
  return AppBar(
    centerTitle: true,
    title: const Text(
      "Weather App",
    ),
    actions: actions,
  );
}
