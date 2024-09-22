import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';
import 'package:quickalert/quickalert.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tarefa App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE2E2E2),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
            child: Obx(() => Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: DropdownButton<String>(
                    value: controller.selectedOption.value,
                    isExpanded: true,
                    underline: SizedBox(),
                    items: <String>['Dia', 'Semana']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0.9, horizontal: 16.0),
                          child: Text(value, style: TextStyle(fontSize: 20)),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        controller.changeOption(newValue);
                        QuickAlert.show(
                          context: context,
                          type: QuickAlertType.info,
                          text: 'Você selecionou: $newValue',
                        );
                      }
                    },
                  ),
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 35),
              Text(
                'AGOSTO',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(width: 20), // Espaço entre o texto e a linha
              Container(
                width: 190, // Defina a largura desejada para a linha
                child: Divider(
                  color: Colors.black, // Cor da linha
                  thickness: 1, // Espessura da linha
                  height: 10,
                ),
              ),
            ],
          ),
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: controller.tarefas.keys.length,
                itemBuilder: (context, index) {
                  String dia = controller.tarefas.keys.elementAt(index);
                  List<Map<String, String>> tarefasDoDia =
                      controller.tarefas[dia] ?? [];

                  return Card(
                    margin: EdgeInsets.all(20.0),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Stack(
                        children: [
                          // O bloco principal
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dia $dia',
                                style: TextStyle(
                                  fontFamily: 'Rubik Mono One',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                  height: 29.71 / 24,
                                ),
                              ),
                              SizedBox(height: 8.0),
                              ...tarefasDoDia.asMap().entries.map((entry) {
                                int idx = entry.key;
                                Map<String, String> tarefa = entry.value;
                                return Column(
                                  children: [
                                    ListTile(
                                      title: Text(tarefa['tarefa'] ?? ''),
                                      subtitle: Text(
                                          'Responsável: ${tarefa['responsável'] ?? ''}'),
                                    ),
                                    if (idx < tarefasDoDia.length - 1)
                                      Divider(
                                          color: Colors.black), // Linha preta
                                  ],
                                );
                              }).toList(),
                            ],
                          ),
                          // A saliência (orelha)
                          Positioned(
                            top: -10,
                            left: -20,
                            child: CustomPaint(
                              size: Size(20, 20), // Tamanho do triângulo
                              painter: TrianglePainter(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }),
          ),
        ],
      ),
      floatingActionButton: Container(
        width: 55, // Largura do botão
        height: 55, // Altura do botão
        decoration: BoxDecoration(
          color: Colors.white, // Fundo branco
          borderRadius: BorderRadius.circular(15), // Bordas arredondadas
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 5,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: IconButton(
          icon: Container(
            width: 70,
            height: 100,
            child: Icon(
              Icons.add,
              size: 40,
              color: Colors.black,
            ),
          ),
          onPressed: () {
            Get.to(AddTaskPage());
          },
        ),
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.black // Cor da saliência
      ..style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(0, size.height); // Ponto inferior esquerdo
    path.lineTo(size.width, size.height); // Ponto inferior direito
    path.lineTo(0, 0); // Ponto superior esquerdo
    path.close(); // Fecha o caminho

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class AddTaskPage extends StatelessWidget {
  final HomeController controller = Get.find<HomeController>();

  final TextEditingController tarefaController = TextEditingController();
  final TextEditingController responsavelController = TextEditingController();
  String selectedDia = '01'; // Valor padrão

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE2E2E2),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButton<String>(
              value: selectedDia,
              items: controller.tarefas.keys.map((String dia) {
                return DropdownMenuItem<String>(
                  value: dia,
                  child: Text('Dia $dia'),
                );
              }).toList(),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  selectedDia = newValue;
                }
              },
            ),
            TextField(
              controller: tarefaController,
              decoration: InputDecoration(labelText: 'Tarefa'),
            ),
            TextField(
              controller: responsavelController,
              decoration: InputDecoration(labelText: 'Responsável'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String novaTarefa = tarefaController.text;
                String responsavel = responsavelController.text;

                if (novaTarefa.isNotEmpty && responsavel.isNotEmpty) {
                  // Adiciona a nova tarefa ao Map
                  controller.addTask(selectedDia, novaTarefa, responsavel);

                  // Volta para a página anterior
                  Get.back();
                } else {
                  QuickAlert.show(
                    context: context,
                    type: QuickAlertType.warning,
                    text: 'Por favor, preencha todos os campos.',
                  );
                }
              },
              child: Text('Adicionar'),
            ),
          ],
        ),
      ),
    );
  }
}
