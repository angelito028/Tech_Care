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
    return SizedBox(
      width: double.infinity,
      height: 140,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widget.rutaBoton!),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero, // Elimina el padding por defecto
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Stack(
          fit: StackFit.expand, // Asegura que todo el contenido llene el botón
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                "assets/${widget.rutaImagen}",
                fit: BoxFit.cover, // La imagen ocupa todo el espacio
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                widget.tituloBoton!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
