import 'package:crud_materias/domain/modelos/materias.dart';
import 'package:crud_materias/ui/contenido/crear.dart';
import 'package:flutter/material.dart';

class ListarMaterias extends StatefulWidget {
  const ListarMaterias({Key? key}) : super(key: key);

  @override
  State<ListarMaterias> createState() => _ListarMateriasState();
}

class _ListarMateriasState extends State<ListarMaterias> {
  final List<Materia> _materias = listadoMaterias;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado de Materas'),
      ),
      body: ListView.builder(
          itemCount: _materias.length,
          itemBuilder: (context, pos) {
            return ListTile(
              onTap: (){
                
              },
              leading: CircleAvatar(
                child: Text(_materias[pos].nota),
              ),
              title: Text(_materias[pos].nombre),
              subtitle: Text(_materias[pos].profesor),
              trailing: CircleAvatar(
                radius: 10,
                child: Text(_materias[pos].creditos),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const AdicionarMaterias(
                  titulo: 'Hola Mundo'), //Llamar la Vista
            ),
          ).then((resultado) //Espera por un Resultado
              {
            _materias.addAll(
                resultado); //Adiciona a la lista lo que recupera de la vista TextoEjercicio
            setState(() {});
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
