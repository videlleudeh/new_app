import 'package:flutter/material.dart';

class ScreenContent extends StatelessWidget {
  const ScreenContent(
    this.background,
    this.title,
    this.description, {
    super.key,
  });

  final String background, title, description;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(background),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Color.fromRGBO(123, 97, 255, 0.2),
            BlendMode.color,
          ),
        ),
      ),

      child: Container(
        margin: EdgeInsets.only(left: 8, top: 499, right: 8),
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(210, 210, 210, 1),
                fontWeight: FontWeight.w400,
              ),
            ),

            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
