import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';

import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

FirebaseStorage storage = FirebaseStorage.instance;

class planning extends StatefulWidget {
  const planning({Key? key}) : super(key: key);

  @override
  _planningState createState() => _planningState();
}

class _planningState extends State<planning> {
  String documentPdf = '';
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  late PdfViewerController _pdfController;

  @override
  void initState() {
    getDocument();
    _pdfController = PdfViewerController();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    super.initState();
  }

  getDocument() {
    Reference ref = storage.ref('planning').child('Planning.pdf');
    ref.getDownloadURL().then((pdftelecharge) {
      setState(() {
        documentPdf = pdftelecharge;
        print("pdf accessible");
        print(documentPdf);
      });
    }).catchError((erreur) {
      print('Probléme:${erreur.error}');
    });
    print(documentPdf);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Planning de service CFTVA'),
        backgroundColor:  Color(0xff0f7296),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
            Color(0xff0f7296),
                  Color(0xff0f7296),
                  Color(0xffa68f49)
          ])
        ),
        child: SfPdfViewer.network(
          documentPdf,
          controller: _pdfController,
          key: _pdfViewerKey,
        ),
      ),
    );
  }
}
