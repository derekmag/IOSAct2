import 'package:flutter/material.dart';

void main() => runApp(MiFotoApp());

class MiFotoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mi Ejemplo",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PaginaInicio(),
    );
  }
}

class PaginaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bordes en la app de Magaña"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.black87,
                    width: 5,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Derek Magaña',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(image: NetworkImage("https://github.com/derekmag/Mis_Imagenes/blob/main/derek.jpg?raw=true"), alignment: Alignment.topCenter),
                  border: Border(
                    top: BorderSide(
                      color: Colors.black,
                      width: 5.0,
                    ),
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 5.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 100,
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 5.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black54,
                        width: 5.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
