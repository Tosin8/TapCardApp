import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: const Color(0xff8e60dd),
      body: SizedBox(
        width: double.infinity, 
        height: double.infinity,
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
        
          children: [
         
            // logo and text. 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50, 
                  height: 50,
                  decoration:  BoxDecoration(color: Colors.white, 
                  borderRadius: BorderRadius.circular(
                    10
                  )),
                  child: const Align(
                    child: Text('TC', style: TextStyle(
                      color: Color( 0xff8e60dd),
                      fontSize: 20, fontWeight: FontWeight.bold, 
                      decoration: TextDecoration.underline
                    ), 
                    textAlign: TextAlign.center, 
                    
                    ),
                    
                    


                  ), 
                ), 
                const SizedBox(width: 10,), 
                const Text('TapCad', style: TextStyle(color: Colors.white, fontSize: 18, 
                fontWeight: FontWeight.bold),)
              ]
            ), 

            // Button
            const SizedBox(height: 20,),
            GestureDetector( 
              onTap: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: Container(
                width: double.infinity, 
                height: 50,
                decoration:  BoxDecoration(color: Colors.white, 
                borderRadius: BorderRadius.circular(
                  10
                )),
                child: const Align(
                  child: Text('Create an account', style: TextStyle(
                    color: Colors.black,
                    fontSize: 18, fontWeight: FontWeight.w500,
                  ), 
                  ), 
                ), 
              ),
            ), 

            // sign in text.
            const SizedBox(height: 20,),
            Row(
              children: [
                const Text('Already have an account?', 
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 16, 
                  fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 20,), 
                  TextButton(onPressed: (){},
                   child: const Text('Login'))
              ],
            )
          ],
        ),
      ),
    );
  }
}