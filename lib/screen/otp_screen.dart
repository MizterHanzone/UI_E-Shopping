import 'package:flutter/material.dart';
import 'package:we_clothes/screen/otpverify_screen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
              const Align(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Forgot Password",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Please enter your OTP address.",
                  style: TextStyle(
                      fontSize: 15
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: "Number",
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => const OtpverifyScreen(),
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
