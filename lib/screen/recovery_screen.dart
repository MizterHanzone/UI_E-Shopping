import 'package:flutter/material.dart';

class RecoveryScreen extends StatelessWidget {
  const RecoveryScreen({super.key});

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
              const Text(
                "Forgot Password",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Reset Code",
                  prefixIcon: Icon(Icons.numbers)
                ),
              ),
              const SizedBox(height: 20,),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "New Password",
                    prefixIcon: Icon(Icons.lock)
                ),
              ),
              const SizedBox(height: 20,),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Confirm Password",
                    prefixIcon: Icon(Icons.lock)
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
                    "Reset Password",
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
