import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


FirebaseStorage storage=FirebaseStorage.instance;

class rpe extends StatefulWidget {
  const rpe({Key? key}) : super(key: key);

  @override
  _rpeState createState() => _rpeState();
}

class _rpeState extends State<rpe> {
 final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  String rpe='';
 

  @override
  void initState() {
    getDocument();
    
    super.initState();
  }

  getDocument(){
    Reference ref =storage.ref('documents').child('RPE CFTVA 2020 Version 1.pdf');
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