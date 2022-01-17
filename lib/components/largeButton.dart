import 'package:flutter/material.dart';
class LargeButton extends StatelessWidget {
  final Color color;
  final IconData icondata;
  final String label;

  const LargeButton({Key? key,required this.color,required this.icondata,required this.label}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icondata,color: color,),
            SizedBox(width: 4,),
            Text(label,style: TextStyle(
              color: color,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),)
          ],
        ),
      ),
    );
  }
}
