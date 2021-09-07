import 'package:flutter/material.dart';
import 'package:hololive_like/models/idol.dart';

class IdolCard extends StatefulWidget {
  final String path;
  final String name;
  final Function()? longPress;
  final bool active;

  IdolCard({
    required this.name,
    required this.path,
    this.active = true,
    this.longPress,
  });

  @override
  _IdolCardState createState() => _IdolCardState();
}

class _IdolCardState extends State<IdolCard> {
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    if (!widget.active) {
      favorite = true;
    }
    return GestureDetector(
      onTap: () {
        if (widget.active) {
          setState(() {
            if (favorite) {
              favorite = false;
              listFavorite.removeWhere((element) => element.name == widget.name);
              listFavorite.remove(Idol(name: widget.name, path: widget.path, gen: 0));
            } else {
              favorite = true;
              listFavorite.add(
                Idol(gen: 0, name: widget.name, path: widget.path),
              );
            }
          });
        }
      },
      onLongPress: widget.longPress,
      child: Container(
        margin: EdgeInsets.only(top: 5, bottom: 5),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Image(
              image: AssetImage(widget.path),
              height: 80,
            ),
            SizedBox(
              width: 10,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Icon(
                    favorite ? Icons.favorite : Icons.favorite_border,
                    size: 20,
                    color: favorite ? Colors.pink : Color(0xFF27C7FF),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    widget.name,
                    style: TextStyle(
                      color: Color(0xFF27C7FF),
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        height: 100,
        width: 280,
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
