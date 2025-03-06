import 'package:flutter/material.dart';

class ListaComponente extends StatelessWidget {
  final Widget? rutaBoton;
  final String? rutaImagen;
  final String? tituloBoton;

  const ListaComponente({
    super.key,
    this.rutaBoton,
    this.rutaImagen,
    this.tituloBoton,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => rutaBoton!),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/${rutaImagen!}", width: 70, height: 50),

            SizedBox(width: 20.0),

            Text(
              tituloBoton!,
              style: const TextStyle(color: Colors.black, fontSize: 22.0),
            ),
          ],
        ),
      ),
    );
  }
}
