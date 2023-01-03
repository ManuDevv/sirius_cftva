import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


FirebaseStorage storage=FirebaseStorage.instance;

class chapitre_C extends StatefulWidget {
  const chapitre_C({Key? key}) : super(key: key);

  @override
  _chapitre_CState createState() => _chapitre_CState();
}

class _chapitre_CState extends State<chapitre_C> {
 final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  String chapitreCpdf='';
 

  @override
  void initState() {
    getDocument();
    
    super.initState();
  }

  getDocument(){
    Reference ref =storage.ref('referentiel').child('Chap C Version1.pdf');
    ref.getDownloadURL().then((chapitrectelecharge){
      setState(() {
        chapitreCpdf=chapitrectelecharge;
      });
      print('le document est télécharger');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapitre C'),
        centerTitle: true,
      ),
      body: SfPdfViewer.network(chapitreCpdf,
      key: _pdfViewerKey ,)
    );
  }
}
