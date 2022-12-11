// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


// class renseignements_technique extends StatefulWidget {
//   const renseignements_technique({Key? key}) : super(key: key);

//   @override
//   _renseignements_techniqueState createState() => _renseignements_techniqueState();
// }

// class _renseignements_techniqueState extends State<renseignements_technique> {

//   final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
// late  PdfViewerController _pdfController ;

//   @override
//   void initState() {
//     _pdfController = PdfViewerController();
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Renseignements Technique '),
//       ),
//       body: SfPdfViewer.asset('asset/rt.pdf',
//       key: _pdfViewerKey,
//         controller: _pdfController,
//         initialZoomLevel: 0.01,
//       ),
//     );
//   }
// }



