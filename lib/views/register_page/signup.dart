import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../composants/button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  bool _isFormValid = false;

 @override
  void dispose() {
    _fullnameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  
  bool _isValidEmail(String email) {
    RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return emailRegex.hasMatch(email);
  }
   bool _isValidPassword(String password) {
    return password.length >= 6;
  }

    void _validateForm() {
    String fullname = _fullnameController.text.trim();
    String email = _emailController.text.trim();
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;

    bool isFullnameValid = fullname.isNotEmpty;
    bool isEmailValid = _isValidEmail(email);
    bool isPasswordValid = _isValidPassword(password);
    bool isConfirmPasswordValid = password == confirmPassword;

    setState(() {
      _isFormValid = isFullnameValid && isEmailValid && isPasswordValid && isConfirmPasswordValid;
    });

    if (_isFormValid) {
    Fluttertoast.showToast(
      msg: 'Formulaire validé avec succès',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
    );
  } else {
    Fluttertoast.showToast(
      msg: 'Erreur de validation du formulaire',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
    );
  }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        elevation: 0,
          backgroundColor: Colors.white,
          leading: 
             IconButton(onPressed:() {Navigator.pop(context);}, icon: const Icon(Icons.arrow_back_ios_new),color: Colors.black,),
        
                ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                 Container(
                  padding: const EdgeInsets.only(top: 50, bottom: 70),
                  child: const Text(
                    'Sign Up',
                    textAlign: TextAlign.center,
                    style:  TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
          
                Container(
                  height: MediaQuery.of(context).size.width * .2,
                  padding: const EdgeInsets.only( bottom: 20),
                  child:  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: ' Email',
                      border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.width * .2,
                  padding: const EdgeInsets.only(bottom: 20),
                  child:  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                       border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                    ),
                  ),
                ),
               
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                      },
                      child: const Text('Forgot password'),
                    ),
                  ],
                ),
                 ButtonComponent(title: "S'inscrire", onPressed: () {  },),
                 const SizedBox(height: 20),
                 Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.facebook,
                    size: 50,color: Color.fromARGB(255, 22, 64, 155),
                  ),
                ), const SizedBox(width: 25),
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.twitter,
                    size: 50,color: Colors.blue,
                  ),
                ), const SizedBox(width: 25),
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.instagram,
                    size: 50, color: Colors.red,
                  ),
                ),
               
               
              ],
            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
