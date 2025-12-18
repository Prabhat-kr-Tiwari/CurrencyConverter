import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPagee extends StatefulWidget {
  CurrencyConverterMaterialPagee({super.key}) {
    print("Constructor");
  }

  @override
  State<StatefulWidget> createState() {
    print("Create state");

    return _CurrencyConverterMaterialPagee();
  }
}

class _CurrencyConverterMaterialPagee extends State {
  double result  = 0;
  final TextEditingController usdController = TextEditingController();

  void convert(){
    result = (81 * double.parse(usdController.text));
    setState(() {

    });
  }
  @override
  void initState() {
    super.initState();
    print("rebuild");
  }

  @override
  Widget build(BuildContext context) {
    print("Build fnc");

    // var usdController = Controller
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 2,
        style: BorderStyle.solid,
      ),

      borderRadius: BorderRadius.circular(15),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: Text("Currency Converter",style: TextStyle(color: Colors.white),),
      ),
      // backgroundColor: Color.fromRGBO(229, 213, 21, 0.9490196078431372),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "INR ${result!=0? result.toStringAsFixed(2) :result.toStringAsFixed(0)}",
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: usdController,
                onSubmitted: (value) {
                  print(value);
                },

                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Please Enter the amount in USD",
                  hintStyle: const TextStyle(color: Colors.black),
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  border: border,
                  focusedBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: convert,
                // style: ButtonStyle(
                //   backgroundColor: const WidgetStatePropertyAll(Colors.white),
                //   foregroundColor: const WidgetStatePropertyAll(Colors.white),
                //   minimumSize: const WidgetStatePropertyAll(
                //     Size(double.infinity, 50),
                //   ),
                //   shape: WidgetStatePropertyAll(
                //     RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(12),
                //     ),
                //   ),
                // ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),

                child: Text("Convert", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
