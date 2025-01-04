import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GroceryItem extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  // ignore: prefer_typing_uninitialized_variables
  final Color color;
  void Function()? onPressed;

  GroceryItem(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.imagePath,
      required this.color,
      required this.onPressed});

  get image => imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                // color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 4,
                offset: const Offset(0, 2),
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // image
            Image.asset(
              imagePath,
              height: 64,
            ),

            //item name
            Text(itemName),

            //price+button
            MaterialButton(
                onPressed: onPressed,
                color: color,
                elevation: 13,
                child: Text(
                  ' \$ ' + itemPrice,
                  style: TextStyle(
                    color: Colors.black,
                    // backgroundColor: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
