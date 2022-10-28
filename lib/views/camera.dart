import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  late final List<CameraDescription>? cameras;
   CameraPage({this.cameras, Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController controller;
  XFile? pictureFile;
getCameras() async {
await availableCameras().then((value) {
  widget.cameras = value;
}); 
 print("Func");
 print(widget.cameras!.length);
}
  @override
  void initState() {
    super.initState();
   getCameras();
   print("InIt");
   print(widget.cameras!.length);
    controller = CameraController(
      widget.cameras![0],
      ResolutionPreset.max,
    );
    controller.initialize().then((context) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return const SizedBox(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SizedBox(
              height: 400,
              width: 400,
              child: CameraPreview(controller),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () async {
              pictureFile = await controller.takePicture();
              setState(() {});
            },
            child: const Text('Capture Image'),
          ),
        ),
        if (pictureFile != null)
          Image.network(
            pictureFile!.path,
            height: 200,
          )
          //Android/iOS
          // Image.file(File(pictureFile!.path)))
      ],
    );
  }
}