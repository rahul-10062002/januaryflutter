import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:januaryflutter/assignment/newhome.dart';
import 'package:januaryflutter/assignment/newreg.dart';
void main(){
  runApp(MaterialApp(home: Newlogin(),));
}
class Newlogin extends StatefulWidget{
  @override
  State<Newlogin> createState() => _NewloginState();
}

class _NewloginState extends State<Newlogin> {
  GlobalKey<FormState>Formkey=GlobalKey();
  bool showpass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.limeAccent,
        child: Form(
          key: Formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50,bottom: 50,right: 50,left: 50),
                child: Text("login page",style: GoogleFonts.aboreto(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 50,
                  fontWeight: FontWeight.w200,
                  color: Colors.black
                    ),),

              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,bottom: 30,right: 50,left: 50),
                child: TextFormField(
                  validator: (username){
                    if(username!.isEmpty || username.length<8){
                      return "plaese eneter valid username";
                    }
                    else{
                      return "null";
                    }
                  },
                  decoration: InputDecoration(
                  hintText: "username",
                  labelText: "username",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30,bottom: 30,right: 50,left: 50),
                child: TextFormField(
                  validator: (password){
                    if(password!.isEmpty || password.length<6){
                      return "plaese eneter valid password";
                    }
                    else{
                      return null;
                    }
                  },
                  obscuringCharacter: '*',
                  obscureText: showpass,
                  decoration: InputDecoration(
                    hintText: "password",
                    labelText: "password",
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        if(showpass==true){
                          showpass=false;
                        }
                        else{
                          showpass=true;
                        }
                      });
                    },
                        icon: Icon(showpass ==true? Icons.visibility_off: Icons.visibility)),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))
                  ),
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w200,)),
                  onPressed: (){
                    final valid=Formkey.currentState!.validate();
                        if(valid){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeAss()));
                        }
                        else{

                        }
                  }, child:Text ("login")),
              TextButton(onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>newregistartion()));

              }, child: Text("not a user ,register"))

            ],
          ),
        ),
    ));
  }
}