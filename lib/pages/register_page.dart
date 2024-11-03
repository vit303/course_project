import 'package:course_project/components/login_button.dart';
import 'package:course_project/components/login_text_field.dart';
import 'package:flutter/material.dart';
import 'package:course_project/pages/login_page.dart';

class RegisterPage extends StatelessWidget{

  //email and pw controller
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _pwConfirmController = TextEditingController();

  //final void Function()? onTap;

  RegisterPage({
    super.key,
    //required this.onTap
  });

  //login method
  void login(BuildContext context) async{
    //auth service
    

    //try login
    try{
      
    }

    //catch errors
    catch (e){
      showDialog(
        context: context, 
        builder: (context)=>AlertDialog(
          title: Text(e.toString()),
        )
        );
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.message,
            size: 60,
            color: Theme.of(context).colorScheme.primary,
          ),

          const SizedBox(height: 50),

          Text(
            "Welcome back, you've been missed!",
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 16
              )
          ) ,

          const SizedBox(height: 25),

          //login textfield
          LoginTextField(
            hintText: "Login",
            obscureText: false,
            controller: _emailController,
            style: TextStyle(
              color: Colors.black, // Установите нужный цвет текста
              ),
            ),

          const SizedBox(height: 10),

          //password textfield
          LoginTextField(
            hintText: "Password",
            obscureText: true,
            controller: _pwController,
          ),

          const SizedBox(height: 10),

          //password textfield repeat
          LoginTextField(
            hintText: "Сonfirm the password",
            obscureText: true,
            controller: _pwConfirmController,
          ),


          const SizedBox(height: 25),

          //login button
          LoginButton(
            text: "Login",
            onTap: () => login(context),
            ),

          const SizedBox(height: 25),

          //register mow
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account? ", 
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text("Login now",
                 style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary
                 ),
                 ),
              )
            ],
          ),

        ],
      ),
      ),
    );
  }

}