import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:hololive_like/models/idol.dart';
import 'package:hololive_like/Widgets/idol_card.dart';
import 'package:hololive_like/redux/action.dart';
import 'package:hololive_like/redux/state.dart';
import 'package:hololive_like/screens/page_one_screen.dart';

class ShowListIdol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<ListIdolState, List<Idol>>(
        converter: (store) => store.state.idols,
        builder: (context, List<Idol> listIdol) {
          return ListView.builder(
            itemCount: listIdol.length,
            itemBuilder: (context, index) {
              return IdolCard(
                path: listIdol[index].path,
                name: listIdol[index].name,
              );
            },
          );
        });
  }
}

class ShowGenTag extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StoreConnector<ListIdolState, List<Idol>>(
        converter: (store) => store.state.idols,
        builder: (context, List<Idol> listIdol) {
          return ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GenTag(
                        onPress: (){
                          print(listIdol.length);
                          StoreProvider.of<ListIdolState>(context).dispatch(ShowIdol(ListIdolState(listIdol)));
                        },
                        label: "0",
                      ),
                      GenTag(
                        label: "1",
                      ),
                      GenTag(
                        label: "2",
                      ),
                      GenTag(
                        label: "3",
                      ),
                      GenTag(
                        label: "4",
                      ),
                      GenTag(
                        label: "5",
                      ),
                    ],
                  );
        });
  }
}
