
import 'package:flutter/material.dart';
import 'package:winmobilefinal/widgets/buttons.dart';
import 'package:winmobilefinal/widgets/loginbackground.dart';
import 'package:winmobilefinal/widgets/loginform.dart';
import 'package:winmobilefinal/widgets/spaces.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Background(),
          loginelements(context)
        ],
      )


    );
  }
  
  
  Widget loginelements(BuildContext context){
    return
      Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[


              spaziotrawidgetinaltezza(context,20),

              LoginForm(),


              spaziotrawidgetinaltezza(context,30),

              Center(
                  child: GestureDetector(
                      onTap: vaiapaginapassworddimenticata,
                      child: Text("Password dimenticata?",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline
                        ),)
                  )
              ),


              spaziotrawidgetinaltezza(context,30),

              Center(
                  child: Text("Non hai un account?",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,

                    ),)

              ),

              entrabutton("Registrati", context, vaiapaginaregistrati),


            ],
          )
      );
    
  }

  vaiapaginapassworddimenticata(){

  }

  vaiapaginaregistrati(){

  }

}