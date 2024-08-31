import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_application_1/cart_cubit/cubit/cart_cubit.dart';
import 'package:flutter_application_1/cubites/cubit/coffee_cubit.dart';
import 'package:flutter_application_1/favoueite_cubit/cubit/favourite_cubit.dart';
import 'package:flutter_application_1/screens/Onboarding.dart';
import 'package:flutter_application_1/services/coffee_services.dart';
import 'package:flutter_application_1/widgets/bloc_observer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => CoffeApp(), // Wrap your app
    ),
  );
}

class CoffeApp extends StatelessWidget {
  const CoffeApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CoffeeCubit(CoffeeServices()),
        ),
        BlocProvider(
          create: (context) => FavouriteCubit(),
        ),
        BlocProvider(
          create: (context) => CartCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        home: const OnboardingScreen(),
      ),
    );
  }
}
