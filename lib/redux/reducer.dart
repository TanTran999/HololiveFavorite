import 'package:hololive_like/models/idol.dart';
import 'package:hololive_like/redux/action.dart';
import 'package:hololive_like/redux/state.dart';
import 'package:hololive_like/screens/page_one_screen.dart';

ListIdolState showIdolReducer(ListIdolState listIdolState, dynamic action) {
  if(action is ShowIdol){
    return ListIdolState(listIdol);
  }
  if(action is ShowFavoriteStatus) {
    
  }
  return listIdolState;
}