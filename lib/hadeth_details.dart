import 'package:flutter/material.dart';
import 'package:islami/hadeth_model.dart';

import 'myThemeData.dart';

class HadethDetails extends StatelessWidget {
  const HadethDetails({super.key});

  static const String routeName = "HadethDetails";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
              side: BorderSide(
                color: MyThemeData.primaryColor,
              )),
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              indent: 40,
              endIndent: 40,
              thickness: 1,
              color: MyThemeData.primaryColor,
            ),
            itemBuilder: (context, index) {
              return Center(
                child: Text(
                  args.content[index],
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              );
            },
            itemCount: args.content.length,
          ),
        ),
      ),
    );
  }
}
