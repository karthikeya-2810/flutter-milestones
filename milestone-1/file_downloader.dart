import 'dart:async';
import 'dart:math';

void main() async {
  List<String> urls = [
    'https://www.cartrade.com/porsche-cars/718/',
    'https://www.lamborghini.com/en-en/models'
  ];

  List<Future<void>> futures = [];

  for (int i = 0; i < urls.length; i++) {
    String url = urls[i];
    print('Downloading file ${i + 1}');
    futures.add(downloadFile(url));
  }

  await Future.wait(futures);

  print('All files downloaded successfully.');
}

Future<void> downloadFile(String url) {
  return Future.delayed(Duration(seconds: Random().nextInt(5) + 1), () {
    
  });
}