// ignore_for_file: prefer_const_constructors

import 'package:device_preview/device_preview.dart';

import 'package:music_player/utils/exports.dart';
import 'package:music_player/utils/provider/trackprovider.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MyApp();
  }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TrackProvider(),
      child: ScreenUtilInit(
        useInheritedMediaQuery: true,
        designSize: Size(375, 812),
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            themeMode: ThemeMode.system,
            theme: Provider.of<TrackProvider>(context).themeToggle ? lighttheme : darkTheme,
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: HomePage(),
            ),
          );
        },
      ),
    );
    // );
  }
}
