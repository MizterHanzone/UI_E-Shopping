import 'package:flutter/material.dart';
import 'package:we_clothes/screen/shipping_screen.dart';
import 'package:we_clothes/widget/container_button_modal.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

  int _type = 1;
  void _handleRadio(Object? e) => setState(() {
    _type = e as int;
  });

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Payment Method",
          style: TextStyle(
              color: Colors.white
          ),
        ),
        leading: const BackButton(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 40,),
                    Container(
                      width: size.width,
                      height: 55,
                      decoration: BoxDecoration(
                        border: _type == 1
                            ? Border.all(width: 1, color: const Color(0xFFDB3022))
                            : Border.all(width: 0.3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      value: 1,
                                      groupValue: _type,
                                      onChanged: _handleRadio,
                                    activeColor: const Color(0xFFDB3022),
                                  ),
                                  Text(
                                    "Amazon Pay",
                                    style: _type == 1
                                        ? const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black)
                                        : const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.green)
                                  ),
                                ],
                              ),
                              Image.asset(
                                "images/amazon_pay.png",
                                width: 80,
                                height: 80,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      width: size.width,
                      height: 55,
                      decoration: BoxDecoration(
                          border: _type == 2
                              ? Border.all(width: 1, color: const Color(0xFFDB3022))
                              : Border.all(width: 0.3, color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.transparent
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    value: 2,
                                    groupValue: _type,
                                    onChanged: _handleRadio,
                                    activeColor: const Color(0xFFDB3022),
                                  ),
                                  Text(
                                      "Credit Card",
                                      style: _type == 2
                                          ? const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black)
                                          : const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.green)
                                  ),
                                ],
                              ),
                              Image.asset(
                                "images/visa_card_pay.png",
                                width: 80,
                                height: 80,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      width: size.width,
                      height: 55,
                      decoration: BoxDecoration(
                          border: _type == 3
                              ? Border.all(width: 1, color: const Color(0xFFDB3022))
                              : Border.all(width: 0.3, color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.transparent
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    value: 3,
                                    groupValue: _type,
                                    onChanged: _handleRadio,
                                    activeColor: const Color(0xFFDB3022),
                                  ),
                                  Text(
                                      "Paypal",
                                      style: _type == 3
                                          ? const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black)
                                          : const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.green)
                                  ),
                                ],
                              ),
                              Image.asset(
                                "images/paypal_pay.png",
                                width: 80,
                                height: 80,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      width: size.width,
                      height: 55,
                      decoration: BoxDecoration(
                          border: _type == 4
                              ? Border.all(width: 1, color: const Color(0xFFDB3022))
                              : Border.all(width: 0.3, color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.transparent
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    value: 4,
                                    groupValue: _type,
                                    onChanged: _handleRadio,
                                    activeColor: const Color(0xFFDB3022),
                                  ),
                                  Text(
                                      "Google Pay",
                                      style: _type == 4
                                          ? const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black)
                                          : const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.green)
                                  ),
                                ],
                              ),
                              Image.asset(
                                "images/g_pay.png",
                                width: 60,
                                height: 60,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 100,),
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
                            color: Colors.grey
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
                    const SizedBox(height: 80,),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => const ShippingScreen(),
                        ),
                        );
                      },
                      child: ContainerButtonModal(
                          bgColor: const Color(0xFFDB3022),
                          containerWith: size.width, 
                          itext: "Pay Now"),
                    )
                  ],
                ),
              ),
            ),
        ),
      ),
    );
  }
}
