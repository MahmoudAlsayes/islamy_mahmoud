import 'package:flutter/material.dart';
import 'package:islami/myThemeData.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> zkr = [
    "سبحان الله",
    "الحمد لله",
    "لا إله إلا الله",
    "الله أكبر",
  ];
  int index = 0;
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Center(
          //   child: IconButton(
          //     onPressed: () {
          //       index++;
          //       if (index == 33) {
          //         if (number < 3) {
          //           number++;
          //         } else {
          //           number = 0;
          //         }
          //
          //         index = 0;
          //       }
          //       setState(() {});
          //     },
          //     splashColor: Colors.transparent,
          //     highlightColor: Colors.transparent,
          //
          //     iconSize: 300,
          //     icon: Image.asset("assets/images/seb7a.png"),
          //   ),
          // ),
          Center(
            child: InkWell(

              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                index++;
                if (index == 33) {
                  if (number < 3) {
                    number++;
                  } else {
                    number = 0;
                  }

                  index = 0;
                }

                setState(() {});
              },
              child: Image.asset("assets/images/seb7a.png"),
            ),
          ),
          SizedBox(
            height: 41,
          ),
          Text(
            "عدد التسبيح",
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 34,
          ),
          Container(
            width: 69,
            height: 81,
            decoration: BoxDecoration(
                color: Color(0xffd5c0a3),
                borderRadius: BorderRadius.circular(25)),
            child: Center(
                child: Text(
              "$index",
              style: TextStyle(color: Colors.black),
            )),
          ),
          SizedBox(
            height: 22,
          ),
          Container(
            width: 137,
            height: 51,
            decoration: BoxDecoration(
                color: MyThemeData.primaryColor,
                borderRadius: BorderRadius.circular(25)),
            child: Center(child: Text("${zkr[number]}")),
          ),
        ],
      ),
    );
  }
}
