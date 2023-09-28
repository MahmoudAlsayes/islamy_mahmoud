import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/hadeth_details.dart';
import 'package:islami/home.dart';
import 'package:islami/myThemeData.dart';
import 'package:islami/sura_details.dart';

///compostion <-- mator for car
/// agirecation <-- air condetion for car ++
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // locale: Locale("en"),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,

      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}
// class User {
// void login() {
//   print("User logged in")  ;
// }
// void logout() {
//   print("User logged out")  ;
//
// }
// void printUserInfo(String username) {
//   print("Username: $username ")  ;
// }
// }
// /// ------------------------------------------
//
// class Authentication{
// void login() {
//   print("User logged in")  ;
// }
// void logout() {
//   print("User logged out")  ;
// }
// };
//
// class UserInfo {
//   void printUserInfo(String username) {
//     print("Username: $username ")  ;
//   }
// }
//
// class User : public Authentication, public UserInfo {
// };
