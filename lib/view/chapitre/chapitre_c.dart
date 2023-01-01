import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

FirebaseStorage storage=FirebaseStorage.instance;

class chapitre_c extends StatefulWidget {
  const chapitre_c({Key? key}) : super(key: key);

  @override
  _chapitre_cState createState() => _chapitre_cState();
}

class _chapitre_cState extends State<chapitre_c> {

  String chapitreCpdf='';
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  late PdfViewerController _pdfController;

  @override
  void initState() {
    getDocument();
    _pdfController=PdfViewerController();
    super.initState();
  }

 Future getDocument()async{
    Reference ref = await storage.ref('referentiel').child('Chap C Version1.pdf');
    ref.getDownloadURL().then((chapitrectelecharge){
      setState(() {
        chapitreCpdf=chapitrectelecharge;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapitre C'),
      ),
      body: SfPdfViewer.network(chapitreCpdf,
        controller: _pdfController,
        key: _pdfViewerKey,
      initialZoomLevel: 0.5,),
    );
  }
}
