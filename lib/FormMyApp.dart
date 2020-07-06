import 'package:flutter/material.dart';

class _FormMyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    final appTitle = 'Form Validation Demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: _MyCustomForm(),
      ),
    );
  }
}

class _MyCustomForm extends StatefulWidget{
  @override
  _MyCustomFormState createState(){
    return _MyCustomFormState();
  }
}

class _MyCustomFormState extends State<_MyCustomForm>{
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context){
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAligment: CrossAxisAligment.start,
        children: <Widget>[
          TextFormField(
            validator: (value){
              if(value.isEmpty){
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                if(_formKey.currentState.validate()){
                  Scaffold.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}