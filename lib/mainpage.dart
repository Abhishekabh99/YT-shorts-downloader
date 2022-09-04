// import 'dart:io';

// import 'package:direct_link/direct_link.dart';

// import 'package:flutter/material.dart';
// import 'package:dio/dio.dart';

// import 'package:path_provider/path_provider.dart';

// class MainPage extends StatefulWidget {
//   const MainPage({Key key}) : super(key: key);

//   @override
//   _MainPageState createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   bool downloading = false;
//   Directory _downloadsDirectory;
//   double pv = 0;

//   String progress = '0';

//   bool isDownloaded = false;
//   getdownload() async {
//     var check = await DirectLink.check(
//         'https://www.youtube.com/watch?v=rRol-uSu5Ik'); // add your url

//     check.forEach((element) {
//       print(element.quality);
//       print(element.link);
//       downloadFile(element.link, 'fileName');
//     });
//   }

//   downloadFile(uri, fileName) async {
//     setState(() {
//       downloading = true;
//     });

//     String savePath = await getFilePath(fileName);
//     print('$savePath');

//     if (savePath == null) {
//       print('Unable to get download path access');
//       return;
//     }
//     Dio dio = Dio();

//     dio.download(
//       uri,
//       savePath,
//       onReceiveProgress: (rcv, total) {
//         print(
//             'received: ${rcv.toStringAsFixed(0)} out of total: ${total.toStringAsFixed(0)}');

//         setState(() {
//           progress = ((rcv / total) * 100).toStringAsFixed(0);
//           pv = double.parse(progress) / 100.0;
//         });

//         if (progress == '100') {
//           setState(() {
//             isDownloaded = true;
//           });
//         } else if (double.parse(progress) < 100) {}
//       },
//       deleteOnError: true,
//     ).then((_) {
//       setState(() {
//         if (progress == '100') {
//           isDownloaded = true;
//         }

//         downloading = false;
//       });
//     });
//   }

//   getFilePath(uniqueFileName) async {
//     String path = '';

//     Directory dir = await getExternalStorageDirectory();

//     path = '${dir.path}/$uniqueFileName.mp4';
//     return path;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFF89580),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 220, left: 125),
//             child: Text(
//               'Paste your link here',
//               style: TextStyle(
//                   fontSize: 24,
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           TextField(
//             decoration: InputDecoration(
//               fillColor: Colors.grey,
//             ),
//           ),
//           LinearProgressIndicator(
//             backgroundColor: Colors.blue,
//             value: pv,
//             semanticsLabel: 'Linear progress indicator',
//           ),
//           Text('$progress %'),
//           SizedBox(
//             height: 80,
//           ),
//           ElevatedButton(
//             style: ButtonStyle(
//               fixedSize: MaterialStateProperty.all(Size.fromWidth(200)),
//               backgroundColor: MaterialStateProperty.all(Color(0xFF52F279)),
//               side: MaterialStateProperty.all(
//                   BorderSide(color: Colors.black, width: 1)),
//             ),
//             onPressed: () {
//               getdownload();
//             },
//             child: const Text(
//               'Download',
//               style: TextStyle(
//                 fontSize: 18,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
