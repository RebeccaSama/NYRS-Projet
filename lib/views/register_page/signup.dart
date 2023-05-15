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

 final _formKey = GlobalKey<FormState>();

 @override
  void dispose() {
    _fullnameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 50, bottom: 70),
                    child: const Text(
                      'Sign Up',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * .2,
                    padding: const EdgeInsets.only(bottom: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                      ),
                   validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email';
                        }
                        // Vérification du format d'e-mail à l'aide d'une regex
                        bool isValid = RegExp(
                            r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
                            .hasMatch(value);
                        if (!isValid) {
                          return 'Invalid email format';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * .2,
                    padding: const EdgeInsets.only(bottom: 20),
                    child: TextFormField(
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a password';
                        }
                        return null;
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text('Forgot password'),
                      ),
                    ],
                  ),
                  ButtonComponent(
                    title: "Connecter",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Les champs de texte sont valides, exécuter votre logique ici
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(
                          FontAwesomeIcons.facebook,
                          size: 50,
                          color: Color.fromARGB(255, 22, 64, 155),
                        ),
                      ),
                      const SizedBox(width: 25),
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(
                          FontAwesomeIcons.twitter,
                          size: 50,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(width: 25),
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
),
);
    
     /*Scaffold(
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
                ButtonComponent(title: "Connecter", onPressed: (){},),
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
    );*/
  }

}