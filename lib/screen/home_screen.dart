import 'package:flutter/material.dart';
import 'package:we_clothes/screen/product_screen.dart';

class HomeScreen extends StatelessWidget {

  List tabs = [
    "All",
    "Category",
    "Top",
    "Recommended",
  ];

  List imageList = [
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

  List price = [
    "\$25",
    "\$32",
    "\$45",
    "\$24",
    "\$48",
    "\$98",
  ];

  List reviews = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          height: 50,
                          width: MediaQuery.of(context).size.width / 1.5,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(10),
                            // boxShadow: const [
                            //   BoxShadow(
                            //     color: Colors.black12,
                            //     blurRadius: 2,
                            //     spreadRadius: 4
                            //   )
                            // ]
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                  Icons.search,
                                color: Color(0xFFDB3022),
                              ),
                              border: InputBorder.none,
                              label: Text(
                                  "Find your product",
                                style: TextStyle(

                                ),
                              )
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 6,
                          decoration: BoxDecoration(
                            color: Colors.black12.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.notifications_none,
                              color: Color(0xFFDB3022),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFF0DD),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Image.asset("images/freed.png"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                        shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: tabs.length,
                          itemBuilder: (context, index){
                          return FittedBox(
                            child: Container(
                              height: 40,
                              margin: const EdgeInsets.all(8),
                              padding: const EdgeInsets.only(left: 15, right: 15),
                              decoration: BoxDecoration(
                                color: Colors.black12.withOpacity(0.05),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    tabs[index],
                                    style: const TextStyle(
                                      color: Colors.black38,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                          },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      // color: Colors.red,
                      height: 280,
                      child: ListView.builder(
                        shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: imageList.length,
                          itemBuilder: (context, index){
                            return Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 150,
                                    child: Stack(
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: Image.asset(imageList[index], fit: BoxFit.cover,),
                                          ),
                                        ),
                                        Positioned(
                                          right: 10,
                                            top: 10,
                                            child: Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                              child: const Center(
                                                child: Icon(
                                                  Icons.favorite,
                                                  color: Color(0xFFDB3022),
                                                ),
                                              ),
                                            ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    productTitle[index],
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Icon(
                                          Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Text(
                                        reviews[index],
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFFDB3022)
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 25,
                                      ),
                                      Text(
                                        price[index],
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          color: Color(0xFFDB3022)
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "All Product",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFDB3022)
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GridView.builder(
                      itemCount: productTitle.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        childAspectRatio: 0.65,
                        // crossAxisSpacing: 2,
                      ),
                      itemBuilder: (context, index){
                        return Container(
                          margin: const EdgeInsets.only(right: 2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 200,
                                child: Stack(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context, MaterialPageRoute(
                                            builder: (context) => ProductScreen(),
                                        ),
                                        );
                                      },
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(imageList[index], width: 180, height: 220, fit: BoxFit.cover,),
                                      ),
                                    ),
                                    Positioned(
                                      right: 10,
                                      top: 10,
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: const Center(
                                          child: Icon(
                                            Icons.favorite,
                                            color: Color(0xFFDB3022),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                productTitle[index],
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Text(
                                    reviews[index],
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFDB3022)
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  Text(
                                    price[index],
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFDB3022)
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              )
          ),
        ),
    );
  }
}
