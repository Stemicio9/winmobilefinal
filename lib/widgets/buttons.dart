import 'package:flutter/material.dart';

Widget entrabutton(String text, BuildContext context, Function azione){
  return Container(
      width: MediaQuery.of(context).size.width - 60,
      height: 60,
      child:
      Padding(
        padding: EdgeInsets.only( top: 10),
        child: RaisedButton(
          onPressed: azione,
          child:
          Text(text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              )),
        ),
      )
  );
}