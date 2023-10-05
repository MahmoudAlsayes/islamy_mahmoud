import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/myThemeData.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage("en");
            },
            child: Row(
              children: [
                Text(
                  AppLocalizations.of(context)!.eng,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: provider.languageCode == "en"
                            ? MyThemeData.primaryColor
                            : Theme.of(context).colorScheme.secondary,
                      ),
                ),
                Spacer(),
                provider.languageCode == "en"
                    ? Icon(
                        Icons.done,
                        color: MyThemeData.primaryColor,
                        size: 35,
                      )
                    : SizedBox.shrink(),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage("ar");
            },
            child: Row(
              children: [
                Text(AppLocalizations.of(context)!.arabic,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: provider.languageCode == "ar"
                              ? MyThemeData.primaryColor
                              : Colors.black45,
                        )),
                Spacer(),
                provider.languageCode == "en"
                    ? SizedBox.shrink()
                    : Icon(
                        Icons.done,
                        color: MyThemeData.primaryColor,
                        size: 35,
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
