import 'package:crud_http/data/services/peticionesPets.dart';
import 'package:crud_http/domain/models/pets.dart';
import 'package:get/get.dart';

import '../models/utiles.dart';

class ControlPets extends GetxController {
  final Rxn<List<Pets>> listaPets = Rxn<List<Pets>>([]);

  final Rxn<List<Mensajes>> _listarMensajes = Rxn<List<Mensajes>>([]);

  Future<void> crearPets(String nombre, String f, String r, String idu) async {
    _listarMensajes.value = await PeticionesPets.registrarPet(nombre, f, r, idu);
    getPetsGral();
  }

  Future<void> getPetsGral() async {
    listaPets.value = await PeticionesPets.getListPets();
  }

  Future<void> deletePets(String id) async {
    _listarMensajes.value = await PeticionesPets.deletePet(id);
    getPetsGral();
  }

    Future<void> modificarPet(
      String id, String foto, String nombre, String raza) async {
    _listarMensajes.value =
        await PeticionesPets.editarPet(id, foto, nombre, raza);
    getPetsGral();
  }

  List<Mensajes>? get listaMensajes => _listarMensajes.value;
  List<Pets>? get listaPetsFinal => listaPets.value;
}
