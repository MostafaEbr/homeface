import 'package:flutter/material.dart';

import 'constants/constant.dart';

class IconButtonWidget extends StatelessWidget {

  double size ;
  IconData icon ;
  Function onPressed ;

  IconButtonWidget({this.size,this.icon,this.onPressed});


  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon, color: blackColor,size:size),
      onPressed : onPressed,
    );
  }
}
