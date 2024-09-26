import 'package:flutter/material.dart';
import 'package:we_clothes/screen/order_confirm_screen.dart';
import 'package:we_clothes/widget/container_button_modal.dart';

class ShippingScreen extends StatelessWidget {
  const ShippingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add Shipping Address",
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFDB3022),
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
                  padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const SizedBox(height: 40,),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Full Name",
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Phone Number",
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Address",
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "City",
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "State/Province",
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Zip Code (Postal Code)",
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Country",
                      ),
                    ),
                    const SizedBox(height: 50,),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => OrderConfirmScreen(),
                        ),
                        );
                      },
                      child: ContainerButtonModal(
                        itext: "Add address",
                        containerWith: MediaQuery.of(context).size.width,
                        bgColor: const Color(0xFFDB3022),
                    ),
                    ),
                  ],
                ),
              )
          ),
      ),
    );
  }
}
