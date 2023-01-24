import 'dart:math';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

const primaryColor=Color.fromRGBO(0, 197, 105, 1);
const kTextColor= Color.fromRGBO(5, 82, 128, 1);
const kTextLigthColor= Color.fromRGBO(4, 136, 198, 1);
const kBgTempletColor=Color.fromRGBO(248, 249, 253, 0.4);
const kDefaultPadding=20.0;
const Data_Current_User ='';
String id ='';

const NameofCurrent='Thanwa';
const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();
String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

