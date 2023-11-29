import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Camera Gallery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GALERIA(),
    );
  }
}

class GALERIA extends StatefulWidget {
  const GALERIA({Key? key}) : super(key: key);

  @override
  State<GALERIA> createState() => _Gfotos();
}

class _Gfotos extends State<GALERIA> {
  late List<XFile> _capturedImages;
  late List<String> _capturedImagesPaths;

  @override
  void initState() {
    super.initState();
    _capturedImages = [];
    _capturedImagesPaths = [];
    _loadImages().then((_) {
      if (_capturedImagesPaths.isEmpty) {
        _capturedImagesPaths = [];
      }
    });
  }

  Future<void> _loadImages() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String>? loadedPaths = prefs.getStringList('imagePaths');

    if (loadedPaths != null) {
      setState(() {
        _capturedImagesPaths = loadedPaths;
      });
    }
  }

  Future<void> _takePicture() async {
    final picker = ImagePicker();

    final image = await picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      final imageFile = File(image.path);

      setState(() {
        _capturedImages.add(image);
        _capturedImagesPaths.add(image.path);
      });

      final appDir = await getApplicationDocumentsDirectory();
      final fileName = imageFile.path.split('/').last;
      final savedImage = await imageFile.copy('${appDir.path}/$fileName');
      print('Imagen guardada en: ${savedImage.path}');

      final prefs = await SharedPreferences.getInstance();
      prefs.setStringList('imagePaths', _capturedImagesPaths);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TUS ACTIVIDADES"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ),
        itemCount: _capturedImages.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.file(
            File(_capturedImages[index].path),
            fit: BoxFit.cover,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.camera),
        onPressed: _takePicture,
      ),
    );
  }
}
