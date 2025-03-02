import 'package:flutter/material.dart';
import 'package:tech_care/components/boton_hardware.dart';
import "package:tech_care/screens/pages/hardware/componentes.dart";
import 'package:tech_care/screens/pages/hardware/dispositivos.dart';
import "package:tech_care/screens/pages/hardware/almacenamiento.dart";

class HardwareScreen extends StatelessWidget {
  const HardwareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          children: <Widget>[
            BotonHardware(
              rutaBoton: const InicioComponentes(),
              rutaImagen: "componentes_principales.png",
              tituloBoton: "Componentes Principales",
            ),

            const SizedBox(height: 20.0),

            BotonHardware(
              rutaBoton: const Almacenamiento(),
              rutaImagen: "almacenamiento.png",
              tituloBoton: "Dispositivos de Almacenamiento",
            ),

            const SizedBox(height: 20.0),

            BotonHardware(
              rutaBoton: const DispositivosES(),
              rutaImagen: "dispositivos_es.png",
              tituloBoton: "Dispositivos Entrada y Salida",
            ),
          ],
        ),
      ),
    );
  }
}
