import 'package:crud_http/domain/controller/controllerPets.dart';
import 'package:crud_http/domain/controller/controllerUser.dart';
import 'package:crud_http/ui/content/pets/ModifyPet.dart';
import 'package:crud_http/ui/content/pets/addPetPage.dart';
import '../../../domain/models/pets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListPets extends StatelessWidget {
  const ListPets({super.key});

  @override
  Widget build(BuildContext context) {
    ControlPets controlp = Get.find();
    ControlUser controlu = Get.find();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lista de Mascotas'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                Get.toNamed("/addPetPage");
              },
            ),
          ],
        ),
        body: Obx(
          () => ListView.builder(
            itemCount: controlp.listaPetsFinal!.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(controlp.listaPetsFinal![index].foto),
                ),
                title: Text(controlp.listaPetsFinal![index].nombre),
                subtitle: Text(controlp.listaPetsFinal![index].raza),
                trailing: (controlp.listaPetsFinal![index].idUser ==
                        controlu.listaUserLogin![0].id)
                    ? Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              String id =
                                  controlp.listaPetsFinal![index].id.toString();
                              controlp.deletePets(id).then((value) {
                                Get.snackbar('Eliminado con exito',
                                    controlp.listaMensajes![0].mensaje,
                                    duration: const Duration(seconds: 3),
                                    icon: const Icon(Icons.info),
                                    shouldIconPulse: true,
                                    backgroundColor: Colors.yellow);
                              });
                            },
                            icon: const Icon(Icons.delete),
                          ),
                          IconButton(
                            onPressed: () {
                              Pets pet = Pets(
                                  id: controlp.listaPetsFinal![index].id,
                                  foto: controlp.listaPetsFinal![index].foto,
                                  nombre:
                                      controlp.listaPetsFinal![index].nombre,
                                  raza: controlp.listaPetsFinal![index].raza,
                                  idUser:
                                      controlp.listaPetsFinal![index].idUser);
                              if (pet != null) {
                                Get.to(() => ModifyPet(pet: pet));
                              }
                            },
                            icon: const Icon(Icons.edit),
                          ),
                        ],
                      )
                    : const Text(''),
              );
            },
          ),
        ));
  }
}
