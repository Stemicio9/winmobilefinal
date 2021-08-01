import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

Future<IdTokenResult> login(String email, String password) async{
  try{
    AuthResult userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password
    );
    IdTokenResult idTokenResult = await userCredential.user.getIdToken();
    print("Sto ottendo il token =" + idTokenResult.token);
    return idTokenResult;

  } on PlatformException catch (plat) {

    if(plat.code == "ERROR_USER_NOT_FOUND"){
      // @todo GESTRIRE ECCEZIONE EMAIL
    }

    if(plat.code == "ERROR_WRONG_FOUND"){
      // @todo GESTRIRE ECCEZIONE PASSWORD
    }
  } catch(e){
    print(e);
  }
}