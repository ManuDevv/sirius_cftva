import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

FirebaseStorage storage = FirebaseStorage.instance;

class chapitre_F extends StatefulWidget {
  const chapitre_F({Key? key}) : super(key: key);

  @override
  _chapitre_FState createState() => _chapitre_FState();
}

class _chapitre_FState extends State<chapitre_F> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  String chapitreFpdf = '';

  @override
  void initState() {
    getDocument();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    super.initState();
  }

  getDocument() {
    Reference ref = storage.ref('referentiel').child('Chap F Version1.pdf');
    ref.getDownloadURL().then((chapitrectelecharge) {
      setState(() {
        chapitreFpdf = chapitrectelecharge;
      });
      print('le document est télécharger');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chapitre F'),
          centerTitle: true,
        ),
        body: SfPdfViewer.network(
          chapitreFpdf,
          key: _pdfViewerKey,
        ));
  }
}
