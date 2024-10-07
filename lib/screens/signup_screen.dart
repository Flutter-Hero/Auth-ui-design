import 'package:auth_ui/provider/auth_provider.dart';
import 'package:auth_ui/widgets/action_button.dart';
import 'package:auth_ui/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {


    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    TextEditingController usernameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();



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
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50,),
                  
                      Text("""Hello! Register to get 
Started""", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),),

                                            SizedBox(height: 10,),

                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: 15,),
                                                
                              CustomTextfield(controller: emailController, fieldName: "Username", fieldLabel: "Enter your username", keyboardType: TextInputType.text, ),
                              CustomTextfield(controller: emailController, fieldName: "Email", fieldLabel: "Enter your email", keyboardType: TextInputType.emailAddress, ),
                              CustomTextfield(controller: emailController, fieldName: "Full Name", fieldLabel: "Enter your fullname", keyboardType: TextInputType.name, ),
                              CustomTextfield(controller: emailController, fieldName: "Phone Number", fieldLabel: "Enter your phone number", keyboardType: TextInputType.phone, ),
                              SizedBox(height: 15,),
                              Consumer<AuthProvider>(builder: (_, authProvider, __){
                                                
                              return Column(
                                children: [
                                  CustomTextfield(controller: passwordController, fieldName: "Password", 
                                  showPassword: authProvider.showPassword,
                                  
                                  fieldLabel: "Enter your password", keyboardType: TextInputType.text, isPassword: true, onIconClick: (){
                                    authProvider.togglePasswordVisibility();
                                  },),
                                   CustomTextfield(controller: confirmPasswordController, fieldName: "Confirm Password", 
                                  showPassword: authProvider.showPassword,
                                  
                                  fieldLabel: "Renter your password", keyboardType: TextInputType.text, isPassword: true, onIconClick: (){
                                    authProvider.togglePasswordVisibility();
                                  },),
                                ],
                              );
                               
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
                                                
                              ActionButton(buttonText: "Sign Up", onClick: (){}),
                              SizedBox(height: 10,),
                                                
                                                   
                              SizedBox(height: 10,),
                                                
                                                
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                                
                                  Text("Already Have an account?"),
                                  InkWell(
                                    onTap: (){
                                      Navigator.pop(context);
                                    },
                                    child: Text("Login Now", style: TextStyle(
                                    color: Color(0xff2A4ADF)
                                  ), ))
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                  
                  
                    ],
                  ),
                ),
                

              )),
          ],
        ),
        
      ),
    );
  }
}