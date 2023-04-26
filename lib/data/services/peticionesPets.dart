import 'dart:convert';

import 'package:crud_http/domain/models/pets.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../domain/models/utiles.dart';

class PeticionesPets {
  static Future<List<Mensajes>> registrarPet(
      String nombre, String f, String r, String idu) async {
    var url = Uri.parse(
        "https://movil-api.000webhostapp.com/api-pets/agregarPet.php");

    final response = await http.post(url,
        body: {'nombre': nombre, 'foto': f, 'raza': r, 'iduser': idu});

    print(response.statusCode);
    print(response.body);
    return compute(convertirAlista, response.body);
  }

  static Future<List<Mensajes>> deletePet(String id) async {
    var url = Uri.parse(
        "https://movil-api.000webhostapp.com/api-pets/eliminarPet.php?id=$id");

    final response = await http.get(url);

    print(response.statusCode);
    print(response.body);
    return compute(convertirAlista, response.body);
  }

  static Future<List<Mensajes>> editarPet(
      String id, String foto, String nombre, String raza) async {
    var url =
        Uri.parse("https://movil-api.000webhostapp.com/api-pets/updatePet.php");

    final response = await http.post(url,
        body: {'id': id, 'foto': foto, 'nombre': nombre, 'raza': raza});

    print(response.statusCode);
    print(response.body);
    return compute(convertirAlista, response.body);
  }

  static List<Mensajes> convertirAlista(String responsebody) {
    final pasar = json.decode(responsebody).cast<Map<String, dynamic>>();
    print(pasar);
    print(pasar[0]['mensaje']);
    return pasar.map<Mensajes>((json) => Mensajes.desdeJson(json)).toList();
  }

  static Future<List<Pets>> getListPets() async {
    var url =
        Uri.parse("https://movil-api.000webhostapp.com/api-pets/listaPets.php");

    final response = await http.get(url);

    print(response.statusCode);
    print(response.body);
    return compute(convertirAlista2, response.body);
  }

  static List<Pets> convertirAlista2(String responsebody) {
    final pasar = json.decode(responsebody).cast<Map<String, dynamic>>();
    print(pasar);
    //print(pasar[0]['mensaje']);
    return pasar.map<Pets>((json) => Pets.desdeJson(json)).toList();
  }
}


//https://movil-api.000webhostapp.com/api-pets/agregarPet.php
