import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


FirebaseStorage storage=FirebaseStorage.instance;

class chapitre_D extends StatefulWidget {
  const chapitre_D({Key? key}) : super(key: key);

  @override
  _chapitre_DState createState() => _chapitre_DState();
}

class _chapitre_DState extends State<chapitre_D> {
 final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  String chapitreDpdf='';
 

  @override
  void initState() {
    getDocument();
    
    super.initState();
  }

  getDocument(){
    Reference ref =storage.ref('referentiel').child('Chap D Version1.pdf');
    ref.getDownloadURL().then((chapitrectelecharge){
      setState(() {
        chapitreDpdf=chapitrectelecharge;
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
      body: SfPdfViewer.network(chapitreDpdf,
      key: _pdfViewerKey ,)
    );
  }
}

