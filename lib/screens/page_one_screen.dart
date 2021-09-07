import 'package:flutter/material.dart';
import 'package:hololive_like/redux/idol_widget.dart';
import 'package:hololive_like/widgets/logo.dart';

class PageOne extends StatelessWidget {
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
                  Navigator.pushNamed(context, "/personal");
                },
              ),
              SizedBox(
                height: 24,
              ),

              //title gen list
              Center(
                child: Container(
                  height: 30,
                  width: 300,
                  padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
                  child: Text(
                    "Gen",
                    style: TextStyle(
                      color: Color(0xFF27C7FF),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              // list gen
              Center(
                child: Container(
                  height: 90,
                  width: 300,
                  child: ShowGenTag(),
                ),
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
                      child: ShowListIdol(),
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
  final Function()? onPress;

  GenTag({required this.label, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
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
