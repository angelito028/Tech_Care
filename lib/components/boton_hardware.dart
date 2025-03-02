import 'package:flutter/material.dart';

class BotonHardware extends StatefulWidget {
  final Widget? rutaBoton;
  final String? tituloBoton;
  final String? rutaImagen;

  const BotonHardware({
    super.key,
    this.rutaBoton,
    this.tituloBoton,
    this.rutaImagen,
  });

  @override
  State<BotonHardware> createState() => _BotonHardwareState();
}

class _BotonHardwareState extends State<BotonHardware> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widget.rutaBoton!),
          );
        });
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: EdgeInsets.all(0),
      ),
      child: Ink(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
            image: AssetImage("assets/${widget.rutaImagen}"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          width: double.infinity,
          height: 140.0,
          alignment: Alignment.center,
          child: Center(
            child: Text(
              widget.tituloBoton!,
              style: const TextStyle(
                color: Color.fromARGB(255, 245, 231, 231),
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
