import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:simple_app/Presentation/screens/screen_design/Welcome_Data.dart";

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double theight = MediaQuery.of(context).size.height;
    double twidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: theight,
        width: twidth,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('image/frame.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Expanded(
              flex: 5,
              child: WelcomeData(),
            ),
          ],
        ),
      ),
    );
  }
}
