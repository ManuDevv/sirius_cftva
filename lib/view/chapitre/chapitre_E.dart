import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


FirebaseStorage storage=FirebaseStorage.instance;

class chapitre_E extends StatefulWidget {
  const chapitre_E({Key? key}) : super(key: key);

  @override
  _chapitre_EState createState() => _chapitre_EState();
}

class _chapitre_EState extends State<chapitre_E> {
 final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  String chapitreEpdf='';
 

  @override
  void initState() {
    getDocument();
    
    super.initState();
  }

  getDocument(){
    Reference ref =storage.ref('referentiel').child('Chap E Version1.pdf');
    ref.getDownloadURL().then((chapitrectelecharge){
      setState(() {
        chapitreEpdf=chapitrectelecharge;
      });
      print('le document est télécharger');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapitre D'),
        centerTitle: true,
      ),
      body: SfPdfViewer.network(chapitreEpdf,
      key: _pdfViewerKey ,)
    );
  }
}

