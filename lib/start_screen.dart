import 'package:flutter/material.dart';
import 'package:quiz_app/login_page.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/signup_page.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/logo.png'), // Replace with your image path
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.7), BlendMode.dstATop),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 120),
              Text(
                'SecureNet IQ',
                style: TextStyle(
                  color: Color.fromARGB(255, 2, 2, 63),
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              const Text(
                'Enhance Your Network Security Knowledge!',
                style: TextStyle(
                  color: Color.fromARGB(255, 2, 2, 63),
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/logo.png',
                width: 300,
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue[900]!),
                      elevation: MaterialStateProperty.all<double>(5),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 10), // Add spacing between buttons
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue[900]!),
                      elevation: MaterialStateProperty.all<double>(5),
                    ),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuestionScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[900],
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ), // Adjust padding here
                ),
                label: Text(
                  'Start Quiz!',
                  style: TextStyle(color: Colors.white),
                ),
                icon: Icon(Icons.arrow_right_alt),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
