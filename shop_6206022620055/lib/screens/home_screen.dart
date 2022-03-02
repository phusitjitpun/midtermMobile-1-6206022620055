import 'package:shop_6206022620055/screens/from_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        actions: [
          GestureDetector(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.add,
                size: 40,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return FormScreen();
                }),
              );
            },
          )
        ],
      ),
      body: GestureDetector(
        onDoubleTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return FormScreen();
            }),
          );
        },
        child: Center(
          child: Text(
            'Touch Screen second Time',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
