import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:hololive_like/redux/state.dart';
import 'package:hololive_like/screens/page_one_screen.dart';
import 'package:hololive_like/screens/page_two_screen.dart';
import 'package:redux/redux.dart';
import 'package:hololive_like/redux/reducer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Store<ListIdolState> _store =
      Store<ListIdolState>(showIdolReducer, initialState: ListIdolState([]));

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: _store,
      child: MaterialApp(
        initialRoute: "/",
        routes: {
          "/": (context) => PageOne(),
          "/personal": (context) => PageTwo(),
        },
      ),
    );
  }
}
