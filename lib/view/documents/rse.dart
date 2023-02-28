import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


FirebaseStorage storage=FirebaseStorage.instance;

class rse extends StatefulWidget {
  const rse({Key? key}) : super(key: key);

  @override
  _rseState createState() => _rseState();
}

class _rseState extends State<rse> {
 final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  String rpe='';
 

  @override
  void initState() {
    getDocument();
    
    super.initState();
  }

  getDocument(){
    Reference ref =storage.ref('documents').child('RSE CFTVA 2022 version 3.pdf');
    ref.getDownloadURL().then((chapitrectelecharge){
      setState(() {
        rpe=chapitrectelecharge;
      });
      print('le document est télécharger');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Réglement de police d'exploitation"),
      ),
      body: SfPdfViewer.network(rpe,
      key: _pdfViewerKey ,)
    );
  }
}