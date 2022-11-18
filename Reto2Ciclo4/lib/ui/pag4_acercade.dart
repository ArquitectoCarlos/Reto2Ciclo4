import 'package:flutter/material.dart';

class pag4_cercade extends StatefulWidget {
  const pag4_cercade({super.key});

  @override
  State<pag4_cercade> createState() => _pag4_cercadeState();
}

class _pag4_cercadeState extends State<pag4_cercade> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text(" Grupo 1 Ciclo 4 UNINORTE"),
            subtitle: Text("Nombres"),
          ),
          ListTile(
            leading: Icon(Icons.person_pin),
            title: Text("""
  Willinton Escobar Cardenas 
  Mayerly Galindo Villamil
  Edinson Morales Quintero
  Carlos Useche Delgado
            """),
            subtitle: Text("Apellidos"),
          ),
          ListTile(
            leading: Icon(Icons.phone_android),
            title: Text(" 310 333 3333"),
            subtitle: Text("Celular"),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text(" causeche@uninorte.edu.co"),
            subtitle: Text("Email"),
          )
        ],
      ),
    );
  }
}
