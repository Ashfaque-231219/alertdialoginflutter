import 'package:alert/textfieldalert.dart';
import 'package:flutter/material.dart';

import 'confirmationdialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My alert dialog in flutter",
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Button(),
    );
  }
}

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Different types of alert in flutter"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.red, Colors.purple])),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 350,
              ),
              TextButton(
                onPressed: () {
                  showalert(context);
                },
                child: Text(
                  "Dialog button",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    backgroundColor: Colors.purple,
                    primary: Colors.white,
                    minimumSize: Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Basicdialog(context);
                },
                child: Text(
                  "Basic alert dialog",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    backgroundColor: Colors.purple,
                    primary: Colors.white,
                    minimumSize: Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
              SizedBox(height: 10,),
              textfieldalert(),
              SizedBox(height: 10,),
              confirmation(),

            ],
          ),
        ),
      ),
    );
  }

  void showalert(BuildContext context) {
    var alertdialog = AlertDialog(
      title: Text("Dialog text"),
      content: Text("Coll dialog"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertdialog;
        });
  }
}

void Basicdialog(BuildContext context) {
  Widget okbutton = TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: Text("Ok"));
  AlertDialog alert = AlertDialog(
    title: Text("Simple alert"),
    content: Text("This is an alert message"),
    actions: [okbutton],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}
