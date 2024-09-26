import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:we_clothes/widget/product_details_popup.dart';

class ProductScreen extends StatelessWidget {

  List<String> images = [
    "images/image1.jpg",
    "images/image2.jpg",
    "images/image3.jpg",
    "images/image4.jpg",
    "images/image5.jpg",
    "images/image6.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Overview",
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 450,
                    width: MediaQuery.of(context).size.width,
                    child: FanCarouselImageSlider.sliderType1(
                      sliderHeight: 430,
                      autoPlay: true,
                      imagesLink: images,
                      isAssets: true
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Warm Zipper",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color: Colors.black87
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Hooded Jacket",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "\$30",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color(0xFFDB3022)
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: RatingBar.builder(
                      initialRating: 4.5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 25,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: const Color(0x1F989797),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.shopping_cart,
                            color: Color(0xFFDB3022),
                          ),
                        ),
                      ),
                      ProductDetailsPopup(),
                    ],
                  ),
                ],
              ),
            ),
        ),
      ),
    );
  }
}
