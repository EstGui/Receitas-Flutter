import 'package:flutter/material.dart';
import 'receitas.dart';
import 'receita_detalhe.dart';

void main() {
  runApp(const ReceitaApp());
}

class ReceitaApp extends StatelessWidget {
  const ReceitaApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp (
      title: 'Receitas',
      theme: theme.copyWith(
      colorScheme: theme.colorScheme.copyWith(
        primary: Colors.grey,
        secondary: Colors.black,
      )
      ),
      home: const MyHomePage(title: 'Receitas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: SafeArea (
        child: ListView.builder (
          itemCount: Receita.receitas.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ReceitaDetalhe(recipe: Receita.receitas[index]);
                  })
                );
              },
              child: buildRecipeCard(Receita.receitas[index]),
            );
          }
        )
      ),
    );
  }

  Widget buildRecipeCard(Receita receita) {
    return Card(
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(receita.imageUrl), width: 300),
          Text(receita.descricao)
        ]
      ),
    );
  }
}
