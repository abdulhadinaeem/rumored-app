import 'core/constants/imports.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: AppColors.textFiledColor),
          displayMedium: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: AppColors.textFiledColor),
        ),
        scaffoldBackgroundColor: AppColors.primaryColor,
      ),
      home: SplashScreen(),
      // home: QuestionCreatScreen(),
    );
  }
}
