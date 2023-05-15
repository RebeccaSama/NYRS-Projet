import 'package:flutter/material.dart';
class ButtonComponent extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const ButtonComponent({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25),
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
        onPressed: onPressed,
        child: Text(title),
      ),
    );
  }
}

