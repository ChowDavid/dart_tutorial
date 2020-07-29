//https://www.youtube.com/watch?v=7mxIfR9v6oY


import 'dart:async';
import 'dart:isolate';


main() {
  print('Call createdIsolate');
  createIsolate().whenComplete(() => print('Isolated ended...'));

}


Future createIsolate() async{
  var receivePort = ReceivePort();
  var isolate = await Isolate.spawn(isolateFunction, receivePort.sendPort);
  var responsePort = ReceivePort();
  (await receivePort.first as SendPort).send(['abc',responsePort.sendPort]);

  var response = await responsePort.first;
  isolate.kill();
  print(response);


}


 void isolateFunction(SendPort mainSendPort) async{
  print('Calling');
  var childReceivePort = ReceivePort();
  mainSendPort.send(childReceivePort.sendPort);

  await for (var arg in childReceivePort){
    var m1 = arg[0];
    SendPort m2 = arg[1];
    print('Step 1 input $m1 $m2');
    Timer(Duration(seconds: 2),() {m2.send('$m1 from isolate');});
    print('Step 2');
  }
  print('Step 3');
}