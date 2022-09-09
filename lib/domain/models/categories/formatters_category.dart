import 'package:devtoys/domain/models/tools/formatters/json_formatter.dart';
import 'package:devtoys/domain/models/tools/formatters/sql_formatter.dart';
import 'package:devtoys/domain/models/tools/tool.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'category.dart';

class FormattersCategory implements Category{

  static final FormattersCategory _singleton = FormattersCategory._internal();

  factory FormattersCategory() {
    return _singleton;
  }

  FormattersCategory._internal();
  
  @override
  IconData get icon => FontAwesomeIcons.box;

  @override
  String get name => "formatters".tr;

  @override
  List<Tool> get tools => [SqlFormatterTool(), JsonFormatterTool()];
}