import 'package:flutter/material.dart';

class _MyAppChangeText extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title:'Retrieve Text Input',
      home: _MyCustomFormChange(),
    );
  }
}

class _MyCustomFormChange extends StatefulWidget{
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}
