/**
 * https://www.youtube.com/watch?time_continue=36&v=vl_AaCgudcY&feature=emb_logo
 * https://www.youtube.com/watch?v=OTS-ap9_aXc
 * https://www.youtube.com/watch?v=nQBpOIHE4eE
 * https://www.youtube.com/watch?v=SmTCmDMi4BY
 * https://www.youtube.com/watch?v=TF-TBsgIErY
 */


/// Mature and complete async-await for user interfaces containing event-driven code, paired with isolate-based concurrency
void main(){
  print('Before async');
  //Wait then the value return
  //print(readNews(1).then((value) => value).whenComplete(() => print('completed')));

  //this will create a new isolate-base event async mode.
  readNews(2).then((value) => print(value)).catchError((e){
    print('Oo something wrong.');
  });
  //this would not wait as above readNews run un async
  print('After async');


}

/// in this event loop it will wait until Future.delayed completed
Future<String> readNews(int id) async{
  print('War Start Today $id!!');
  await Future.delayed(Duration(seconds: 5));
  return'War Ended! $id';
}