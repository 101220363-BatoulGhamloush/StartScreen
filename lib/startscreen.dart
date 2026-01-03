import 'package:flutter/material.dart';



class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/coffee1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.5),
                Colors.black.withOpacity(0.8),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Welcome Text
              Text(
                'Welcome to your new favorite coffee spot',
                style:TextStyle(
                  color:Color.fromARGB(255, 163, 163, 163),
                  fontWeight: FontWeight.w800,
                  fontSize: 25
                  ,)
              ),
              
              const SizedBox(height: 8),
              
              // App Name
              Text(
                'Brew Haven',
                style: TextStyle(
                  color:Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 40,)
              ),
              
              const SizedBox(height: 16),
              
              // Subtitle
               Text(
                'Start your day the right way',
               style: TextStyle(
                  color:Color.fromARGB(255, 166, 166, 166),
                  fontWeight: FontWeight.w800,
                  fontSize: 18,)
              ),
              
              const SizedBox(height: 60),
              
              // Get Started Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context, 
                        MaterialPageRoute(
                          builder:(ctx)=>Homepage(cartItem: [], favo: [],)
                          )
                          );
                  
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                     fixedSize: const Size(214, 54),
                     shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(40.0)
                     )
                    ),
                    child: const Text(
                      'Get in Now',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
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
  