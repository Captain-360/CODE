import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  // Example: You can now add stateful logic here if needed in the future.

  // Uncomment and use this for Google sign-in if needed
  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Widget _dot(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      width: isActive ? 12 : 8,
      height: isActive ? 12 : 8,
        decoration: BoxDecoration(
        color: isActive ? Colors.green : Colors.grey,
          shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0),
        child: Stack(
          children: [
            AppBar(
            backgroundColor: Color.fromRGBO(80, 197, 39, 1.0),
           ),
            Center(
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCBGTXs4fJk_jyEfYpBi5fpeeuuENBVnQ2_EqYJKSSnNxbPFdY",
              ),
            ),
          ],
        ),
      ),
     body: SingleChildScrollView(
       child: Center(
         child: Column(
           children: [
              SizedBox(height: 70),
             Container(
                padding: EdgeInsets.all(21),
                child: Text(
                  "Sign in below to create a secure account",
                  style: TextStyle(fontSize: 22),
                 textAlign: TextAlign.center,
               ),
             ),
             SizedBox(height: 80),
              // Google Sign-in Button
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8),
               child: OutlinedButton(
                  onPressed: () async {
                    // Uncomment this to enable Google Sign-in
                    try {
                      await signInWithGoogle();
                      Navigator.pushReplacementNamed(context, '/home');
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Login failed: $e')),
                      );
                    }
                  },
                 style: OutlinedButton.styleFrom(
                   side: BorderSide(color: Color(0xFF4285F4), width: 2),
                   backgroundColor: Color(0xFF4285F4),
                   foregroundColor: Colors.white,
                   minimumSize: Size(double.infinity, 52),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(6),
                   ),
                   alignment: Alignment.centerLeft,
                   padding: EdgeInsets.zero,
                 ),
                 child: Row(
                   children: [
                     Container(
                       width: 52,
                       height: 52,
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.only(
                           topLeft: Radius.circular(5),
                           bottomLeft: Radius.circular(5),
                         ),
                       ),
                       child: Center(
                         child: Image.network(
                           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRox06HAHf9YXgQAHbSaGkvosaJWeCbsUFwA&s',
                           height: 28,
                           width: 28,
                         ),
                       ),
                     ),
                     Expanded(
                       child: Center(
                         child: Text(
                           "CONNECT WITH\nGOOGLE",
                           style: TextStyle(
                             color: Colors.white,
                             fontWeight: FontWeight.w600,
                             fontSize: 16,
                             letterSpacing: 0.2,
                           ),
                           textAlign: TextAlign.center,
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
              // Mobile Button
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8),
               child: OutlinedButton(
                 onPressed: () {},
                 style: OutlinedButton.styleFrom(
                   side: BorderSide(color: Color(0xFF4285F4), width: 2),
                   backgroundColor: Color(0xFF4285F4),
                   foregroundColor: Colors.white,
                   minimumSize: Size(double.infinity, 52),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(6),
                   ),
                   alignment: Alignment.centerLeft,
                   padding: EdgeInsets.zero,
                 ),
                 child: Row(
                   children: [
                     Container(
                       width: 52,
                       height: 52,
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.only(
                           topLeft: Radius.circular(5),
                           bottomLeft: Radius.circular(5),
                         ),
                       ),
                       child: Center(
                          child: Image.asset(
                            'assets/images/telephone.png',
                           height: 28,
                           width: 28,
                         ),
                       ),
                     ),
                     Expanded(
                       child: Center(
                         child: Text(
                           "CONNECT WITH\nMOBILE NO",
                           style: TextStyle(
                             color: Colors.white,
                             fontWeight: FontWeight.w600,
                             fontSize: 16,
                             letterSpacing: 0.2,
                           ),
                           textAlign: TextAlign.center,
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
             SizedBox(height: 80),
              // Dots
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 _dot(false),
                 _dot(true),
               ],
             ),
           ],
         ),
       ),
     ),
    );
  }
}
