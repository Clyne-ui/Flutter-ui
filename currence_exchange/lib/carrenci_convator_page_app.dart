import 'package:flutter/material.dart';

class CarrenciConvatorPageApp extends StatefulWidget {
  const CarrenciConvatorPageApp({super.key});
  @override
  State<CarrenciConvatorPageApp> createState() =>
      _CarrenciConvatorMaterialState();
}

class _CarrenciConvatorMaterialState extends State<CarrenciConvatorPageApp> {
  double result = 0;

  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //clyne //clyne
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        //color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(50),
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text('Currency Convator'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 52,
                fontWeight: FontWeight.bold,
              ),
            ),
            //padding
            //container
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: textEditingController, //clyne
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    hintText: 'Pleas weka kiwango',
                    hintStyle: const TextStyle(color: Colors.black),
                    suffixIcon: const Icon(Icons.monetization_on),
                    suffixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            //buttom

            //raiseb
            //appears like a text
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                  });
                  // print(textEditingController.text);
                  // print(double.parse(textEditingController.text) * 81);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  maximumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text('Convart'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//1 Create a variable that stores the user input
///2 Create a function that matiplay the user input
///3 Store the value in the variable
///4 Display the variale

//class CarrenciConvatorPageApp extends StatelessWidget {
  //const CarrenciConvatorPageApp({super.key});
//}
