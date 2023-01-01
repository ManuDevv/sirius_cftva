import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


FirebaseStorage storage=FirebaseStorage.instance;

class chapitre_B extends StatefulWidget {
  const chapitre_B({Key? key}) : super(key: key);

  @override
  _chapitre_BState createState() => _chapitre_BState();
}

class _chapitre_BState extends State<chapitre_B> {
 final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  String chapitreBpdf='';
 

  @override
  void initState() {
    getDocument();
    
    super.initState();
  }

  getDocument(){
    Reference ref =storage.ref('referentiel').child('Chap B Version1.pdf');
    ref.getDownloadURL().then((chapitrectelecharge){
      setState(() {
        chapitreBpdf=chapitrectelecharge;
      });
      print('le document est télécharger');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapitre B'),
        centerTitle: true,
      ),
      body: SfPdfViewer.network(chapitreBpdf,
      key: _pdfViewerKey ,)
    );
  }
}