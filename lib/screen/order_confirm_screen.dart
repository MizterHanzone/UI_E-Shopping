import 'package:flutter/material.dart';
import 'package:we_clothes/screen/order_success_screen.dart';
import 'package:we_clothes/screen/payment_screen.dart';
import 'package:we_clothes/screen/shipping_screen.dart';
import 'package:we_clothes/widget/container_button_modal.dart';

class OrderConfirmScreen extends StatelessWidget {
  const OrderConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Confirm Order",
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
                  const SizedBox(height: 20,),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Shipping Address",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Dear Pro",
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context, MaterialPageRoute(
                                  builder: (context) => ShippingScreen(),
                                ),
                                );
                                },
                                child: const Text(
                                    "Change",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFFDB3022)
                                  ),
                                ),
                            ),
                          ],
                        ),
                        const Text(
                          "SenSok Phnom Penh",
                          style: TextStyle(
                              fontSize: 16
                          ),
                        ),
                        const Text(
                            "Borey 100 khnorng"
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Payment Method",
                        style: TextStyle(
                            fontSize: 19
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(
                              builder: (context) => PaymentScreen(),
                          ),
                          );
                        },
                        child: const Text(
                          "Change",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFDB3022)
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                spreadRadius: 2
                            ),
                          ],
                        ),
                        child: Image.asset("images/master_card_pay.png"),
                      ),
                      const SizedBox(width: 20,),
                      const Text(
                          "*** *** *** 9887"
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Delivery Method",
                        style: TextStyle(
                            fontSize: 19
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                spreadRadius: 2
                            ),
                          ],
                        ),
                        child: Image.asset("images/fed_ex.png"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sub Total",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                        ),
                      ),
                      Text(
                        "\$320.00",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shipping Fee",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                        ),
                      ),
                      Text(
                        "\$20.00",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                    ],
                  ),
                  const Divider(height: 20,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                      Text(
                        "\$340.00",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFDB3022)
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50,),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => OrderSuccessScreen(),
                      ),
                      );
                    },
                    child: ContainerButtonModal(
                      itext: "Confirm Order",
                      containerWith: MediaQuery.of(context).size.width,
                      bgColor: const Color(0xFFDB3022),
                    ),
                  ),
                ],
              ),
            ),
        ),
      ),
    );
  }
}
