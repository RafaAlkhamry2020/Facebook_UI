import 'package:flutter/material.dart';
class SmallButton extends StatelessWidget {
  final Color color;
  final IconData icondata;

  const SmallButton({Key? key,required this.color,required this.icondata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color :color,
        shape: BoxShape.circle,
        border: Border.all(color:Colors.white)

      ),
      child: Center(
        child:Icon(icondata,size: 12,color: Colors.white,),
      ),
    );
  }
}
