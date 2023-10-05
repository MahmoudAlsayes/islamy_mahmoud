import 'package:flutter/material.dart';
import 'package:islami/myThemeData.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:provider/provider.dart';

class ThemingBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.dark);
            },
            child: Row(
              children: [
                Text(
                  "Dark",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.background),
                ),
                Spacer(),
                provider.modeApp == ThemeMode.dark
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
              provider.changeTheme(ThemeMode.light);
            },
            child: Row(
              children: [
                Text("Light",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground)),
                Spacer(),
                provider.modeApp == ThemeMode.dark
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
