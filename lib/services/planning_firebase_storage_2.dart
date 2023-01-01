import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:firebase_storage/firebase_storage.dart';

FirebaseStorage storage = FirebaseStorage.instance;

class planningFiebaseStorage2 extends StatefulWidget {
  const planningFiebaseStorage2({Key? key}) : super(key: key);

  @override
  State<planningFiebaseStorage2> createState() =>
      _planningFiebaseStorage2State();
}

class _planningFiebaseStorage2State extends State<planningFiebaseStorage2> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  String documentPdf = '';
  @override
  void initState() {
    getDocument();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Planning de service '),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: SfPdfViewer.network(
        documentPdf,
        key: _pdfViewerKey,
      ),
    );
  }

  getDocument() {
    Reference ref = storage.ref('planning').child('Planning.pdf');
    ref.getDownloadURL().then((pdfTelecharge) {
      setState(() {
        documentPdf = pdfTelecharge;
        print("pdf accessible");
        print(documentPdf);
      });
    }).catchError((erreur) {
      print('Probléme:${erreur.error}');
    });
    print(documentPdf);
  }
}
