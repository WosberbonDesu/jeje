import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DefaultIcons extends StatelessWidget {
  final Function press;
  final String img;

  const DefaultIcons({Key? key, required this.press, required this.img})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                img,
                color: Colors.white,
                height: 30,
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueGrey,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
