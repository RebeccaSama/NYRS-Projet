import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
          //       Container(
          //   padding:  const EdgeInsets.only(top: 20,),
          //   child: Image.asset('assets/logo/logo_vert.png', height: MediaQuery.of(context).size.width * .3,  fit: BoxFit.cover,)
          // ),
                
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
                Container(
                  padding: const EdgeInsets.only(top: 25,),
                  height: MediaQuery.of(context).size.width * .2,
                  child: ElevatedButton(
                   style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(const Color(0xFF23AA49)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
              ),
                    onPressed: () {
                    },
                    child: const Text("S'inscrire"),
                  ),
                ),  const SizedBox(height: 20),
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
