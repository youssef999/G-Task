


 import 'package:app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class AllDataView extends StatelessWidget {
  String txt,date,name,phone,email,password;

  AllDataView({required this.txt, required this.date, required this.name,
    required this.phone, required this.email, required this.password});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        toolbarHeight: 10,
        elevation:4,
        backgroundColor:Colors.blue,
      ),
      body:Column(
        children: [
          const SizedBox(height: 40,),
          Custom_Text(
            text: txt,
            fontSize:20,
            color:Colors.black,
            alignment:Alignment.center,
          ),
          const SizedBox(height: 10,),
          Custom_Text(
            text: name,
            fontSize:20,
            color:Colors.black,
            alignment:Alignment.center,
          ),
          const SizedBox(height: 10,),
          Custom_Text(
            text: email,
            fontSize:20,
            color:Colors.black,
            alignment:Alignment.center,
          ),
          const SizedBox(height: 10,),
          Custom_Text(
            text: date,
            fontSize:20,
            color:Colors.black,
            alignment:Alignment.center,
          ),
          const SizedBox(height: 10,),
          Custom_Text(
            text: phone,
            fontSize:20,
            color:Colors.black,
            alignment:Alignment.center,
          ),
          const SizedBox(height: 10,),
          Custom_Text(
            text: password,
            fontSize:20,
            color:Colors.black,
            alignment:Alignment.center,
          )
        ],
      ),
    );
  }
}
