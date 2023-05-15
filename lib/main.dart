import 'package:flutter/material.dart';
import 'package:untitled20/screen/welcom.dart';

void main(){
  runApp(myapp());
}

class myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Wellcom(),
    );
  }
}
