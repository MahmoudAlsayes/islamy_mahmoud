import 'package:flutter/material.dart';
import 'package:islami/myThemeData.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

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
  double rot = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: IconButton(
              onPressed: () {
                rot += 0.18;
                index++;
                if (index == 33) {
                  rot = 0;
                  if (number < 3) {
                    number++;
                  } else {
                    number = 0;
                  }

                  index = 0;
                }
                setState(() {});
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              iconSize: 300,
              icon: Transform.rotate(
                  angle: rot, child: Image.asset("assets/images/seb7a.png")),
            ),
          ),
          // Center(
          //   child: InkWell(
          //
          //     splashColor: Colors.transparent,
          //     highlightColor: Colors.transparent,
          //     onTap: () {
          //       rot+=0.18;
          //       index++;
          //       if (index == 33) {
          //         rot=0;
          //         if (number < 3) {
          //           number++;
          //         } else {
          //           number = 0;
          //         }
          //
          //         index = 0;
          //       }
          //
          //       setState(() {});
          //
          //     },
          //     child: Transform.rotate(
          //
          //         angle:rot ,
          //         child: Image.asset("assets/images/seb7a.png")),
          //   ),
          // ),
          const SizedBox(
            height: 41,
          ),
          const Text(
            "عدد التسبيح",
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 34,
          ),
          Container(
            width: 69,
            height: 81,
            decoration: BoxDecoration(
                color: const Color(0xffd5c0a3),
                borderRadius: BorderRadius.circular(25)),
            child: Center(
                child: Text(
                  "$index",
              style: const TextStyle(color: Colors.black),
            )),
          ),
          const SizedBox(
            height: 22,
          ),
          Container(
            width: 137,
            height: 51,
            decoration: BoxDecoration(
                color: MyThemeData.primaryColor,
                borderRadius: BorderRadius.circular(25)),
            child: Center(child: Text(zkr[number])),
          ),
        ],
      ),
    );
  }
}
