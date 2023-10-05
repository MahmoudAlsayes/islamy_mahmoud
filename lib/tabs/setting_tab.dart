import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/bottom_sheets/themeing_bottom_sheet.dart';
import 'package:islami/myThemeData.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:provider/provider.dart';

import '../bottom_sheets/language_bottom_sheet.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({super.key});

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Language"),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              padding: EdgeInsets.symmetric(horizontal: 18),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: MyThemeData.primaryColor),
              ),
              child: Text(pro.languageCode == "en"
                  ? AppLocalizations.of(context)!.eng
                  : AppLocalizations.of(context)!.arabic),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Theneing"),
          InkWell(
            onTap: () {
              showThemingBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              padding: EdgeInsets.symmetric(horizontal: 18),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: MyThemeData.primaryColor),
              ),
              child: Text("Light"),
            ),
          ),
        ],
      ),
    );
  }

  showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      builder: (context) => LanguageBottomSheet(),
    );
  }

  showThemingBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      builder: (context) => ThemingBottomSheet(),
    );
  }
}
