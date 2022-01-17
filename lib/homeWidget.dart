import 'package:face_book_ui/widget/feedWidget.dart';
import 'package:face_book_ui/widget/headerwidget.dart';
import 'package:face_book_ui/widget/storyWidget.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget{
 @override
  _HomeWidget createState()=> _HomeWidget();
}
class _HomeWidget extends State<HomeWidget>
{
  Widget build (BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWidget(),
          Expanded(child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Stories",style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    letterSpacing: 1.3,

                  ),),
                  SizedBox(height: 20,),
                  Container(
                    height: 185,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        ///////////////////////////////////////////////////////////////////////////////////////////////
                        //Stories
                              StoryWidget(
                                storyImage: "assets/images/user1.png",
                                userImage: "assets/images/user_1.png",
                                userName:"Bashar Alkhameri" ,
                              ),
                        StoryWidget(
                          storyImage: "assets/images/user2.png",
                          userImage: "assets/images/user_2.png",
                          userName:"Safi Alkhameri" ,
                        ),
                        StoryWidget(
                          storyImage: "assets/images/user3.png",
                          userImage: "assets/images/user_3.png",
                          userName:"Shatha Alkhameri" ,
                        ),
                        StoryWidget(
                          storyImage: "assets/images/user4.png",
                          userImage: "assets/images/user_4.png",
                          userName:"Azad Alkhameri" ,
                        ),
                        StoryWidget(
                          storyImage: "assets/images/user5.png",
                          userImage: "assets/images/user_5.png",
                          userName:"Rafa Alkhameri" ,
                        ),
                        StoryWidget(
                          storyImage: "assets/images/user6.png",
                          userImage: "assets/images/user_6.png",
                          userName:"Bashar Alkhameri" ,
                        ),
                        StoryWidget(
                          storyImage: "assets/images/user7.png",
                          userImage: "assets/images/user_7.png",
                          userName:"Haitham Alkhameri" ,
                        ),
                        ///////////////////////////////////////////////////////////////////////////////////////////////
                      ],
                    ),
                  ),
                  SizedBox(height: 35,),
                  FeedWidget(
                      userName: "Rafa Alkhameri",
                      userImage: "assets/images/user5.png",
                       textFeed: "إن الله جعل مكارم الأخلاق ومحاسنها وصلاً بيننا وبينه#",
                      timefeed: "1 hr",
                      imageFeed: "assets/images/userfeed.jpg"),
                  SizedBox(height: 35,),
                  FeedWidget(
                      userName: "Rafa Alkhameri",
                      userImage: "assets/images/user5.png",
                      textFeed: "إن الله جعل مكارم الأخلاق ومحاسنها وصلاً بيننا وبينه#",
                      timefeed: "1 hr",
                      imageFeed: "assets/images/userfeed.jpg"),
                  SizedBox(height: 35,),
                  FeedWidget(
                      userName: "Rafa Alkhameri",
                      userImage: "assets/images/user5.png",
                      textFeed: "إن الله جعل مكارم الأخلاق ومحاسنها وصلاً بيننا وبينه#",
                      timefeed: "1 hr",
                      imageFeed: "assets/images/userfeed.jpg"),
                ],
              ),
            ),
          ),
          )
        ],
      ),
    );
  }
}