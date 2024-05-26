import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class FireHelper1{
  FirebaseAuth auth=FirebaseAuth.instance;
  get user=> auth.currentUser;

  Future<String?>signUp({ required String mail , required String password}) async{
    try{
      await auth.createUserWithEmailAndPassword(email: mail, password: password);
      return null;
    }on FirebaseAuthException catch (e){
      return e.message;
    }
  }

  Future<String?> signIn({ required String mail,required String pass}) async{
    try{
      await auth.signInWithEmailAndPassword(email: mail, password: pass);
      return null;
    }on FirebaseAuthException catch(e) {
      return e.message;
    }
  }



  }
