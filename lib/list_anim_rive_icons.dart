import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class ListAnimatedRiveIcons extends StatefulWidget {
  const ListAnimatedRiveIcons({super.key});

  @override
  State<ListAnimatedRiveIcons> createState() => _ListAnimatedRiveIconsState();
}

class _ListAnimatedRiveIconsState extends State<ListAnimatedRiveIcons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
            backgroundColor: backgroundColor,
            leadingWidth: 50,
            leading: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.08),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                    icon: const Icon(CupertinoIcons.back,
                        size: 18, color: Colors.black),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ),
            ),
            centerTitle: true,
            // title: Text(state.getABookResponse.data!.title ?? " ",
            //   style: TextStyle(fontSize: 16, color: boldTextColor,fontWeight: FontWeight.w600),
            // ),
            title: Text(
              "Rive Animated Icon",
              style: TextStyle(
                  fontSize: 18,
                  color: boldTextColor,
                  fontWeight: FontWeight.w600),
            ),
            actions: const []),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffEDFDF3),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "LOREM IPSUM",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w200,
                                fontSize: 12.0),
                          ),
                          SizedBox(height: 16.0),
                          Text(
                            "Lorem Ipsum\nDolor",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 24.0),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                          width: 150,
                          height: 150,
                          child: Image.asset(
                            "assets/images/apple.png",
                            fit: BoxFit.cover,
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffFDECEE),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "LOREM IPSUM",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w200,
                                fontSize: 12.0),
                          ),
                          SizedBox(height: 16.0),
                          Text(
                            "Lorem Ipsum\nDolor",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 24.0),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                          width: 150,
                          height: 150,
                          child: Image.asset(
                            "assets/images/black_currant.png",
                            fit: BoxFit.cover,
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffFEECF8),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "LOREM IPSUM",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w200,
                                fontSize: 12.0),
                          ),
                          SizedBox(height: 16.0),
                          Text(
                            "Lorem Ipsum\nDolor",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 24.0),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                          width: 150,
                          height: 150,
                          child: Image.asset(
                            "assets/images/pear.png",
                            fit: BoxFit.cover,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
