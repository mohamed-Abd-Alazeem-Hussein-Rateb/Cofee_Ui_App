import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_application_1/cubites/cubit/coffee_cubit.dart';
import 'package:flutter_application_1/screens/Onboarding.dart';
import 'package:flutter_application_1/screens/cart.dart';
import 'package:flutter_application_1/services/coffee_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => CoffeApp(), // Wrap your app
      ),
    );

class CoffeApp extends StatelessWidget {
  const CoffeApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CoffeeCubit(CoffeeServices()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        home: const Cart(),
      ),
    );
  }
}
