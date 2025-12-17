import 'package:currencyconverter/pages/currency_converter_material_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

//types of widget
//1.stateless widget
//2. stateful widget
//3.inherited widget

// what is state
//state =  state refers to any data that determine how your widget should look like how
//it should be render or it should behave
// /*
// In the state less widget data is immutable means once the widget is created it cannot be
// changed
//
// */


//----------Design system-----------------
//1. Material design
//2. cupertino design
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CurrencyConverterMaterialPagee()
    );
  }
  
}