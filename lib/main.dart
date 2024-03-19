import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Github Perfil'),
        ),
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/perfil.jpg'),
                ),
                accountName: Text(
                  'Jose da Silva Vieira',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                accountEmail: Text(
                  'jsilvavieira@github.com',
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.person),
                    const SizedBox(
                      width: 40,
                    ),
                    Text('Perfil'),
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.book),
                    const SizedBox(
                      width: 40,
                    ),
                    Text('Repositórios'),
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.star),
                    const SizedBox(
                      width: 40,
                    ),
                    Text('Favoritos'),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/perfil.jpg'),
            ),
            Text(
              'José da Silva Vieira',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              'jsvieira',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.map,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text('Brazil, São Paulo, SP')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.email,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text('jsilvavieira@github.com')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.people,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '32',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text('seguidores'),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '45',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text('seguindo'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
