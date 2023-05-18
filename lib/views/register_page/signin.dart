import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../common/bottom_nav_bar.dart';

import '../../common/custom_button.dart';
import '../../common/text_field_input.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  bool showPassword = true;
  bool loading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 50, bottom: 70),
                    child: const Text(
                      'Log In',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextFieldInput(
                    fontWeight: FontWeight.w300,
                    controller: _emailController,
                    label: "Email",
                    hint: "sama@gmail.com",
                    validator: (value) {
                      if (value == "") {
                        return "L'émail ne doit pas être vide";
                      } else if (!RegExp(
                              r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                          .hasMatch(value!)) {
                        return "Cet email n'est pas valide";
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFieldInput(
                    onTap: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    onLongPressDown: (value) {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    onLongPressUp: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    fontWeight: FontWeight.w300,
                    iconData:
                        showPassword ? Icons.visibility_off : Icons.visibility,
                    controller: _passwordController,
                    label: "Mot de passe",
                    hint: "******",
                    isPassword: showPassword,
                    validator: (value) {
                      if (value == "") {
                        return "Le mot de passe ne doit pas être vide";
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Forgot password'),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  CustomButton(
                    color: const Color(0xff39A935),
                    loading: loading,
                    onPressed: formKey.currentState != null &&
                            formKey.currentState!.validate()
                        ? () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => const BottomNavBar())));
                          }
                        : null,
                    title: "SE CONNECTER",
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: const [
                      Expanded(
                        child: Divider(
                          height: 4,
                          color: Colors.black26,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text('OR'),
                      ),
                      Expanded(
                        child: Divider(
                          height: 4,
                          color: Colors.black26,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
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
                          size: 50,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  // Row(
                  //   children: [
                  //     const Text("You don't have an account?"),
                  //     TextButton(
                  //       onPressed: () {
                  //         Navigator.push(
                  //             context,
                  //             MaterialPageRoute(
                  //                 builder: (context) => const SignInPage()));
                  //       },
                  //       child: const Text('Sign In'),
                  //     ),
                  //   ],
                  // )
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
