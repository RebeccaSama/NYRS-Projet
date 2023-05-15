import 'package:flutter/material.dart';

class Component extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const Component({
     Key? key, 
     required this.image, 
     required this.title, 
     required this.subtitle }) 
     : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      height: 50,
      width: 130,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(8),
         border: Border.all(
          color: Colors.black12,
              width: 1.0,
         )
        ),
      child: 
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      image,
                      height: 30,
                      width: 30,
                    ),
                  ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Text(
                            title,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                           Text(
                        subtitle,
                        textAlign: TextAlign.end,
                        style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 12),
                ),
                        ],
                      ),
                    ),
                   
                 
                  ],
                ),
      );
  }
}