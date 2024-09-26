import 'package:flutter/material.dart';
import 'package:we_clothes/screen/cart_screen.dart';
import 'package:we_clothes/screen/home_screen.dart';
import 'package:we_clothes/widget/container_button_modal.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset(
                "images/success.png",
                width: 200,
              ),
              const SizedBox(height: 50,),
              const Text("Successfully!", style: TextStyle(fontSize: 40),),
              const Text("Your order will delivery soon,"),
              const Text("Thank you for choosing us !"),
            ],
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                )
                );
              },
              child: ContainerButtonModal(
                itext: "Continue Shopping",
                containerWith: MediaQuery.of(context).size.width,
                bgColor: const Color(0xFFDB3022),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
