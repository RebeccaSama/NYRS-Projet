import 'package:flutter/material.dart';
import 'package:nyrs_projet/views/home.dart';

class ButtonComponent extends StatefulWidget {
  const ButtonComponent({ Key? key }) : super(key: key);

  @override
  State<ButtonComponent> createState() => _ButtonComponentState();
}

class _ButtonComponentState extends State<ButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
       onTap: () => {
    Navigator.push(context, MaterialPageRoute(builder: (context) =>  HomeView()),)
  }
    );
}}