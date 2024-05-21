import 'package:flutter/material.dart';
import 'package:gymfit/models/modelExercise.dart';
import 'package:gymfit/models/modelFeeling.dart';

class ExerciseScreen extends StatelessWidget {
  ExerciseScreen({super.key});

  final ModelExercise modelExercise = ModelExercise(
    id: '1',
    name: 'Puxada Alta Cronada',
    training: 'Treino A',
    description:
        'Segura com as duas mãos a barra de puxada alta, com as palmas das mãos voltadas para frente e os braços estendidos. Puxe a barra em direção ao peito, mantendo os cotovelos para baixo e para trás. Volte à posição inicial e repita o movimento.',
  );

  final List<ModelFeeling> feelingsLists = [
    ModelFeeling(
        id: '1',
        name: 'Felipe',
        feeling: 'Senti bastante ativação hoje!',
        date: '12-10-2021'),
    ModelFeeling(
        id: '2',
        name: 'João',
        feeling: 'Senti bastante ofegante hoje!',
        date: '12-10-2021'),
    ModelFeeling(
        id: '3',
        name: 'Maria',
        feeling: 'Senti de boa hoje!',
        date: '12-10-2021'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 54, 3, 91),
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 54, 3, 91),
          title: Text(
            '${modelExercise.name} - ${modelExercise.training}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Adicionar exercício');
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 227, 187, 255),
          borderRadius: BorderRadius.circular(16.0),
        
        ),
        child: 
        ListView(
          //coloca o conteúdo no lado esquerdo da tela
          children: [
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Enviar treino'),
                  
                  ),
                  ElevatedButton(
                    onPressed: (){}, 
                    child: const Text('Tirar foto'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Como Fazer?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color.fromARGB(255, 105, 0, 181),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              modelExercise.description,
              style: const TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 105, 0, 181),
              ),
            ),

            //Divider
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(color: Color.fromARGB(255, 105, 0, 181)),
            ),
            const Text(
              'Como estou me sentido?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color.fromARGB(255, 105, 0, 181),
              ),
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(feelingsLists.length, (i) {
                ModelFeeling feelingsNow = feelingsLists[i];
                
                return ListTile(
                  dense: true,
                  contentPadding: const EdgeInsets.all(0),
                  title: Text(
                    feelingsNow.feeling,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 105, 0, 181),
                    ),
                  ),
                  subtitle: Text(
                    feelingsNow.date,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 105, 0, 181),
                    ),
                  ),
                  leading:const Icon(Icons.double_arrow),
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.delete,
                      color: Color.fromARGB(255, 105, 0, 181), 
                    ),
                    onPressed: () {
                      print("Deletar Sentimento");
                    },
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
