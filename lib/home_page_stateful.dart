import 'package:flutter/material.dart';

class HomePageStateFul extends StatefulWidget {
  HomePageStateFul() {
    print('Rodando o construtor do HomePageStateFul');
  }

  @override
  State<StatefulWidget> createState() {
    print('Rodando o createState do HomePageStateFul');
    return _HomePageStateFulState();
  }
}

class _HomePageStateFulState extends State<HomePageStateFul> {
  _HomePageStateFulState() {
    print('Rodando o construtor do _HomePageStateFulState');
  }

  @override
  void initState() {
    print('Rodando o initState do _HomePageStateFulState');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('Rodando o didChangeDependencies do _HomePageStateFulState');
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    print('Rodando o dispose do _HomePageStateFulState');
    super.dispose();
  }

  String texto = "Texto inicial";

  @override
  Widget build(BuildContext context) {
    print('Rodando o build do HomePageStateFul');
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
      ),
      drawer: Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(texto),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    texto == "Texto alterado"
                        ? texto = "Texto inicial"
                        : texto = "Texto alterado";
                  });
                },
                child: Text('Button')),
          ],
        ),
      ),
    );
  }
}
