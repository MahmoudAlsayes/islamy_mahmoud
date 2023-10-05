import 'package:flutter/material.dart';
import 'package:islami/myThemeData.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:islami/provider/sura_details_provider.dart';
import 'package:islami/soura_model.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "SuraDetails";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}
class _SuraDetailsScreenState extends State<SuraDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    var prooo = Provider.of<MyProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    // if (pro.Verses.isEmpty) {
    //   pro.loadFile(args.index);
    //
    // }
    return ChangeNotifierProvider(
        create: (context) => SuraDetailsProvider()..loadFile(args.index),
        builder: (context, child) {
          var pro = Provider.of<SuraDetailsProvider>(context);

          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(prooo.getBackGround()),
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
                          pro.Verses[index],
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      );
                    },
                    itemCount: pro.Verses.length,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
