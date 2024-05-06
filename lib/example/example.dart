import 'dart:io';

import 'package:flutter/material.dart';
import 'package:responsive_app/size/size_config.dart';

class Example extends StatefulWidget {
  const Example({super.key});
  @override
  State<Example> createState() => _Example();
}

class _Example extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvoked: (didPop) {
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => exit(0)));
        return;
      },
      child: Scaffold(
        body: SafeArea(
          top: true,
          bottom: true,
          child: Align(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      'Example text size',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 3 * SizeConfig.textMultiplier,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      'Example text size',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 2.5 * SizeConfig.textMultiplier,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      'Example text size',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 2 * SizeConfig.textMultiplier,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      'Example text size',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 1.5 * SizeConfig.textMultiplier,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Container(
                      width: 90 * SizeConfig.widthMultiplier,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Text(
                        'Example container width ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 1.5 * SizeConfig.textMultiplier,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 10 * SizeConfig.heightMultiplier,
                      width: 90 * SizeConfig.widthMultiplier,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Text(
                        'Example container height',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 1.5 * SizeConfig.textMultiplier,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Container(
                      width: 90 * SizeConfig.widthMultiplier,
                      padding: EdgeInsets.symmetric(
                          vertical: 2 * SizeConfig.heightMultiplier),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Text(
                        'Example container padding',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 1.5 * SizeConfig.textMultiplier,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 90 * SizeConfig.widthMultiplier,
                      margin:
                          EdgeInsets.only(top: 2 * SizeConfig.heightMultiplier),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Text(
                        'Example container margin',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 1.5 * SizeConfig.textMultiplier,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Container(
                      width: 90 * SizeConfig.widthMultiplier,
                      padding: EdgeInsets.symmetric(
                          vertical: 2 * SizeConfig.heightMultiplier),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5 * SizeConfig.widthMultiplier))),
                      child: Text(
                        'Example container border radius',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 1.5 * SizeConfig.textMultiplier,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      'Example image size',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 2 * SizeConfig.textMultiplier,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Container(
                      padding:
                          EdgeInsets.all(2 * SizeConfig.imageSizeMultiplier),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: FlutterLogo(
                        size: 30 * SizeConfig.imageSizeMultiplier,
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
