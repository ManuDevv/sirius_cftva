// import 'package:flutter/material.dart';
// import 'package:firebase_storage/firebase_storage.dart';

// import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

// FirebaseStorage storage = FirebaseStorage.instance;

// class chapitre_D extends StatefulWidget {
//   const chapitre_D({Key? key}) : super(key: key);

//   @override
//   _chapitre_DState createState() => _chapitre_DState();
// }

// class _chapitre_DState extends State<chapitre_D> {

//    String chapitreDpdf='';
//   final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
//   late PdfViewerController _pdfController;

//   @override
//   void initState() {
//     getDocument();
//     _pdfController=PdfViewerController();
//     super.initState();
//   }

//   getDocument(){
//     Reference ref = storage.ref('referentiel').child('Chap D Version1 .pdf');
//     ref.getDownloadURL().then((chapitreDtelecharge){
//      setState(() {
//        chapitreDpdf=chapitreDtelecharge;
//      });
//     } );
//     print(chapitreDpdf);
//   }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Chapitre D'),
//       ),
//       body: SfPdfViewer.network(chapitreDpdf,
//         controller: _pdfController,
//         key: _pdfViewerKey,),
//     );
//   }
// }

