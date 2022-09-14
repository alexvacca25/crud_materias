import 'package:crud_materias/domain/modelos/materias.dart';
import 'package:flutter/material.dart';

class AdicionarMaterias extends StatefulWidget {
  final titulo;
  const AdicionarMaterias({Key? key, this.titulo}) : super(key: key);

  @override
  State<AdicionarMaterias> createState() => _AdicionarMateriasState();
}

class _AdicionarMateriasState extends State<AdicionarMaterias> {
  final List<Materia> _addmateria = [];
  TextEditingController controlnombre = TextEditingController();
  TextEditingController controlprofesor = TextEditingController();
  TextEditingController controlnota = TextEditingController();
  TextEditingController controlcreditos = TextEditingController();
  @override
  void initState() {
    controlnombre.text = widget.titulo;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titulo),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: controlnombre,
              decoration: InputDecoration(
                  filled: true,
                  labelText: 'Nombres',
                  // suffix: Icon(Icons.access_alarm),
                  suffix: GestureDetector(
                    child: const Icon(Icons.close),
                    onTap: () {
                      controlnombre.clear();
                    },
                  )
                  //probar suffix
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: controlprofesor,
              decoration: InputDecoration(
                  filled: true,
                  labelText: 'Profesor',
                  // suffix: Icon(Icons.access_alarm),
                  suffix: GestureDetector(
                    child: const Icon(Icons.close),
                    onTap: () {
                      controlnombre.clear();
                    },
                  )
                  //probar suffix
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: controlnota,
              decoration: InputDecoration(
                  filled: true,
                  labelText: 'Nota',
                  // suffix: Icon(Icons.access_alarm),
                  suffix: GestureDetector(
                    child: const Icon(Icons.close),
                    onTap: () {
                      controlnombre.clear();
                    },
                  )
                  //probar suffix
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: controlcreditos,
              decoration: InputDecoration(
                  filled: true,
                  labelText: 'Creditos',
                  // suffix: Icon(Icons.access_alarm),
                  suffix: GestureDetector(
                    child: const Icon(Icons.close),
                    onTap: () {
                      controlnombre.clear();
                    },
                  )
                  //probar suffix
                  ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                _addmateria.add(Materia(
                    nombre: controlnombre.text,
                    profesor: controlprofesor.text,
                    nota: controlnota.text,
                    creditos: controlcreditos.text));

                Navigator.pop(context, _addmateria);
              },
              child: const Text('Adicionar Materia'))
        ],
      ),
    );
  }
}
