import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/hadeth_details.dart';
import 'package:islami/hadeth_model.dart';
import 'package:islami/myThemeData.dart';

// ignore: must_be_immutable
class AhadethTab extends StatelessWidget {
  List<HadethModel> allAhadeth = [];

  AhadethTab({super.key});

  @override
  Widget build(BuildContext context) {
    loadHadeth();
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Image.asset("assets/images/ahadeth_image.png"),
          ),
          Divider(
            thickness: 3,
            color: MyThemeData.primaryColor,
          ),
          Text(
            "Ahadeth",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Divider(
            height: 2,
            thickness: 2,
            color: MyThemeData.primaryColor,
          ),
          ListView.separated(
            separatorBuilder: (context, index) => Divider(
              endIndent: 40,
              indent: 40,
              thickness: 1,
              color: MyThemeData.primaryColor,
            ),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadethDetails.routeName,
                      arguments: allAhadeth[index]);
                },
                child: Text(
                  allAhadeth[index].title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              );
            },
            itemCount: allAhadeth.length,
          )
        ],
      ),
    );
  }

  void loadHadeth() {
    rootBundle.loadString("assets/files/ahadeth.txt").then(
      (ahadeth) {
        List<String> ahadethList = ahadeth.split("#");

        for (int i = 0; i < ahadethList.length; i++) {
          String hadethOne = ahadethList[i];
          List<String> hadethOneLines = hadethOne.trim().split("\n");
          String title = hadethOneLines[0];
          hadethOneLines.removeAt(0);
          List<String> content = hadethOneLines;
          HadethModel hadethModel = HadethModel(title, content);
          debugPrint(hadethModel.title.toString());
          debugPrint("$i");
          allAhadeth.add(hadethModel);
        }
      },
    ).catchError(
      (e) {
        debugPrint(e.toString());
      },
    );
  }
}
