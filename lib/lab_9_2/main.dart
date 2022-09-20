import
'package:flutter/material.dart';
import 'package:jayshree_lab_9/lab_9_2/choose_location.dart';
import 'package:jayshree_lab_9/lab_9_2/home.dart';
import 'package:jayshree_lab_9/lab_9_2/loading.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home', routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    }));
