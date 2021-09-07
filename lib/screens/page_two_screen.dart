import 'package:flutter/material.dart';
import 'package:hololive_like/widgets/idol_card.dart';
import 'package:hololive_like/widgets/logo.dart';
import 'package:hololive_like/models/idol.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 16, 10, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //header logo
              Logo(
                onPress: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: 24,
              ),

              SizedBox(
                height: 10,
              ),
              Flexible(
                child: Center(
                  child: Container(
                    width: 280,
                    child: ScrollConfiguration(
                      behavior: ScrollConfiguration.of(context)
                          .copyWith(scrollbars: false),
                      child: ListView.builder(
                        itemCount: listFavorite.length,
                        itemBuilder: (context, index) {
                          return IdolCard(
                            path: listFavorite[index].path,
                            name: listFavorite[index].name,
                            active: false,
                            longPress: () {
                              setState(() {
                                listFavorite.remove(listFavorite[index]);
                              });
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GenTag extends StatelessWidget {
  final String label;

  GenTag({required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("watame");
      },
      child: Container(
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: Color(0xFF27C7FF),
              fontSize: 24,
            ),
          ),
        ),
        height: 80,
        width: 50,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 1,
            color: Color(0xFF27C7FF),
          ),
        ),
      ),
    );
  }
}
