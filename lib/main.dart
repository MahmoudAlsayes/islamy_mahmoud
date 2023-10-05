import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/hadeth_details.dart';
import 'package:islami/home.dart';
import 'package:islami/myThemeData.dart';
import 'package:islami/prefs_helper.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:islami/provider/sura_details_provider.dart';
import 'package:islami/sura_details.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

///compostion <-- mator for car
/// agirecation <-- air condetion for car ++
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  PrefsHelper.prefs = await SharedPreferences.getInstance();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => MyProvider()..init(),
    ),
    ChangeNotifierProvider(
      create: (context) => SuraDetailsProvider(),
    ),
  ], child: const MyApp()));
}

///provider <-- easy
///Blok
///get X

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return MaterialApp(
      locale: Locale(pro.languageCode),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
      themeMode: pro.modeApp,
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
