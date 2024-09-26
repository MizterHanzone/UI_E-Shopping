import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:we_clothes/screen/payment_screen.dart';
import 'package:we_clothes/widget/container_button_modal.dart';

class CartScreen extends StatelessWidget {
  // const CartScreen({super.key});

  List imagesList = [
    "images/image1.jpg",
    "images/image2.jpg",
    "images/image3.jpg",
    "images/image4.jpg",
    "images/image5.jpg",
    "images/image6.jpg",
  ];

  List productTitle = [
    "Warm Zipper",
    "Knitted",
    "Zipper Win",
    "Child Win",
    "Blanket",
    "Shirt"
  ];

  List prices = [
    "\$25",
    "\$32",
    "\$45",
    "\$24",
    "\$48",
    "\$98",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Cart",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        leading: const BackButton(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                // height: 200,
                child: ListView.builder(
                  itemCount: imagesList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(
                            splashRadius: 20,
                              activeColor: Colors.red,
                              value: true,
                              onChanged: (val) {},
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              imagesList[index],
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productTitle[index],
                                style: const TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18
                                ),
                              ),
                              const SizedBox(height: 10,),
                              const Text(
                                "Hooded Jacket",
                                style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 16
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Text(
                                prices[index],
                                style: const TextStyle(
                                  color: Color(0xFFDB3022),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(CupertinoIcons.minus_circle),
                              SizedBox(width: 20,),
                              Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                              SizedBox(width: 20,),
                              Icon(CupertinoIcons.plus_circled),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(width: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  Checkbox(
                    splashRadius: 20,
                      activeColor: const Color(0xFFDB3022),
                      value: false,
                      onChanged: (val){},
                  ),
                ],
              ),
              const Divider(height: 20, thickness: 2, color: Colors.black,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Payment",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(
                    "\$320.00",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      color: Color(0xFFDB3022)
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(
                    "Free delivery",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFDB3022)
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => PaymentScreen(),
                  ),
                  );
                },
                child: ContainerButtonModal(
                    bgColor: const Color(0xFFDB3022),
                    containerWith: MediaQuery.of(context).size.width,
                    itext: "Checkout"
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
