import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:layout/layout.dart';

import 'package:yaru_widgets/yaru_widgets.dart';

class MenuCard extends StatelessWidget {
  final IconData icon;
  final String? text;
  final Function? onTap;

  MenuCard({required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: Container(
        margin: EdgeInsets.only(right: 50, left: 50, top: 15, bottom: 15),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Card(
          surfaceTintColor: Colors.transparent,
          color: Color.fromRGBO(53, 53, 53, 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon, size: 75),
              SizedBox(height: 10),
              AutoSizeText(
                text!,
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Flexible(
                child: AutoSizeText(
                    "TODO: Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.fade),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
