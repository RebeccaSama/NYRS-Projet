import 'package:flutter/material.dart';

class PaymentItem   extends StatelessWidget {
  final String title1;
  final String title2;
  final String title;
  final String subtitle;
  final String image;
  final Icon righticon;
  const PaymentItem({ Key? key, required this.title1, required this.title2, required this.title, required this.subtitle,  required this.image, required this.righticon }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  
     Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(1),
                  child:  Text(title1,
                      style:
                          const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(1),
                  child: TextButton(
                    child:  Text(
                      title2,
                      style: const TextStyle(color: Color(0xFF23AA49), fontSize: 12),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Container(
      height: 50,
      width: 300,
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
                      padding: const EdgeInsets.all(6),
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
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Text(
                            title,
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
                   const Spacer(),
                righticon
                  ],
                ),
      )
 
        ],
      ),
    );
  }
}
