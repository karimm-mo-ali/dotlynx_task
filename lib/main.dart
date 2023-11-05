// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'core/config/routes.dart';
import 'core/constants/colors.dart';
import 'core/constants/strings.dart';
import 'core/cubits/bloc_observer.dart';
import 'core/utils/api/general_api_request.dart';
import 'features/Restaurants/presentation/manager/CategoriesCubit/categories_cubit.dart';
import 'features/Restaurants/presentation/manager/ProductsCubit/products_cubit.dart';
import 'features/Restaurants/presentation/manager/RestaurantsCubit/restaurants_cubit.dart';

GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ApiService().init();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  /// Init your App.
  BlocOverrides.runZoned(
    () => runApp(
      const MyApp(),
    ),
    blocObserver: AppBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: kScaffoldBackGroundColor,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GetRestaurantsCubit()),
        BlocProvider(create: (context) => GetCategoriesCubit()),
        BlocProvider(create: (context) => GetProductsCubit()),
      ],
      child: MaterialApp(
        builder: (context, widget) => ResponsiveWrapper.builder(
            BouncingScrollWrapper.builder(context, widget!),
            maxWidth: 1200,
            minWidth: 450,
            defaultScale: true,
            breakpoints: [
              const ResponsiveBreakpoint.resize(450, name: MOBILE),
              const ResponsiveBreakpoint.resize(800, name: TABLET),
              const ResponsiveBreakpoint.resize(1000, name: TABLET),
              const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
              const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
            ],
            background: Container(color: const Color(0xFFF5F5F5))),
        scaffoldMessengerKey: scaffoldMessengerKey,
        useInheritedMediaQuery: true,
        navigatorKey: AppRoutes.navigatorKey,
        title: appName,
        debugShowCheckedModeBanner: false,
        initialRoute: restaurantsScreen,
        onGenerateRoute: AppRoutes.generatedRoutes,
      ),
    );
  }
}
