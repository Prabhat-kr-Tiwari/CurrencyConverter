import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  CurrencyConverterCupertinoPage({super.key}) {
    print("Constructor");
  }

  @override
  State<StatefulWidget> createState() {
    print("Create state");

    return _CurrencyConverterCupertinoPage();
  }
}

class _CurrencyConverterCupertinoPage extends State {
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
  void dispose() {
    usdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Build fnc");

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle: Text("Currency Converter",),
      ),
      // backgroundColor: Color.fromRGBO(229, 213, 21, 0.9490196078431372),
      backgroundColor: CupertinoColors.systemGrey3,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "INR ${result!=0? result.toStringAsFixed(2) :result.toStringAsFixed(0)}",
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: CupertinoColors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoTextField(
                controller: usdController,
                onSubmitted: (value) {
                  print(value);
                },

                style: TextStyle(color: CupertinoColors.black),
                decoration:BoxDecoration(
                  border:Border.all( ),
                  borderRadius: BorderRadius.circular(5),
                  color: CupertinoColors.white,

                ),
                placeholder: "Please enter the amount in USD",
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,
                child: Text("Convert", style: TextStyle(color: CupertinoColors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
