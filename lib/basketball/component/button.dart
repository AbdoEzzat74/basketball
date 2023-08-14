
import 'package:flutter/material.dart';

 Widget buttonWidget({
   required String name ,
   required void Function() Presssed })
 => ElevatedButton(
  onPressed: Presssed,
    child: Text(name),
   style: ElevatedButton.styleFrom(
     padding: EdgeInsets.all(8),
     backgroundColor: Colors.orange,
     minimumSize: Size(150, 50),
   )
);
