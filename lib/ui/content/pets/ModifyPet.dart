import 'package:crud_http/data/services/peticionesPets.dart';
import 'package:crud_http/domain/controller/controllerUser.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../domain/controller/controllerPets.dart';
import '../../../domain/models/pets.dart';

class ModifyPet extends StatelessWidget {
  final Pets? pet;

  const ModifyPet({Key? key, this.pet}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String name = pet!.nombre;
    ControlPets controlp = Get.find();

    TextEditingController foto = TextEditingController(text: pet!.foto);
    TextEditingController nombre = TextEditingController(text: pet!.nombre);
    TextEditingController raza = TextEditingController(text: pet!.raza);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Modificar mascota'),
      ),
      body: Container(
        child: Stack(children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  right: 35,
                  left: 35,
                  top: MediaQuery.of(context).size.height * 0.27),
              child: Column(children: [
                TextField(
                  controller: nombre,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    hintText: 'Nombre Mascota',
                    hintStyle: const TextStyle(color: Colors.black26),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: foto,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    hintText: 'Foto',
                    hintStyle: const TextStyle(color: Colors.black26),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: raza,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    hintText: 'Raza',
                    hintStyle: const TextStyle(color: Colors.black26),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'modificar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 47,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: const Color(0xff4c505b),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {
                            String id = pet!.id.toString();
                            String foto1 = foto.text;
                            String nombre1 = nombre.text;
                            String raza1 = raza.text;
                            controlp
                                .modificarPet(id, foto1, nombre1, raza1)
                                .then((value) {
                              Get.snackbar('Modificado con exito',
                                  controlp.listaMensajes![0].mensaje,
                                  duration: const Duration(seconds: 3),
                                  icon: const Icon(Icons.info),
                                  shouldIconPulse: true,
                                  backgroundColor: Colors.yellow);
                            });
                          },
                          icon: const Icon(Icons.arrow_forward),
                        ),
                      ),
                    ]),
                const SizedBox(
                  height: 40,
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
