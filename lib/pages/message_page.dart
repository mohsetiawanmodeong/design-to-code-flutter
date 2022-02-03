import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget receiverBubble({
      var imageUrl,
      var text,
      var time,
    }) {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              imageUrl,
              width: 40,
            ),
            SizedBox(width: 12),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Color(0xffEBEFF3),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: subtitleTextStyle,
                  ),
                  SizedBox(height: 5),
                  Text(
                    time,
                    style: subtitleTextStyle,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget senderBubble({
      var imageUrl,
      var text,
      var time,
    }) {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text,
                    style: subtitleTextStyle,
                  ),
                  SizedBox(height: 5),
                  Text(
                    time,
                    style: subtitleTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(width: 12),
            Image.asset(
              imageUrl,
              width: 40,
            ),
          ],
        ),
      );
    }

    Widget header() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.all(30),
        height: 115,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/group1.png',
              width: 55,
              height: 55,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jakarta Fair',
                  style: titleTextStyle,
                ),
                SizedBox(height: 2),
                Text(
                  '14,209 members',
                  style: subtitleTextStyle,
                ),
              ],
            ),
            Spacer(),
            Image.asset(
              'assets/images/call_btn.png',
            ),
          ],
        ),
      );
    }

    Widget body() {
      return Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              receiverBubble(
                imageUrl: 'assets/images/friend1.png',
                text: 'How are you guys?',
                time: '2:30',
              ),
              receiverBubble(
                imageUrl: 'assets/images/friend3.png',
                text: 'Find here :P',
                time: '3:11',
              ),
              senderBubble(
                imageUrl: 'assets/images/friend4.png',
                text:
                    'Thinking about how to deal\n with this client from hell ...',
                time: '22:08',
              ),
              receiverBubble(
                imageUrl: 'assets/images/friend2.png',
                text: 'Love them',
                time: '23:11',
              ),
            ],
          ),
        ),
      );
    }

    Widget chatInput() {
      return Container(
        width: MediaQuery.of(context).size.width - (2 * 30),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(75),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Type message ...',
              style: subtitleTextStyle,
            ),
            Image.asset(
              'assets/images/send_btn.png',
              width: 35,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffF8FAFC),
      floatingActionButton: chatInput(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          children: [
            header(),
            body(),
          ],
        ),
      ),
    );
  }
}
