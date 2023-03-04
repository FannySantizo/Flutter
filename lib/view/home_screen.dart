import 'package:flutter/material.dart';
import 'home.dart';
import 'store.dart';
import 'settings.dart';
import 'catalogue.dart';
import 'orders.dart';

class Homes extends StatefulWidget {
  const Homes({super.key});

  @override
  HomesState createState() => HomesState();
}

class HomesState extends State<Homes> {
  int _selectDrawerItem = 0;
  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return const Home();
      case 1:
        return const Catalogue();
      case 2:
        return const Stores();
      case 3:
        return const Orders();
      case 4:
        return const Settings();
      //case 5:
      //return Sign_out();
    }
  }

  _onSelectItem(int pos) {
    Navigator.of(context).pop();
    setState(() {
      _selectDrawerItem = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    //final urlUsuario = 'assets/usuario.png';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Servicios y Electromecánicos'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text('Fani Santizo'),
              accountEmail: Text('yudithsantizo@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(
                  'J',
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              title: const Text('Inicio'),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.of(context).pop();
                _onSelectItem(0);
              },
            ),
            ListTile(
              title: const Text('Catalogo'),
              leading: const Icon(Icons.view_list),
              onTap: () {
                Navigator.of(context).pop();
                _onSelectItem(1);
              },
            ),
            ListTile(
              title: const Text('Ubicación'),
              leading: const Icon(Icons.location_on),
              onTap: () {
                _onSelectItem(2);
              },
            ),
            ListTile(
              title: const Text('Pedidos'),
              leading: const Icon(Icons.front_loader),
              onTap: () {
                _onSelectItem(3);
              },
            ),
            ListTile(
              title: const Text('Configuración'),
              leading: const Icon(Icons.settings),
              onTap: () {
                _onSelectItem(4);
              },
            ),
            // Expanded(child: ListTile()),
            ListTile(
              title: const Text(
                'Cerrar Sesión',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              leading: const Icon(Icons.output),
              onTap: () {},
            )
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectDrawerItem),
    );
  }
}
