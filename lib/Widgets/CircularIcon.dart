import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color.fromRGBO(253, 232, 232, 0.8),
      ),
      child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.redAccent,)),
    );
  }
}