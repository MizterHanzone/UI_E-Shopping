import 'package:flutter/material.dart';
import 'package:we_clothes/screen/recovery_screen.dart';

class OtpverifyScreen extends StatefulWidget {
  const OtpverifyScreen({super.key});

  @override
  State<OtpverifyScreen> createState() => _OtpverifyScreenState();
}

class _OtpverifyScreenState extends State<OtpverifyScreen> {
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  TextEditingController textEditingController = new TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Enter OTP",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const SizedBox(
                height: 200,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => const RecoveryScreen(),
                    ),
                    );
                  },
                  child: Text(
                    "Send Code",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    maximumSize: const Size.fromHeight(55),
                    backgroundColor: const Color(0xFFFEF6969),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
