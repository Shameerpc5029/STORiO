import 'package:flutter/material.dart';
import 'package:storio_app/view/core/style_const.dart';
import 'package:storio_app/view/home/widgets/home_item_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Image(
          height: 60,
          image: AssetImage('assets/images/logo.png'),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_circle,
              size: 30,
            ),
            splashRadius: 18,
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: screenGradiant,
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 90,
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 70,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: whiteColor,
                        ),
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              height10,
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: Container(
                    color: whiteColor,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.all(10),
                          child: HomeItemList(),
                        );
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
