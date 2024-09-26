import 'package:flutter/material.dart';

class ContainerButtonModal extends StatelessWidget {
  // const ContainerButtonModal({super.key});

   final Color? bgColor;
   final double? containerWith;
   final String itext;

   const ContainerButtonModal({
     Key? key,
     required this.bgColor,
     required this.containerWith,
     required this.itext,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: containerWith,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor,
      ),
      child: Center(
        child: Text(
          itext,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),
        ),
      ),
    );
  }
}
