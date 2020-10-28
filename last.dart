import 'dart:convert';
import 'dart:io';


main() async{
  
  print("Image loading started $time");
  var img = await getImageFromWeb("https://i.pinimg.com/564x/e6/57/1a/e6571a6c62fb2615c741a8fcf32aef49.jpg");
  print('Image loading completed $time');
  print("img.lenth: ${await img.length()}");
  
  print("Text loading started $time");
  await loadData('https://jsonplaceholder.typicode.com/posts');
  print('Text loading completed $time');
  
}

Future loadData(String url) async {
  new HttpClient().getUrl(Uri.parse(url))
    .then((HttpClientRequest request) => request.close())
    .then((HttpClientResponse response) => response.transform(new Utf8Decoder()).listen(print));
}

Future<File> getImageFromWeb(String url) async {
  var client = HttpClient();
  var _downloadData = <int>[];
  var fileSave = File('./image1.png');
  return client.getUrl(Uri.parse(url)).then((HttpClientRequest request) {
    return request.close();
  }).then((HttpClientResponse response) async {
    return response.first.then((value) {
      _downloadData.addAll(value);
      return fileSave.writeAsBytes(_downloadData);
    });
  });
}


String get time =>
"[${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}:${DateTime.now().microsecond}]";














