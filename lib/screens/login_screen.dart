import 'package:auth_ui/provider/auth_provider.dart';
import 'package:auth_ui/screens/signup_screen.dart';
import 'package:auth_ui/widgets/action_button.dart';
import 'package:auth_ui/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {


    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();



    return Scaffold(
      body: Container(
        width: width,
        decoration: BoxDecoration(
          
          image: DecorationImage(image: AssetImage("images/auth_bg.png", ),fit: BoxFit.cover, 
          
          colorFilter: ColorFilter.mode(Color(0xff2A4ADF).withOpacity(0.5), BlendMode.srcOver))
        ),

        child: Column(
          children: [

            Expanded(
              flex: 2,

              child: Center(
                child: Image(image: AssetImage("images/logo_white.png"),),
                // child: ,
              )),
            Expanded(
              flex: 5,
              child: Container(
                width: width,
                // width: ,
                decoration: BoxDecoration(
                  
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(75)
                  ),

                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 50,),
                    
                        Text("Welcome Back", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),),
                        SizedBox(height: 15,),
                    
                        CustomTextfield(controller: emailController, fieldName: "Email", fieldLabel: "Enter your email", keyboardType: TextInputType.emailAddress, ),
                        SizedBox(height: 15,),
                        Consumer<AuthProvider>(builder: (_, authProvider, __){

                        return CustomTextfield(controller: passwordController, fieldName: "Password", 
                        showPassword: authProvider.showPassword,
                        
                        fieldLabel: "Enter your password", keyboardType: TextInputType.text, isPassword: true, onIconClick: (){
                          authProvider.togglePasswordVisibility();
                        },);
                         
                        }),
                       
                       
                        SizedBox(height: 10,),
                        
                        
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: (){},
                            child: Text(
                              "Forgot password?",
                             
                              
                               style: TextStyle(
                              color: Color(0xff2A4ADF)
                            ),),
                          ),
                        ),
                        SizedBox(height: 10,),
                    
                        ActionButton(buttonText: "Login", onClick: (){}),
                        SizedBox(height: 10,),
                    
                        Row(
                          children: [
                            Expanded(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Divider(color: Colors.grey,),
                            )),
                            Text("Or Login With"),
                            Expanded(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Divider(color: Colors.grey,),
                            )),
                    
                          ],
                        )
                        ,
                        SizedBox(height: 10,),
                    
                        Container(
                          height: height*0.06,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)
                    
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Image(image: AssetImage("images/google.png")),
                            SizedBox(width: 10)
                    ,                          Text("Continue with Google")
                          ],),
                        ),
                        SizedBox(height: 10,),
                    
                    
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                    
                            Text("Don't have an account?"),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_)=> SignupScreen()));
                              },
                              child: Text("Register Now", style: TextStyle(
                              color: Color(0xff2A4ADF)
                            ), ))
                          ],
                        )
                    
                    
                      ],
                    ),
                  ),
                ),
                

              )),
          ],
        ),
        
      ),
    );
  }
}