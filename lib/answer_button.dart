import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTop,
  });
  final String answerText;
  final void Function() onTop;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20), // Adjust margin as needed
      child: ElevatedButton(
        onPressed: onTop,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          backgroundColor: Color.fromARGB(255, 33, 1, 95),
          foregroundColor: Color.fromARGB(255, 238, 237, 240),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: SizedBox(
          // Use SizedBox to allow Button width to be expanded
          width: double.infinity, // Set Button width to fill the container
          child: Text(
            answerText,
            textAlign: TextAlign.center, // Center align text
          ),
        ),
      ),
    );
  }
}
