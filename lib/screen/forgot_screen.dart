import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:we_clothes/screen/otp_screen.dart';
import 'package:we_clothes/screen/recovery_screen.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {

  bool clrButton = false;

  TextEditingController emailController = TextEditingController();

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
                  "Please enter your email address.",
                  style: TextStyle(
                      fontSize: 15
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: emailController,
                onChanged: (val){
                  setState(() {
                    clrButton = val.isNotEmpty;
                  });
                },
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: "Email",
                  suffixIcon: clrButton ? InkWell(
                    onTap: () {
                      setState(() {
                        emailController.clear(); // Clear the text field
                        clrButton = false; // Hide the clear button
                      });
                    },
                    child: const Icon(
                      CupertinoIcons.multiply,
                      color: Color(0xFFDB3022),
                    ),
                  ) : null, // Hide clear button if the text field is empty
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
              const SizedBox(
                height: 20,
              ),
              const Text(
                  "OR"
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => const OtpScreen(),
                      ),);
                    },
                    child: const Text(
                      "Verify Using Number",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                        color: Color(0xFFFEF6969)
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
