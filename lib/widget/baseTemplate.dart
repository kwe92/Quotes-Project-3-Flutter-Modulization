// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BaseTemplate extends StatelessWidget {
  late Widget pageBody;
  BaseTemplate({Key? key, required this.pageBody}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: //Colors.grey[300],
              const Color.fromRGBO(215, 215, 215, 1),
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(65, 85, 39, 1),
            title: const Text(
              'Quotes Of Life',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          body: pageBody),
    );
  }
}
