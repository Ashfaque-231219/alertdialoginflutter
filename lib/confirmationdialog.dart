import 'package:flutter/material.dart';
class confirmation extends StatelessWidget {
  void confirmdialog(BuildContext context) {
    Widget conti = TextButton(onPressed: (){

      Navigator.of(context).pop();
    }, child: Text("continue"));
    Widget cancel = TextButton(onPressed: (){

      Navigator.of(context).pop();
    }, child: Text("cancel"));
    var confirmalert = AlertDialog(
      title: Text("Learn how to make confirmation alert"),
      content: Text("You want to continue or cancel"),
      actions: [
        cancel,
        conti
      ],
    );
    showDialog(context: context, builder: (BuildContext context){
      return confirmalert;
    });
  }


  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed: (){
      confirmdialog(context);
    }, child: Text("confirmation alert",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    ),

      style: TextButton.styleFrom(
          padding: EdgeInsets.all(10),
          backgroundColor: Colors.purple,
          primary: Colors.white,
          minimumSize: Size(200, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          )),);
  }
}



