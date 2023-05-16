import 'package:flutter/material.dart';
import 'package:nyrs_projet/views/register_page/signin.dart';

import '../../common/custom_button.dart';
import '../../common/text_field_input.dart';
import '../test.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool showPassword = true;
  bool loading = false;
  bool passwordsMatch = false;
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 50),
                  child: const Text(
                    'Sign Up',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/logo/logo_vert.png',
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFieldInput(
                  fontWeight: FontWeight.w300,
                  controller: _fullnameController,
                  label: "Full Name",
                  hint: "Full Name",
                  coloricons: Colors.black26,
                  validator: (value) {
                    if (value == "") {
                      return "Full Name ne doit pas être vide";
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
                  fontWeight: FontWeight.w300,
                  coloricons: Colors.black26,
                  controller: _emailController,
                  label: "Email",
                  hint: "sama@gmail.com",
                  validator: (value) {
                    if (value == "") {
                      return "L'émail ne doit pas être vide";
                    } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
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
                  coloricons: Colors.black26,
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
                const SizedBox(
                  height: 24,
                ),
                TextFieldInput(
                  coloricons: passwordsMatch ? Colors.green : Colors.red,
                  fontWeight: FontWeight.w300,
                  iconData: passwordsMatch ? Icons.check : Icons.clear,
                  controller: _confirmPasswordController,
                  label: " Confirm Mot de passe",
                  hint: "******",
                  validator: (value) {
                    if (value == "") {
                      return "Le mot de passe ne doit pas être vide";
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {
                    setState(() {
                      passwordsMatch = (_passwordController.text == value);
                    });
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomButton(
                  color: const Color(0xff39A935),
                  loading: loading,
                  onPressed: formKey.currentState != null &&
                          formKey.currentState!.validate()
                      ? () {
                          // controller.login(context);
                        }
                      : null,
                  title: "SE CONNECTER",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('Already have an account?'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInPage()));
                      },
                      child: const Text('Sign In'),
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
