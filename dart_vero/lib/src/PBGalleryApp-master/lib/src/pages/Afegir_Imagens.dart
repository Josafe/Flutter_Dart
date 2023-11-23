import 'package:flutter/material.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:proyecto_paco/src/utils/Firebase_api.dart';
//import 'package:flutter/services.dart';
import 'package:path/path.dart';

class AfegirImagens extends StatefulWidget {
  AfegirImagens({Key? key}) : super(key: key);

  @override
  State<AfegirImagens> createState() => _AfegirImagensState();
}

class _AfegirImagensState extends State<AfegirImagens> {
  UploadTask? task;
  File? file;
  @override
  Widget build(BuildContext context) {
    final fileName = file != null
        ? basename(file!.path)
        : 'No se ha seleccionado una imagen';
    return Scaffold(
      appBar: AppBar(
        title: Text('Añadir Imagenes'),
        backgroundColor: Colors.black38,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: selectFile,
                  child: Text('Selecciona una imagen'),
                ),
                SizedBox(height: 8),
                Text(
                  fileName,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 48),
                ElevatedButton(
                  onPressed: uploadfile,
                  child: Text('Carga la imagen'),
                ),
                SizedBox(height: 20),
                task != null ? buildUploadStatus(task!) : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);
    //Con esto se limita a subir máximo una imagen a la vez
    if (result == null) return;
    final path = result.files.single.path!;

    setState(() => file = File(path));
  }

  Future uploadfile() async {
    if (file == null) return;

    final fileName = basename(file!.path);
    final destination = 'files/$fileName';

    task = FirebaseApi.uploadFile(destination, file!);
    setState(() {});

    if (task == null) return;

    final snapshot = await task!.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();

    print('Download-Link: $urlDownload');
  }

  Widget buildUploadStatus(UploadTask task) => StreamBuilder<TaskSnapshot>(
        stream: task.snapshotEvents,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final snap = snapshot.data!;
            final progress = snap.bytesTransferred / snap.totalBytes;
            final percentage = (progress * 100).toStringAsFixed(2);

            return Text(
              '$percentage %',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            );
          } else {
            return Container();
          }
        },
      );
}
