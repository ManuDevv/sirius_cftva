import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


FirebaseStorage storage=FirebaseStorage.instance;

class chapitre_a extends StatefulWidget {
  const chapitre_a({Key? key}) : super(key: key);

  @override
  _chapitre_aState createState() => _chapitre_aState();
}

class _chapitre_aState extends State<chapitre_a> {
 final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  String chapitreApdf='';
 

  @override
  void initState() {
    getDocument();
    
    super.initState();
  }

  getDocument(){
    Reference ref =storage.ref('referentiel').child('Chap A Version1.pdf');
    ref.getDownloadURL().then((chapitrectelecharge){
      setState(() {
        chapitreApdf=chapitrectelecharge;
      });
      print('le document est télécharger');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapitre A'),
      ),
      body: SfPdfViewer.network(chapitreApdf,
      key: _pdfViewerKey ,)
    );
  }
}
