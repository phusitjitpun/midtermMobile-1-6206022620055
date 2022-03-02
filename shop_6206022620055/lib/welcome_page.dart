import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  String installments, price, dropdownValue;

  double wh = 0, total = 0;
  WelcomePage(
      {Key? key,
      required this.installments,
      required this.price,
      required this.dropdownValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(173, 216, 230, 1),
      appBar: AppBar(
        title: Text('Total Price'),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromRGBO(173, 216, 230, 1),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.navigate_before,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    color: Color.fromRGBO(135, 206, 235, 1),
                    child: ListTile(
                      title: Text('Your Product : '),
                      subtitle: Text(' $dropdownValue'),
                    )),
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    color: Color.fromRGBO(135, 206, 235, 1),
                    child: ListTile(
                      title: Text('Your Price : '),
                      subtitle: Text(' $price'),
                    )),
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    color: Color.fromRGBO(135, 206, 235, 1),
                    child: ListTile(
                      title: Text('Your Installments : '),
                      subtitle: Text(' $installments'),
                    )),
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    color: Color.fromRGBO(135, 206, 235, 1),
                    child: ListTile(
                      title: Text('Total Price = '),
                      subtitle: Text('' +
                          numberAdd(double.parse(installments),
                                  double.parse(price))
                              .toString()),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  double numberAdd(double w, double h) {
    total = w * h;

    return total;
  }
}
