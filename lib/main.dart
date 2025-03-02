import 'package:flutter/material.dart';
// IMPORTACIÓN DE LAS PANTALLAS
import 'package:tech_care/screens/assembly_screen.dart';
import 'package:tech_care/screens/hardware_screen.dart';
import 'package:tech_care/screens/software_screen.dart';

void main() {
  runApp(MiAplicacion());
}

class MiAplicacion extends StatefulWidget {
  const MiAplicacion({super.key});

  @override
  State<MiAplicacion> createState() => _MiAplicacionState();
}

class _MiAplicacionState extends State<MiAplicacion> {
  int _indiceActual = 0;

  // ARREGLO DE PANTALLAS
  // HAY QUE HACER EL INICIO DE SESIÓÓÓÓÓÓÓÓN =)
  final List<Widget> _pantallas = [
    HardwareScreen(),
    AssemblyScreen(),
    SoftwareScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue, // 🔵 Color de la AppBar
          foregroundColor: Colors.white, // ⚪ Color del texto y los íconos
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Center(child: Text("Tech Care"))),
        body: _pantallas[_indiceActual],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _indiceActual,
          onTap: (index) {
            setState(() {
              _indiceActual = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.memory),
              label: "Hardware",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.build), label: "Assembly"),
            BottomNavigationBarItem(icon: Icon(Icons.code), label: "Software"),
          ],
        ),
      ),
    );
  }
}
