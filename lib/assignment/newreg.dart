import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:januaryflutter/assignment/newlogin.dart';
void main(){
  runApp(MaterialApp(home: newregistartion(),));
}
class newregistartion extends StatefulWidget{
  @override
  State<newregistartion> createState() => _newregistartionState();
}

class _newregistartionState extends State<newregistartion> {
  GlobalKey<FormState>Formkey=GlobalKey();
  bool showpass=true;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(color: Colors.white54,
       child: Form(
         key: Formkey,
         child: Column(
           children: [
             Text("registartion",style: GoogleFonts.aclonica(
               textStyle: Theme.of(context).textTheme.displayLarge,
               fontSize: 50,
               fontWeight: FontWeight.w200,

             ),),
             Padding(
               padding: const EdgeInsets.only(top: 40,bottom: 30,right: 50,left: 50),
               child: TextField(
                 decoration: InputDecoration(
                   hintText: "useranme",
                   labelText: "username",
                   prefixIcon: Icon(Icons.person),
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 20,bottom: 30,right: 50,left: 50),
               child: TextFormField(
                 validator: (email){
                   if(email!.isEmpty ||  !email!.contains('@') || !email!.contains('.')){
                     return "please enter valid email";
                   }
                   else{
                     return null;
                   }
                 },
                 obscuringCharacter: '*',
                 obscureText: showpass,
                 decoration: InputDecoration(
                   hintText: "email-id",
                   labelText: "email-id",
                   prefixIcon: Icon(Icons.email),
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
                       icon: Icon(showpass==true?Icons.visibility_off : Icons.visibility)),
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 20,bottom: 30,right: 50,left: 50),
               child: TextFormField(
                 validator: (password){
                   if(password!.isEmpty || password!.length<6){
                     return "please enter valid password";
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
                       icon: Icon(showpass==true?Icons.visibility_off : Icons.visibility)),
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 20,bottom: 30,right: 50,left: 50),
               child: TextFormField(
                 validator: (confirmpassword){
                   if(confirmpassword!.isEmpty || confirmpassword.length<6){
                     return "plaese confirm pasword";
                   }
                   else{
                     return null;
                   }
                 },
                 obscuringCharacter: '*',
                 obscureText: showpass,
                 decoration: InputDecoration(
                   hintText: "confirm password",
                   labelText: "confirm password",
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
                       icon: Icon(showpass==true?Icons.visibility_off : Icons.visibility)),
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(100))
                 ),
               ),
             ),

             ElevatedButton(onPressed: (){
               final valid=Formkey.currentState!.validate();
                 if(valid){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Newlogin()));
                 }
                 else{

                 }

             }, child:Text("register")),

           ],
         ),
       ),

     ),
   );
  }
}