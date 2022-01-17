import 'package:face_book_ui/components/largeButton.dart';
import 'package:face_book_ui/components/smallButton.dart';
import 'package:flutter/material.dart';
class FeedWidget extends StatelessWidget {
  final String userName;
final String userImage;
final String textFeed;
final String timefeed;
final String imageFeed;

  const FeedWidget({Key? key, required this.userImage,required this.userName,required this.textFeed,required this.timefeed,required this.imageFeed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(userImage),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(userName,style: TextStyle(
                        color: Color(0xFFF101113),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(width: 3,),
                      Row(
                        children: <Widget>[
                                Text(timefeed,style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFFF101113),
                                ),),
                          SizedBox(width: 3,),
                          Icon(Icons.history,color:Color(0xFFF101113) ,size: 18,)
                        ],
                      ),
                    ],

                  )
                ],
              ),
      IconButton(
        icon: Icon(Icons.more_horiz,color:Color(0xFFF101113),size: 30,),
        onPressed: (){},


          ),
         ],
          ),
          SizedBox(height: 22,),
          Text(textFeed,style: TextStyle(
            fontSize: 15,
              color:Color(0xFFF101113),
            height: 1.4,
            letterSpacing: 1.6,

          ),),
          SizedBox(height: 20,),
          imageFeed != '' ? Container(
            height:200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(imageFeed),
                fit: BoxFit.cover,
              )
            ),
          ) : Container(),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              /////////////////////////good
              Row(
                children: <Widget>[
                  SmallButton(color: Colors.blue,
                      icondata: Icons.thumb_up
                  ),
                  Transform.translate(
                    offset: Offset(-7,0),
                    child: SmallButton(
                        color: Colors.red,
                        /////////////////////////favorate
                        icondata: Icons.favorite),
                  ),
                ],
              ),
              SizedBox(width: 3,),
              Text("Comments",style: TextStyle(
                  fontSize: 15,
                  color:Color(0xFFF101113),
                  fontWeight: FontWeight.bold
              ),),
              ],
          ),

              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  LargeButton(
                      color: Colors.blue,
                      icondata: Icons.thumb_up,
                      label: "Like"),
///////////////////////////////////////////////////////////////////////////////
                  LargeButton(
                      color: Colors.grey,
                      icondata: Icons.chat,
                      label: "Comment"),
                  ///////////////////////////////////////////////////////////////////////////////
                  LargeButton(
                      color: Colors.grey,
                      icondata: Icons.share,
                      label: "Share"),
                ]
              ),
            ],
          )


    );
  }
}
