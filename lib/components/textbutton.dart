import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {

  String text ;
  double wSizedBox ;
  double fontSize ;
  IconData iconData ;
  Color iconColor ;
  Color textColor ;

  ButtonText({@required this.text,@required this.iconData,@required this.fontSize,
    @required this.iconColor,@required this.wSizedBox,@required this.textColor});

  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed: (){}, child: Row(
      children: [
        Icon(iconData,color: iconColor,),
        SizedBox(width: wSizedBox,),
        Text(text,style: TextStyle(
            fontSize: fontSize,
            color: textColor,
            fontWeight: FontWeight.w400
        ),),
      ],
    ),
    );
  }
}
