import 'package:flutter/material.dart';
import 'package:myapp/sharehome.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Breathe"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.network(
                'https://cdn.pixabay.com/photo/2022/08/07/20/28/night-7371349_1280.jpg',
                width: 300,
                height: 300,
              ),
              const Text(
                "Um sono da noite",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Não há nada mais contagiante do que a alegria de um cachorrinho. Com seus rabinhos abanando, olhos brilhantes e uma energia inesgotável, eles transformam qualquer ambiente em um lugar mais feliz. Seja correndo atrás de uma bola, brincando com uma folha caída ou apenas pulando de felicidade ao ver seus donos, os cachorrinhos são mestres em espalhar sorrisos.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const Text(
                  "Cadastre-se",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sharehome()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const Text(
                  "Tela de formulario",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Desde cedo, os cachorrinhos demonstram uma lealdade impressionante. Eles seguem seus donos por todos os lados, atentos a cada movimento, prontos para oferecer companhia e conforto. Mesmo quando ainda estão aprendendo sobre o mundo ao seu redor, essa lealdade natural é uma característica marcante, que se fortalece à medida que crescem e se tornam verdadeiros amigos para todas as horas.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Para um cachorrinho, o mundo é um lugar cheio de maravilhas e descobertas. Cada canto da casa, cada som novo, cada pessoa diferente é uma oportunidade para aprender e explorar. É divertido observar como eles investigam tudo com o focinho, testando o que é seguro, o que cheira bem, e o que faz barulho. Essas pequenas aventuras diárias são parte do que torna a convivência com um cachorrinho tão encantadora e divertida.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Texto em Negrito e Sublinhado",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Texto em Itálico e Azul",
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Texto com Tamanho Aumentado",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}
