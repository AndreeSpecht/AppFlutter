import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedOption = 'Dia'.obs; // Opção selecionada

  void changeOption(String value) {
    selectedOption.value = value;
  }

  // Mapa de tarefas
  var tarefas = {
    '01': [
      {'tarefa': 'Lavar louça', 'responsável': 'João'},
      {'tarefa': 'Estudar Flutter', 'responsável': 'Maria'},
    ],
    '02': [
      {'tarefa': 'Fazer compras', 'responsável': 'Pedro'},
      {'tarefa': 'Limpar a casa', 'responsável': 'Ana'},
    ],
  }.obs; // Usando .obs para tornar o mapa observável

  void addTask(String dia, String tarefa, String responsavel) {
    tarefas[dia]?.add({
      'tarefa': tarefa,
      'responsável': responsavel,
    });
  }
}
