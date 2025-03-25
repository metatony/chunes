// ignore_for_file: prefer_const_constructors

import 'package:music_player/utils/exports.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TrackProvider()),
        ChangeNotifierProvider(create: (create) => AudioProvider()),
      ],
      child: ScreenUtilInit(
        useInheritedMediaQuery: true,
        designSize: Size(375, 812),
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            themeMode: ThemeMode.system,
            theme: Provider.of<TrackProvider>(context).themeToggle
                ? lighttheme
                : darkTheme,
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: HomePage(),
            ),
          );
        },
      ),
    );
  }
}
