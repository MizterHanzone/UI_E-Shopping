import 'package:flutter/material.dart';
import 'package:we_clothes/screen/cart_screen.dart';
import 'package:we_clothes/widget/container_button_modal.dart';

class ProductDetailsPopup extends StatelessWidget {
  // const ProductDetailsPopup({super.key});

  final iStyle = const TextStyle(
    color: Colors.black87,
    fontWeight: FontWeight.w600,
    fontSize: 18
  );

  List<Color> clrs = [
    Colors.red,
    Colors.green,
    Colors.indigo,
    Colors.amber
  ];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) => Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                )
            ),
            child: Padding(
                padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Size  : ", style: iStyle,),
                          const SizedBox(height: 20,),
                          Text("Color : ", style: iStyle,),
                          const SizedBox(height: 20,),
                          Text("Total : ", style: iStyle,),
                          const SizedBox(height: 20,),
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 20,),
                              Text("S", style: iStyle,),
                              const SizedBox(width: 20,),
                              Text("M", style: iStyle,),
                              const SizedBox(width: 20,),
                              Text("L", style: iStyle,),
                              const SizedBox(width: 20,),
                              Text("XL", style: iStyle,),
                            ],
                          ),
                          const SizedBox( height: 20,),
                          Container(
                            child: Row(
                              children: [
                                for (var i = 0; i < 4; i++)
                                  Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 5),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: clrs[i],
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 30,),
                              Text("-", style: iStyle,),
                              const SizedBox(width: 30,),
                              Text("1", style: iStyle,),
                              const SizedBox(width: 30,),
                              Text("+", style: iStyle,),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Payment", style: iStyle,),
                      const Text(
                        "\$40.99",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFDB3022)
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => CartScreen(),
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
      },
      child: ContainerButtonModal(
          containerWith: MediaQuery.of(context).size.width / 1.5,
        itext: "Buy Now",
        bgColor: const Color(0xFFDB0322),
      ),
    );
  }
}
