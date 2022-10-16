import 'package:flutter/material.dart';
import 'package:flutter_first/pages/cart_page.dart';
import 'package:flutter_first/pages/home_page.dart';
import 'package:flutter_first/pages/login_page.dart';
import 'package:flutter_first/utils/routes.dart';
import 'package:flutter_first/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_first/store/store.dart';
void main() {
  runApp(VxState(store: MyStore(), child: FirstClass()));
}

class FirstClass extends StatelessWidget {
  const FirstClass({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      initialRoute: MyRoutes.homeroute,
      routes: {
        "/": (context)=> LoginPage(),
        MyRoutes.homeroute: (context)=> HomePage(),
        MyRoutes.loginroute: (context)=> LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage()
      },
    );
  }
}
