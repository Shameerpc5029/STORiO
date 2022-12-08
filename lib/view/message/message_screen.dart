import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storio_app/view/core/style_const.dart';
import 'package:storio_app/view/message/chat/chat_sreen.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CupertinoSearchTextField(
          backgroundColor: whiteColor,
          padding: EdgeInsets.all(10),
          borderRadius: BorderRadius.all(
            Radius.circular(
              30,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: screenGradiant,
        ),
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: Container(
                  color: whiteColor,
                  child: ListView.builder(
                    itemCount: 30,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          Navigator.of(context).push(CupertinoPageRoute(
                            builder: (context) {
                              return const ChatScreen();
                            },
                          ));
                        },
                        leading: const CircleAvatar(
                          radius: 30,
                        ),
                        title: Text('User $index'),
                        subtitle: const Text('Ok'),
                        trailing: const Text('Today'),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
