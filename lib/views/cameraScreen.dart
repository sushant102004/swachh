import 'dart:ui' as ui;
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'gallery_screen.dart';

class CameraScreen extends StatefulWidget {
  final List<CameraDescription> cameras;
  const CameraScreen({
    Key? key,
    required this.cameras,
  }) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  void initState() {
    initializeCamera(selectedCamera); //Initially selectedCamera = 0
    super.initState();
  }

  late CameraController _controller; //To control the camera
  late Future<void>
      _initializeControllerFuture; //Future to wait until camera initializes
  int selectedCamera = 0;
  List<File> capturedImages = [];

  initializeCamera(int cameraIndex) async {
    _controller = CameraController(
      // Get a specific camera from the list of available cameras.
      widget.cameras[cameraIndex],
      // Define the resolution to use.
      ResolutionPreset.medium,
    );

    // Next, initialize the controller. This returns a Future.
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
          children: [
            FutureBuilder<void>(
              future: _initializeControllerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  // If the Future is complete, display the preview.
                  return CameraPreview(_controller);
                } else {
                  // Otherwise, display a loading indicator.
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      if (widget.cameras.length > 1) {
                        setState(() {
                          selectedCamera = selectedCamera == 0 ? 1 : 0;
                          initializeCamera(selectedCamera);
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('No secondary camera found'),
                          duration: const Duration(seconds: 2),
                        ));
                      }
                    },
                    icon: Icon(Icons.switch_camera_rounded, color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await _initializeControllerFuture;
                      var xFile = await _controller.takePicture();
                      setState(() {
                        capturedImages.add(File(xFile.path));
                      });
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (capturedImages.isEmpty) return;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GalleryScreen(
                                  images: capturedImages.reversed.toList())));
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        image: capturedImages.isNotEmpty
                            ? DecorationImage(
                                image: FileImage(capturedImages.last),
                                fit: BoxFit.cover)
                            : null,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
        // Container(
        //   height: MediaQuery.of(context).size.height*0.644,
        //   width: MediaQuery.of(context).size.width,
        //   color: Color.fromARGB(100, 91, 140, 41),),
    Positioned(
      top: MediaQuery.of(context).size.height*0.12,
      left:MediaQuery.of(context).size.width*0.05 ,
  child:   CustomPaint(
  
      size: Size(70, (70*1.0232558139534884).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
  
      painter: TLCustomPainter(),
  
  ),
),
Positioned(
      top: MediaQuery.of(context).size.height*0.12,
      right:MediaQuery.of(context).size.width*0.05 ,
  child:   CustomPaint(
  
      size: Size(70, (70*1.0232558139534884).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
  
      painter: TRCustomPainter(),
  
  ),
),
Positioned(
  top: MediaQuery.of(context).size.height*0.44,
      left:MediaQuery.of(context).size.width*0.05 ,
  child:   CustomPaint(
  
      size: Size(70, (70*1.0232558139534884).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
  
      painter: BLCustomPainter(),
  
  ),
),
Positioned(
  top: MediaQuery.of(context).size.height*0.44,
      right:MediaQuery.of(context).size.width*0.05 ,
  child:   CustomPaint(
  
      size: Size(70, (70*1.0232558139534884).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
  
      painter: RPSCustomPainter(),
  
  ),
)

        ]
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width*0.06976744,size.height*0.9204545);
    path_0.lineTo(size.width*0.5930233,size.height*0.9204545);
    path_0.cubicTo(size.width*0.7054256,size.height*0.9280295,size.width*0.9302326,size.height*0.8681818,size.width*0.9302326,size.height*0.5681818);
    path_0.cubicTo(size.width*0.9302326,size.height*0.2681818,size.width*0.9302326,size.height*0.1098484,size.width*0.9302326,size.height*0.06818182);

Paint paint_0_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.1162791;
paint_0_stroke.color=Colors.green.withOpacity(1.0);
paint_0_stroke.strokeCap = StrokeCap.round;
canvas.drawPath(path_0,paint_0_stroke);

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Color(0xff000000).withOpacity(0.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}
class BLCustomPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width*0.9302326,size.height*0.9204545);
    path_0.lineTo(size.width*0.4069767,size.height*0.9204545);
    path_0.cubicTo(size.width*0.2945744,size.height*0.9280295,size.width*0.06976744,size.height*0.8681818,size.width*0.06976744,size.height*0.5681818);
    path_0.cubicTo(size.width*0.06976744,size.height*0.2681818,size.width*0.06976744,size.height*0.1098484,size.width*0.06976744,size.height*0.06818182);

Paint paint_0_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.1162791;
paint_0_stroke.color=Colors.green.withOpacity(1.0);
paint_0_stroke.strokeCap = StrokeCap.round;
canvas.drawPath(path_0,paint_0_stroke);

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Color(0xff000000).withOpacity(0.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
}
}

//Add this CustomPaint widget to the Widget Tree
class TRCustomPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width*0.06976744,size.height*0.06879250);
    path_0.lineTo(size.width*0.5930233,size.height*0.06879250);
    path_0.cubicTo(size.width*0.7054256,size.height*0.06121682,size.width*0.9302326,size.height*0.1210652,size.width*0.9302326,size.height*0.4210659);
    path_0.cubicTo(size.width*0.9302326,size.height*0.7210659,size.width*0.9302326,size.height*0.8793977,size.width*0.9302326,size.height*0.9210659);

Paint paint_0_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.1162791;
paint_0_stroke.color=Colors.green.withOpacity(1.0);
paint_0_stroke.strokeCap = StrokeCap.round;
canvas.drawPath(path_0,paint_0_stroke);

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Color(0xff000000).withOpacity(0.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}
//Copy this CustomPainter code to the Bottom of the File
class TLCustomPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width*0.9302326,size.height*0.06879250);
    path_0.lineTo(size.width*0.4069767,size.height*0.06879250);
    path_0.cubicTo(size.width*0.2945744,size.height*0.06121682,size.width*0.06976744,size.height*0.1210652,size.width*0.06976744,size.height*0.4210659);
    path_0.cubicTo(size.width*0.06976744,size.height*0.7210659,size.width*0.06976744,size.height*0.8793977,size.width*0.06976744,size.height*0.9210659);

Paint paint_0_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.1162791;
paint_0_stroke.color=Colors.green.withOpacity(1.0);
paint_0_stroke.strokeCap = StrokeCap.round;
canvas.drawPath(path_0,paint_0_stroke);

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Color(0xff000000).withOpacity(0.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
}
}