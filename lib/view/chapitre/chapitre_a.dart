// import 'package:flutter/material.dart';
// import 'package:firebase_storage/firebase_storage.dart';

// import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

// FirebaseStorage storage=FirebaseStorage.instance;

// class chapitre_a extends StatefulWidget {
//   const chapitre_a({Key? key}) : super(key: key);

//   @override
//   _chapitre_aState createState() => _chapitre_aState();
// }

// class _chapitre_aState extends State<chapitre_a> {

//   String chapitreCpdf='';
//   final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
//   late PdfViewerController _pdfController;

//   @override
//   void initState() {
//     getDocument();
//     _pdfController=PdfViewerController();
//     super.initState();
//   }

//   getDocument(){
//     Reference ref =storage.ref('referentiel').child('Chap A Version1.pdf');
//     ref.getDownloadURL().then((chapitrectelecharge){
//       setState(() {
//         chapitreCpdf=chapitrectelecharge;
//       });
//       print(chapitrectelecharge);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Chapitre A'),
//       ),
//       body: SfPdfViewer.network(chapitreCpdf,
//         controller: _pdfController,
//         key: _pdfViewerKey,
//       initialZoomLevel: 0.5,),
//     );
//   }
// }
