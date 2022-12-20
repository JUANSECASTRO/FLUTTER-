import 'package:flutter/material.dart';
import 'shopping_cart.dart' show Carrito;

import 'lista_productos.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ListaProductos> _productosModel = <ListaProductos>[];

  final List<ListaProductos> _listaCarro = <ListaProductos>[];

  @override
  void initState() {
    super.initState();
    _productos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[100],
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('productos'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16.0, top: 8.0),
              child: GestureDetector(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    const Icon(
                      Icons.shopping_cart,
                      size: 38,
                    ),
                    if (_listaCarro.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: CircleAvatar(
                          radius: 8.0,
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          child: Text(
                            _listaCarro.length.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12.0),
                          ),
                        ),
                      )
                  ],
                ),
                onTap: () {
                  if (_listaCarro.isNotEmpty) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Carrito(_listaCarro),
                      ),
                    );
                  }
                },
              ),
            )
          ],
        ),
        body: ListView.builder(
          itemCount: _productosModel.length,
          itemBuilder: (context, index) {
            var item = _productosModel[index];
            return Card(
              elevation: 5,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Container(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      child: Image(
                        image: NetworkImage(
                            _productosModel[index].imageURL.toString()),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Text(
                              _productosModel[index].nombre.toString(),
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child:
                                Text(_productosModel[index].precio.toString()),
                          ),
                        ],
                      ),
                    )),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            if (!_listaCarro.contains(item)) {
                              _listaCarro.add(item);
                            } else {
                              _listaCarro.remove(item);
                            }
                          });
                        },
                        icon: (!_listaCarro.contains(item))
                            ? const Icon(Icons.shopping_cart)
                            : const Icon(
                                Icons.shopping_cart_checkout,
                                color: Colors.green,
                              ))
                  ],
                ),
              ),
            );
          },
        ));
  }

  void _productos() {
    var list = <ListaProductos>[
      ListaProductos(
          nombre: 'Yamaha R1 2022',
          precio: 95000000,
          imageURL: 'img/pic5.jpg',
          id: 1,
          isAdd: false),
      ListaProductos(
          nombre: 'BMW S 1000 RR',
          precio: 157990000,
          imageURL: 'img/pic6.jpg',
          id: 2,
          isAdd: false),
      ListaProductos(
          nombre: 'YZF-R3 2019',
          precio: 40000000,
          imageURL: 'img/pic7.jpg',
          id: 3,
          isAdd: false),
      ListaProductos(
          nombre: 'BMW M 1000 RR',
          precio: 249990000,
          imageURL: 'img/pic8.jpg',
          id: 4,
          isAdd: false),
      ListaProductos(
          nombre: 'Yamaha R6',
          precio: 59990000,
          imageURL: 'img/pic9.jpg',
          id: 5,
          isAdd: false),
      ListaProductos(
          nombre: 'Ducati Streetfighter V4',
          precio: 111990000,
          imageURL: 'img/pic10.jpg',
          id: 6,
          isAdd: false),
      ListaProductos(
          nombre: 'KTM 350 EXC-F Factory 2022 ',
          precio: 63990000,
          imageURL: 'img/pic11.jpg',
          id: 7,
          isAdd: false),
      ListaProductos(
          nombre: 'KTM 1290 Super Duke R 2021',
          precio: 99990000,
          imageURL: 'img/pic12.jpg',
          id: 8,
          isAdd: false),
      ListaProductos(
          nombre: 'Honda CBR 1000 SP1 2022 ',
          precio: 80990000,
          imageURL: 'img/pic13.jpg',
          id: 9,
          isAdd: false),
      ListaProductos(
          nombre: 'BMW R 1250 GS Adventure',
          precio: 164990000,
          imageURL: 'img/pic14.jpg',
          id: 10,
          isAdd: false),
    ];

    setState(() {
      _productosModel = list;
    });
  }
}
