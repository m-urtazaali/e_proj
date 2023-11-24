import 'package:flutter/material.dart';

class CircleButton extends StatefulWidget {
  final String? NetworkImage;
  final String image;
    CircleButton({Key? key,  required this.image, this.NetworkImage}) : super(key: key);

  @override
  State<CircleButton> createState() => _CircleButtonState();
}

class _CircleButtonState extends State<CircleButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OutlinedButton(
        onPressed: () {},
        child:CircleAvatar(
          radius: 20,
          backgroundImage:AssetImage(widget.image),
        ),
        style: OutlinedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(24),
        ),
      ),
    );
  }
}

