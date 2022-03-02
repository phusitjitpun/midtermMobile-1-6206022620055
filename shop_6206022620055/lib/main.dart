import 'package:flutter/material.dart';
import 'welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'shop_6206022620055',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Form(),
    );
  }
}

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  TextEditingController _installments = TextEditingController();
  TextEditingController _price = TextEditingController();
  TextEditingController _dropdownValue = TextEditingController();
  String dropdownValue = 'Notebook';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(173, 216, 230, 1),
      appBar: AppBar(
        title: Text('Computer SHOP'),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromRGBO(173, 216, 230, 1),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/Logo.png",
              height: 180,
            ),
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(color: Colors.black),
              underline: Container(
                height: 2,
                color: Colors.black,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['Notebook', 'Tablet', 'PC']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _price,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Price'),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _installments,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "เลือกจำนวนงวดที่ต้องการ '6' '10' '24'"),
                keyboardType: TextInputType.number,
              ),
            ),
            Image.asset(
              "assets/images/installments.png",
              height: 150,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => WelcomePage(
                        dropdownValue: _dropdownValue.text,
                        price: _price.text,
                        installments: _installments.text,
                      ),
                    ),
                  );
                },
                child: Text('คำนวณการผ่อนสินค้า'))
          ],
        ),
      ),
    );
  }
}
