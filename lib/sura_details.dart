import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/myThemeData.dart';
import 'package:islami/soura_model.dart';

class SuraDetailsScreen extends StatefulWidget {


  static const String routeName = "SuraDetails";

  const SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}
class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.name,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
              side: BorderSide(
                color: MyThemeData.primaryColor,
              )
            ),
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
                    verses[index],
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                );
              },
              itemCount: verses.length,
            ),
          ),
        ),
      ),
    );
  }
  loadFile(int index) async {
    String file = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = file.split("\n");
    debugPrint(lines.toString());
    setState(() {});
    verses = lines;
  }
}
