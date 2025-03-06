import 'package:flutter/material.dart';
import 'package:tech_care/components/lista_componente.dart';
import 'package:tech_care/screens/pages/hardware/pages/info_componente.dart';

class InicioComponentes extends StatelessWidget {
  const InicioComponentes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        child: Column(
          children: [
            ListaComponente(
              rutaBoton: InformacionComponente(),
              rutaImagen: "placa_madre.png",
              tituloBoton: "Placa Madre",
            ),
          ],
        ),
      ),
    );
  }
}
