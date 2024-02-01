import 'package:flutter/material.dart';

class MenuItem{
  late String titulo;
  late String subtitulo;
  late String ruta;
  late IconData icono;

  MenuItem({ required this.titulo, required this.subtitulo, required this.ruta, required this.icono});
}

List<MenuItem> menuItems = [
  MenuItem(
    titulo: "Buttons",
    subtitulo: "Button catalogue",
    ruta: "/buttons",
    icono: Icons.smart_button,
  ),
  MenuItem(
    titulo: "Cards",
    subtitulo: "Card catalogue",
    ruta: "/cards",
    icono: Icons.credit_card,
  ),
  MenuItem(
    titulo: "Animations",
    subtitulo: "Animations catalogue",
    ruta: "/animations",
    icono: Icons.shop,
  ),
  MenuItem(
    titulo: "Gradient",
    subtitulo: "Gradient catalogue",
    ruta: "/gradients",
    icono: Icons.gradient,
  ),
  MenuItem(
    titulo: "Progress Indicators",
    subtitulo: "Progress Indicators catalogue",
    ruta: "/progress",
    icono: Icons.circle_outlined,
  )
];