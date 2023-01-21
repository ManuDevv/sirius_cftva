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


import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


FirebaseStorage storage=FirebaseStorage.instance;

class renseignementsTechnique extends StatefulWidget {
  const renseignementsTechnique({Key? key}) : super(key: key);

  @override
  _renseignementsTechniqueState createState() => _renseignementsTechniqueState();
}

class _renseignementsTechniqueState extends State<renseignementsTechnique> {
 final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  String renseignementTechnique='';
 

  @override
  void initState() {
    getDocument();
    
    super.initState();
  }

  getDocument(){
    Reference ref =storage.ref('documents').child('Consigne de Ligne version 1.pdf');
    ref.getDownloadURL().then((chapitrectelecharge){
      setState(() {
        renseignementTechnique=chapitrectelecharge;
      });
      print('le document est télécharger');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consigne de ligne'),
      ),
      body: SfPdfViewer.network(renseignementTechnique,
      key: _pdfViewerKey ,)
    );
  }
}
