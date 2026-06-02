import 'package:chat_second/constans.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
   ChatScreen({super.key});
bool isMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
        backgroundColor: kDarkColor1,
        // centerTitle: true,
        // actions: [
        //   Icon(Icons.phone),
        //   Icon(Icons.video_camera_front_rounded),
        //   Icon(Icons.menu)
        // ],
        // leading: Icon(Icons.add),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 8),
              alignment: isMe?  AlignmentGeometry.centerRight : Alignment.centerLeft,

              child: Container(
              decoration: BoxDecoration(
                color: isMe? kLightColor1 : kDarkColor2,
                borderRadius: isMe ? BorderRadius.only(
                  bottomLeft:  Radius.circular(32)    ,
                  bottomRight: Radius.circular(32)      ,
                  topLeft:     Radius.circular(32)    ,

                ) : BorderRadius.only(
                  bottomLeft:  Radius.circular(32)    ,
                  bottomRight: Radius.circular(32)      ,
                  topRight:     Radius.circular(32)    ,

                )
              ),
              padding: EdgeInsets.all(8),
              child: Text("Hello",
              style: TextStyle(
                fontFamily: "times",
                color: isMe? Colors.black : Colors.white,
                fontSize: 18
              ),

              ),
              
              
              )),



        ],
      ),

      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                minLines: 1,
                maxLines: 5,
                decoration: InputDecoration(
                  hint: Text("Type a message"),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            IconButton(
              color: kDarkColor1,

              onPressed: () {},
              icon: Icon(Icons.send),
            ),
          ],
        ),
      ),
    );
  }
}
