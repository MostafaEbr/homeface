import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homeface/components/constants/constant.dart';
import 'package:homeface/components/iconbutton.dart';
import 'package:homeface/components/textbutton.dart';
import 'package:homeface/cores/homepage/homepagecore.dart';
import 'package:scrolling_page_indicator/scrolling_page_indicator.dart';

class HomePageMobileView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    String myImage = "assets/images/avatar.jpeg";
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return GetBuilder<HomePageCore>(
      init: HomePageCore(),
        builder: (homePageController){
          return h>600&&w>600? Scaffold(
            appBar: AppBar(
              backgroundColor: secondaryColor,
              elevation: 2,
              title: Text("FaceBook",
                style: TextStyle(color: primaryColor,
                    fontSize: w*0.050
                ),),
              actions:
              [
                IconButtonWidget(
                  size: w*0.025,
                  icon: Icons.search,
                  onPressed: (){},
                ),
                IconButtonWidget(
                  icon: Icons.message,
                  size: w*0.025,
                  onPressed: (){},
                ),
              ],
            ),
            body:  Center(
              child: Container(
                width: w/2,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Container(
                        width: w,
                        height: h/5,
                        padding: EdgeInsets.only(top:w*0.015),
                        child:Column(
                          children: [
                            Container(
                              color: Colors.white,
                              padding: EdgeInsets.only(right:w*0.030 ,left:w*0.030 ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    child: Icon(Icons.person),
                                  ),
                                  SizedBox(width:w*0.025 ,),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(top:w*0.010),
                                      child: TextField(
                                        maxLines: 4,
                                        decoration: InputDecoration.collapsed(hintText: "What's on your mind ?",hintStyle: TextStyle(
                                            fontSize: w*0.018
                                        )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left:w*0.025 ,right:w*0.025 ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border(bottom: BorderSide(color: Colors.black12),top: BorderSide(color: Colors.grey.shade400,))
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ButtonText(text: "Live",
                                    iconData: Icons.video_call_outlined,
                                    fontSize: w*0.018,
                                    iconColor: Colors.red,
                                    wSizedBox: w*0.010, textColor: Colors.black,),
                                  ButtonText(text: "Photo",
                                      iconData: Icons.photo_album_outlined,
                                      fontSize: w*0.018,
                                      iconColor: Colors.green,
                                      textColor: Colors.black,
                                      wSizedBox: w*0.010),
                                  ButtonText(text: "Room",
                                      iconData: Icons.video_call,
                                      fontSize: w*0.018,
                                      iconColor: Colors.purple,
                                      textColor: Colors.black,
                                      wSizedBox: w*0.010),
                                ],
                              ),
                            ),
                          ],
                        )
                    ),
                    Material(
                      elevation: 2,
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.only(top:w*0.020 , left: w*0.020 ,right:w*0.020),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: w*0.025,
                                      child: Icon(Icons.person ),
                                    ),
                                    SizedBox(width: w*0.015,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Mostafa Shabana" ,style: TextStyle(color: Colors.black),),
                                        SizedBox(height: w*0.010,),
                                        Text("15:30 mins",style: TextStyle(color: Colors.grey),)
                                      ],
                                    )
                                  ],
                                ),
                                Icon(Icons.more_horiz , color: Colors.grey[600],)
                              ],
                            ),
                            Container(
                              color: Colors.white,
                              padding: EdgeInsets.all(w*0.010),
                              margin: EdgeInsets.only(bottom: w*0.010,top:w*0.010 ),
                              child: SizedBox(
                                height: 300,
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      child: PageView(
                                        children: homePageController.items,
                                        controller: homePageController.controller,
                                      ),
                                    ),
                                    ScrollingPageIndicator(
                                      dotColor: Colors.grey,
                                      dotSelectedColor: Colors.deepPurple,
                                      dotSize: 6,
                                      dotSelectedSize: 8,
                                      dotSpacing: 12,
                                      controller: homePageController.controller,
                                      itemCount: homePageController.items.length,
                                      orientation: Axis.horizontal,
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(top: BorderSide(color: Colors.grey.shade400))
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ButtonText(text: "Like",
                                    iconData: Icons.video_call_outlined,
                                    fontSize: w*0.013,
                                    iconColor: Colors.grey[700],
                                    wSizedBox: w*0.010, textColor: Colors.grey[700],),
                                  ButtonText(text: "Comment",
                                      iconData: Icons.messenger_outline_rounded,
                                      fontSize: w*0.013,
                                      iconColor: Colors.grey[700],
                                      textColor: Colors.grey[700],
                                      wSizedBox: w*0.010),
                                  ButtonText(text: "Share",
                                      iconData: Icons.screen_share,
                                      fontSize: w*0.013,
                                      iconColor: Colors.grey[700],
                                      textColor: Colors.grey[700],
                                      wSizedBox: w*0.010),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),

                    Material(
                      elevation: 2,
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.only(top:w*0.020 , left: w*0.020 ,right:w*0.020),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: w*0.025,
                                      child: Icon(Icons.person ),
                                    ),
                                    SizedBox(width: w*0.015,),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Mostafa Shabana" ,style: TextStyle(color: Colors.black),),
                                        SizedBox(height: w*0.010,),
                                        Text("15:30 mins",style: TextStyle(color: Colors.grey),)
                                      ],
                                    )
                                  ],
                                ),
                                Icon(Icons.more_horiz , color: Colors.grey[600],)
                              ],
                            ),
                            Container(
                                color: Colors.white,
                                padding: EdgeInsets.all(w*0.010),
                                margin: EdgeInsets.only(bottom: w*0.010,top:w*0.010 ),
                                child: Text("My Name is Mostafa Ibrahim Ismail Shabana Are You Need Any Thing ")),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(top: BorderSide(color: Colors.grey.shade400))
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ButtonText(text: "Like",
                                    iconData: Icons.video_call_outlined,
                                    fontSize: w*0.013,
                                    iconColor: Colors.grey[700],
                                    wSizedBox: w*0.010, textColor: Colors.grey[700],),
                                  ButtonText(text: "Comment",
                                      iconData: Icons.messenger_outline_rounded,
                                      fontSize: w*0.013,
                                      iconColor: Colors.grey[700],
                                      textColor: Colors.grey[700],
                                      wSizedBox: w*0.010),
                                  ButtonText(text: "Share",
                                      iconData: Icons.screen_share,
                                      fontSize: w*0.013,
                                      iconColor: Colors.grey[700],
                                      textColor: Colors.grey[700],
                                      wSizedBox: w*0.010),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Material(
                      elevation: 2,
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.only(top:w*0.020 , left: w*0.020 ,right:w*0.020),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: w*0.025,
                                      child: Icon(Icons.person ),
                                    ),
                                    SizedBox(width: w*0.015,),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Ibrahim Shabana" ,style: TextStyle(color: Colors.black),),
                                        SizedBox(height: w*0.010,),
                                        Text("15:30 mins",style: TextStyle(color: Colors.grey),)
                                      ],
                                    )
                                  ],
                                ),
                                Icon(Icons.more_horiz , color: Colors.grey[600],)
                              ],
                            ),
                            Container(
                                color: Colors.white,
                                padding: EdgeInsets.all(w*0.010),
                                margin: EdgeInsets.only(bottom: w*0.010,top:w*0.010 ),
                                child: Text("My Name is Mostafa Ibrahim Ismail Shabana Are You Need Any Thing ,"
                                    " My Name is Mostafa Ibrahim Ismail Shabana Are You Need Any Thing ")),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      top: BorderSide(color: Colors.grey.shade400))
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ButtonText(text: "Like",
                                    iconData: Icons.video_call_outlined,
                                    fontSize: w*0.013,
                                    iconColor: Colors.grey[700],
                                    wSizedBox: w*0.010, textColor: Colors.grey[700],),
                                  ButtonText(text: "Comment",
                                      iconData: Icons.messenger_outline_rounded,
                                      fontSize: w*0.013,
                                      iconColor: Colors.grey[700],
                                      textColor: Colors.grey[700],
                                      wSizedBox: w*0.010),
                                  ButtonText(text: "Share",
                                      iconData: Icons.screen_share,
                                      fontSize: w*0.013,
                                      iconColor: Colors.grey[700],
                                      textColor: Colors.grey[700],
                                      wSizedBox: w*0.010),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Material(
                      elevation: 2,
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.only(top:w*0.020 , left: w*0.020 ,right:w*0.020),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: w*0.025,
                                      child: Icon(Icons.person ),
                                    ),
                                    SizedBox(width: w*0.015,),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Essam Facher" ,style: TextStyle(color: Colors.black),),
                                        SizedBox(height: w*0.010,),
                                        Text("15:10 mins",style: TextStyle(color: Colors.grey),)
                                      ],
                                    )
                                  ],
                                ),
                                Icon(Icons.more_horiz , color: Colors.grey[600],)
                              ],
                            ),
                            Container(
                              color: Colors.white,
                              padding: EdgeInsets.all(w*0.010),
                              margin: EdgeInsets.only(bottom: w*0.010,top:w*0.010 ),
                              child: Column(
                                children:[
                                  Text("My Name is Mostafa Ibrahim Ismail Shabana Are You Need Any Thing ,"
                                      " My Name is Mostafa Ibrahim Ismail Shabana  "),
                                  SizedBox(height: h*0.025,),
                                  Image.asset(myImage,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      top: BorderSide(color: Colors.grey.shade400))
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ButtonText(text: "Like",
                                    iconData: Icons.video_call_outlined,
                                    fontSize: w*0.013,
                                    iconColor: Colors.grey[700],
                                    wSizedBox: w*0.010, textColor: Colors.grey[700],),
                                  ButtonText(text: "Comment",
                                      iconData: Icons.messenger_outline_rounded,
                                      fontSize: w*0.013,
                                      iconColor: Colors.grey[700],
                                      textColor: Colors.grey[700],
                                      wSizedBox: w*0.010),
                                  ButtonText(text: "Share",
                                      iconData: Icons.screen_share,
                                      fontSize: w*0.013,
                                      iconColor: Colors.grey[700],
                                      textColor: Colors.grey[700],
                                      wSizedBox: w*0.010),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                  ],
                ),
              ),
            ),
          ):
                 Scaffold(
            appBar: AppBar(
              backgroundColor: secondaryColor,
              elevation: 0,
              title: Text("FaceBook",
                style: TextStyle(color: primaryColor,
                    fontSize: w*0.060
                ),),
              actions:
              [
                IconButtonWidget(
                  size: w*0.050,
                  icon: Icons.search,
                  onPressed: (){},
                ),
                IconButtonWidget(
                  icon: Icons.message,
                  size: w*0.050,
                  onPressed: (){},
                ),
              ],
            ),
            body:  Container(
              width: w,
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                      width: w,
                      height: h/4.9,
                      child:Column(
                        children: [
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.only(right:w*0.030 ,left:w*0.030 ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  child: Icon(Icons.person),
                                ),
                                SizedBox(width:w*0.025 ,),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(top:w*0.025),
                                    child: TextField(
                                      maxLines: 4,
                                      decoration: InputDecoration.collapsed(hintText: "What's on your mind ?",hintStyle: TextStyle(
                                          fontSize: w*0.040
                                      )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left:w*0.025 ,right:w*0.025 ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(bottom: BorderSide(color: Colors.black12),top: BorderSide(color: Colors.grey.shade400,))
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ButtonText(text: "Live",
                                  iconData: Icons.video_call_outlined,
                                  fontSize: w*0.025,
                                  iconColor: Colors.red,
                                  wSizedBox: w*0.010, textColor: Colors.black,),
                                ButtonText(text: "Photo",
                                    iconData: Icons.photo_album_outlined,
                                    fontSize: w*0.025,
                                    iconColor: Colors.green,
                                    textColor: Colors.black,
                                    wSizedBox: w*0.010),
                                ButtonText(text: "Room",
                                    iconData: Icons.video_call,
                                    fontSize: w*0.025,
                                    iconColor: Colors.purple,
                                    textColor: Colors.black,
                                    wSizedBox: w*0.010),
                              ],
                            ),
                          ),
                        ],
                      )
                  ),
                  Material(
                    elevation: 2,
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.only(top:w*0.020 , left: w*0.020 ,right:w*0.020),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: w*0.060,
                                    child: Icon(Icons.person ),
                                  ),
                                  SizedBox(width: w*0.015,),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Mostafa Shabana" ,style: TextStyle(color: Colors.black),),
                                      SizedBox(height: w*0.010,),
                                      Text("15:30 mins",style: TextStyle(color: Colors.grey),)
                                    ],
                                  )
                                ],
                              ),
                              Icon(Icons.more_horiz , color: Colors.grey[600],)
                            ],
                          ),
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(w*0.010),
                            margin: EdgeInsets.only(bottom: w*0.010,top:w*0.010 ),
                            child: SizedBox(
                              height: 300,
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                    child: PageView(
                                      children: homePageController.items,
                                      controller: homePageController.controller,
                                    ),
                                  ),
                                  ScrollingPageIndicator(
                                    dotColor: Colors.grey,
                                    dotSelectedColor: Colors.deepPurple,
                                    dotSize: 6,
                                    dotSelectedSize: 8,
                                    dotSpacing: 12,
                                    controller: homePageController.controller,
                                    itemCount: homePageController.items.length,
                                    orientation: Axis.horizontal,
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(top: BorderSide(color: Colors.grey.shade400))
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ButtonText(text: "Like",
                                  iconData: Icons.video_call_outlined,
                                  fontSize: w*0.025,
                                  iconColor: Colors.grey[700],
                                  wSizedBox: w*0.010, textColor: Colors.grey[700],),
                                ButtonText(text: "Comment",
                                    iconData: Icons.messenger_outline_rounded,
                                    fontSize: w*0.025,
                                    iconColor: Colors.grey[700],
                                    textColor: Colors.grey[700],
                                    wSizedBox: w*0.010),
                                ButtonText(text: "Share",
                                    iconData: Icons.screen_share,
                                    fontSize: w*0.025,
                                    iconColor: Colors.grey[700],
                                    textColor: Colors.grey[700],
                                    wSizedBox: w*0.010),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),

                  Material(
                    elevation: 2,
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.only(top:w*0.020 , left: w*0.020 ,right:w*0.020),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: w*0.060,
                                    child: Icon(Icons.person ),
                                  ),
                                  SizedBox(width: w*0.015,),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Mostafa Shabana" ,style: TextStyle(color: Colors.black),),
                                      SizedBox(height: w*0.010,),
                                      Text("15:30 mins",style: TextStyle(color: Colors.grey),)
                                    ],
                                  )
                                ],
                              ),
                              Icon(Icons.more_horiz , color: Colors.grey[600],)
                            ],
                          ),
                          Container(
                              color: Colors.white,
                              padding: EdgeInsets.all(w*0.010),
                              margin: EdgeInsets.only(bottom: w*0.010,top:w*0.010 ),
                              child: Text("My Name is Mostafa Ibrahim Ismail Shabana Are You Need Any Thing ")),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(top: BorderSide(color: Colors.grey.shade400))
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ButtonText(text: "Like",
                                  iconData: Icons.video_call_outlined,
                                  fontSize: w*0.025,
                                  iconColor: Colors.grey[700],
                                  wSizedBox: w*0.010, textColor: Colors.grey[700],),
                                ButtonText(text: "Comment",
                                    iconData: Icons.messenger_outline_rounded,
                                    fontSize: w*0.025,
                                    iconColor: Colors.grey[700],
                                    textColor: Colors.grey[700],
                                    wSizedBox: w*0.010),
                                ButtonText(text: "Share",
                                    iconData: Icons.screen_share,
                                    fontSize: w*0.025,
                                    iconColor: Colors.grey[700],
                                    textColor: Colors.grey[700],
                                    wSizedBox: w*0.010),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Material(
                    elevation: 2,
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.only(top:w*0.020 , left: w*0.020 ,right:w*0.020),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: w*0.060,
                                    child: Icon(Icons.person ),
                                  ),
                                  SizedBox(width: w*0.015,),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Ibrahim Shabana" ,style: TextStyle(color: Colors.black),),
                                      SizedBox(height: w*0.010,),
                                      Text("15:30 mins",style: TextStyle(color: Colors.grey),)
                                    ],
                                  )
                                ],
                              ),
                              Icon(Icons.more_horiz , color: Colors.grey[600],)
                            ],
                          ),
                          Container(
                              color: Colors.white,
                              padding: EdgeInsets.all(w*0.010),
                              margin: EdgeInsets.only(bottom: w*0.010,top:w*0.010 ),
                              child: Text("My Name is Mostafa Ibrahim Ismail Shabana Are You Need Any Thing ,"
                                  " My Name is Mostafa Ibrahim Ismail Shabana Are You Need Any Thing ")),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(color: Colors.grey.shade400))
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ButtonText(text: "Like",
                                  iconData: Icons.video_call_outlined,
                                  fontSize: w*0.025,
                                  iconColor: Colors.grey[700],
                                  wSizedBox: w*0.010, textColor: Colors.grey[700],),
                                ButtonText(text: "Comment",
                                    iconData: Icons.messenger_outline_rounded,
                                    fontSize: w*0.025,
                                    iconColor: Colors.grey[700],
                                    textColor: Colors.grey[700],
                                    wSizedBox: w*0.010),
                                ButtonText(text: "Share",
                                    iconData: Icons.screen_share,
                                    fontSize: w*0.025,
                                    iconColor: Colors.grey[700],
                                    textColor: Colors.grey[700],
                                    wSizedBox: w*0.010),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Material(
                    elevation: 2,
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.only(top:w*0.020 , left: w*0.020 ,right:w*0.020),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: w*0.060,
                                    child: Icon(Icons.person ),
                                  ),
                                  SizedBox(width: w*0.015,),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Essam Facher" ,style: TextStyle(color: Colors.black),),
                                      SizedBox(height: w*0.010,),
                                      Text("15:10 mins",style: TextStyle(color: Colors.grey),)
                                    ],
                                  )
                                ],
                              ),
                              Icon(Icons.more_horiz , color: Colors.grey[600],)
                            ],
                          ),
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(w*0.010),
                            margin: EdgeInsets.only(bottom: w*0.010,top:w*0.010 ),
                            child: Column(
                              children:[
                                Text("My Name is Mostafa Ibrahim Ismail Shabana Are You Need Any Thing ,"
                                    " My Name is Mostafa Ibrahim Ismail Shabana  "),
                                SizedBox(height: h*0.025,),
                                Image.asset(myImage,
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(color: Colors.grey.shade400))
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ButtonText(text: "Like",
                                  iconData: Icons.video_call_outlined,
                                  fontSize: w*0.025,
                                  iconColor: Colors.grey[700],
                                  wSizedBox: w*0.010, textColor: Colors.grey[700],),
                                ButtonText(text: "Comment",
                                    iconData: Icons.messenger_outline_rounded,
                                    fontSize: w*0.025,
                                    iconColor: Colors.grey[700],
                                    textColor: Colors.grey[700],
                                    wSizedBox: w*0.010),
                                ButtonText(text: "Share",
                                    iconData: Icons.screen_share,
                                    fontSize: w*0.025,
                                    iconColor: Colors.grey[700],
                                    textColor: Colors.grey[700],
                                    wSizedBox: w*0.010),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                ],
              ),
            ),
          );
        }


        );
  }
}
