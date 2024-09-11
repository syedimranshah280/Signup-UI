import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'SizeConfig.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget bluid(BuildContext context) {
    SystemChorme.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return LayoutBuilder(
      builder: (context, constraints) =>
          OrientationBuilder(bluid: (context, orientation) {
        SizeConfig().init(constrations, orientation);
        return materialApp(
          debugShowCheckedModeBanner: false,
          home: LoginPage(),
        );
      }),
    );
  }

