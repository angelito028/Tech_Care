import 'package:flutter/material.dart';
import 'package:tech_care/components/boton_hardware.dart';
import "package:tech_care/screens/pages/hardware/componentes.dart";
import 'package:tech_care/screens/pages/hardware/dispositivos.dart';
import "package:tech_care/screens/pages/hardware/almacenamiento.dart";
import "package:tech_care/screens/pages/hardware/dispositivos_red.dart";

class HardwareScreen extends StatelessWidget {
  const HardwareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 30.0),

              Text("Bienvenido a TechCare", style: TextStyle(fontSize: 28.0)),

              const SizedBox(height: 15.0),

              Text(
                "¿Con qué quieres empezar?",
                style: TextStyle(fontSize: 14.0),
              ),

              const SizedBox(height: 30.0),

              BotonHardware(
                rutaBoton: const InicioComponentes(),
                rutaImagen: "componentes_principales.png",
                tituloBoton: "Componentes Principales",
              ),

              const SizedBox(height: 30.0),

              BotonHardware(
                rutaBoton: const Almacenamiento(),
                rutaImagen: "almacenamiento.png",
                tituloBoton: "Dispositivos de Almacenamiento",
              ),

              const SizedBox(height: 30.0),

              BotonHardware(
                rutaBoton: const DispositivosES(),
                rutaImagen: "dispositivos_es.png",
                tituloBoton: "Dispositivos Entrada y Salida",
              ),

              const SizedBox(height: 30.0),

              BotonHardware(
                rutaBoton: const DispositivosRed(),
                rutaImagen: "dispositivos_red.png",
                tituloBoton: "Dispositivos de Red",
              ),

              const SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
