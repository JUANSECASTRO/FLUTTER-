import 'package:flutter/material.dart';
import 'lista_productos.dart';

class Carrito extends StatefulWidget {
  final List<ListaProductos> _cart;

  const Carrito(this._cart, {super.key});

  @override
  _CarritoState createState() => _CarritoState(this._cart);
}

class _CarritoState extends State<Carrito> {
  _CarritoState(this._cart);

  List<ListaProductos> _cart;

  var cantidad = 0;
  var cantidad1 = 0;
  var cantidad2 = 0;
  var cantidad3 = 0;
  var cantidad4 = 0;
  var cantidad5 = 0;
  var cantidad6 = 0;
  var cantidad7 = 0;
  var cantidad8 = 0;
  var cantidad9 = 0;
  var cantidad10 = 0;

  var val = 0;
  var val1 = 0;
  var val2 = 0;
  var val3 = 0;
  var val4 = 0;
  var val5 = 0;
  var val6 = 0;
  var val7 = 0;
  var val8 = 0;
  var val9 = 0;
  var val10 = 0;
  var subtotal = 0;

  var sumaruno = 0;
  var sumaruno1 = 0;
  var sumaruno2 = 0;
  var sumaruno3 = 0;
  var sumaruno4 = 0;
  var sumaruno5 = 0;
  var sumaruno6 = 0;
  var sumaruno7 = 0;
  var sumaruno8 = 0;
  var sumaruno9 = 0;

  var iva = 0;
  var iva1 = 0;
  var iva2 = 0;
  var iva3 = 0;
  var iva4 = 0;
  var iva5 = 0;
  var iva6 = 0;
  var iva7 = 0;
  var iva8 = 0;
  var iva9 = 0;

  var total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          'Detalles de tu nuevo compañero',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_sharp),
          onPressed: () {
            Navigator.of(context).pop();
            setState(() {
              _cart.length;
            });
          },
          color: Colors.white,
        ),
      ),
      body: GestureDetector(
          child: SingleChildScrollView(
              child: Column(
        children: <Widget>[
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _cart.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 5,
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 150,
                          height: 150,
                          child: Image(
                            image:
                                NetworkImage(_cart[index].imageURL.toString()),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Expanded(
                            child: Container(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Center(
                                  child: Text(
                                    _cart[index].nombre.toString(),
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                        Text(
                          _cart[index].precio.toString(),
                          style: const TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        if (index == 0) ...[
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: (const Icon(Icons.remove)),
                                onPressed: () {
                                  setState(() {
                                    restar();
                                  });
                                },
                              ),
                              Center(child: Text("$cantidad")),
                              IconButton(
                                icon: (const Icon(Icons.add)),
                                onPressed: () {
                                  setState(() {
                                    sumar();
                                  });
                                },
                              ),
                            ],
                          )
                        ] else if (index == 1) ...[
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: (const Icon(Icons.remove)),
                                onPressed: () {
                                  setState(() {
                                    restar1();
                                  });
                                },
                              ),
                              Center(child: Text("$cantidad1")),
                              IconButton(
                                icon: (const Icon(Icons.add)),
                                onPressed: () {
                                  setState(() {
                                    sumar1();
                                  });
                                },
                              ),
                            ],
                          )
                        ] else if (index == 2) ...[
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: (const Icon(Icons.remove)),
                                onPressed: () {
                                  setState(() {
                                    restar2();
                                  });
                                },
                              ),
                              Center(child: Text("$cantidad2")),
                              IconButton(
                                icon: (const Icon(Icons.add)),
                                onPressed: () {
                                  setState(() {
                                    sumar2();
                                  });
                                },
                              ),
                            ],
                          )
                        ] else if (index == 3) ...[
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: (const Icon(Icons.remove)),
                                onPressed: () {
                                  setState(() {
                                    restar3();
                                  });
                                },
                              ),
                              Center(child: Text("$cantidad3")),
                              IconButton(
                                icon: (const Icon(Icons.add)),
                                onPressed: () {
                                  setState(() {
                                    sumar3();
                                  });
                                },
                              ),
                            ],
                          )
                        ] else if (index == 4) ...[
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: (const Icon(Icons.remove)),
                                onPressed: () {
                                  setState(() {
                                    restar4();
                                  });
                                },
                              ),
                              Center(child: Text("$cantidad4")),
                              IconButton(
                                icon: (const Icon(Icons.add)),
                                onPressed: () {
                                  setState(() {
                                    sumar4();
                                  });
                                },
                              ),
                            ],
                          )
                        ] else if (index == 5) ...[
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: (const Icon(Icons.remove)),
                                onPressed: () {
                                  setState(() {
                                    restar5();
                                  });
                                },
                              ),
                              Center(child: Text("$cantidad5")),
                              IconButton(
                                icon: (const Icon(Icons.add)),
                                onPressed: () {
                                  setState(() {
                                    sumar5();
                                  });
                                },
                              ),
                            ],
                          )
                        ] else if (index == 6) ...[
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: (const Icon(Icons.remove)),
                                onPressed: () {
                                  setState(() {
                                    restar6();
                                  });
                                },
                              ),
                              Center(child: Text("$cantidad6")),
                              IconButton(
                                icon: (const Icon(Icons.add)),
                                onPressed: () {
                                  setState(() {
                                    sumar6();
                                  });
                                },
                              ),
                            ],
                          )
                        ] else if (index == 7) ...[
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: (const Icon(Icons.remove)),
                                onPressed: () {
                                  setState(() {
                                    restar7();
                                  });
                                },
                              ),
                              Center(child: Text("$cantidad7")),
                              IconButton(
                                icon: (const Icon(Icons.add)),
                                onPressed: () {
                                  setState(() {
                                    sumar7();
                                  });
                                },
                              ),
                            ],
                          )
                        ] else if (index == 8) ...[
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: (const Icon(Icons.remove)),
                                onPressed: () {
                                  setState(() {
                                    restar8();
                                  });
                                },
                              ),
                              Center(child: Text("$cantidad8")),
                              IconButton(
                                icon: (const Icon(Icons.add)),
                                onPressed: () {
                                  setState(() {
                                    sumar8();
                                  });
                                },
                              ),
                            ],
                          )
                        ] else if (index == 9) ...[
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: (const Icon(Icons.remove)),
                                onPressed: () {
                                  setState(() {
                                    restar9();
                                  });
                                },
                              ),
                              Center(child: Text("$cantidad9")),
                              IconButton(
                                icon: (const Icon(Icons.add)),
                                onPressed: () {
                                  setState(() {
                                    sumar9();
                                  });
                                },
                              ),
                            ],
                          )
                        ]
                      ],
                    )
                  ],
                ),
              );
            },
          ),
          Container(
            color: Colors.indigo,
            height: 50,
            width: 500,
            child: Column(
              children: [
                Text('Subtotal $subtotal'),
                Text('Iva $iva'),
                Text('Total $total')
              ],
            ),
          )
        ],
      ))),
    );
  }

  void sumar() {
    setState(() {
      val = val + 1;
      cantidad = cantidad + 1;
      subtotal = subtotal + 95000000;
      sumaruno = sumaruno + 95000000;
      iva = (sumaruno * 19 / 100) as int;
      total = (sumaruno + iva);
    });
  }

  void restar() {
    setState(() {
      if (val != 0) {
        val = val - 1;
        cantidad = cantidad - 1;
        subtotal = subtotal - 95000000;
        sumaruno = sumaruno - 95000000;
        iva = (sumaruno * 19 / 100) as int;
        total = (sumaruno + iva);
      }
    });
  }

  void sumar1() {
    setState(() {
      val1 = val1 + 1;
      cantidad1 = cantidad1 + 1;
      subtotal = subtotal + 157990000;
      sumaruno1 = sumaruno1 + 157990000;
      iva = (sumaruno1 * 19 / 100) as int;
      total = (sumaruno1 + iva);
    });
  }

  void restar1() {
    setState(() {
      if (val1 != 0) {
        val1 = val1 - 1;
        cantidad1 = cantidad1 - 1;
        subtotal = subtotal - 157990000;
        sumaruno1 = sumaruno1 - 157990000;
        iva = (sumaruno1 * 19 / 100) as int;
        total = (sumaruno1 + iva);
      }
    });
  }

  void sumar2() {
    setState(() {
      val2 = val2 + 1;
      cantidad2 = cantidad2 + 1;
      subtotal = subtotal + 40000000;
      sumaruno2 = sumaruno2 + 40000000;
      iva = (sumaruno2 * 19 / 100) as int;
      total = (sumaruno2 + iva);
    });
  }

  void restar2() {
    setState(() {
      if (val2 != 0) {
        val2 = val2 - 1;
        cantidad2 = cantidad2 - 1;
        subtotal = subtotal - 40000000;
        sumaruno2 = sumaruno2 - 40000000;
        iva = (sumaruno2 * 19 / 100) as int;
        total = (sumaruno2 + iva);
      }
    });
  }

  void sumar3() {
    setState(() {
      val3 = val3 + 1;
      cantidad3 = cantidad3 + 1;
      subtotal = subtotal + 249990000;
      sumaruno3 = sumaruno3 + 249990000;
      iva = (sumaruno3 * 19 / 100) as int;
      total = (sumaruno3 + iva);
    });
  }

  void restar3() {
    setState(() {
      if (val3 != 0) {
        val3 = val3 - 1;
        cantidad3 = cantidad3 - 1;
        subtotal = subtotal - 249990000;
        sumaruno3 = sumaruno3 - 249990000;
        iva = (sumaruno3 * 19 / 100) as int;
        total = (sumaruno3 + iva);
      }
    });
  }

  void sumar4() {
    setState(() {
      val4 = val4 + 1;
      cantidad4 = cantidad4 + 1;
      subtotal = subtotal + 59990000;
      sumaruno4 = sumaruno4 + 59990000;
      iva = (sumaruno4 * 19 / 100) as int;
      total = (sumaruno4 + iva);
    });
  }

  void restar4() {
    setState(() {
      if (val4 != 0) {
        val4 = val4 - 1;
        cantidad4 = cantidad4 - 1;
        subtotal = subtotal - 59990000;
        sumaruno4 = sumaruno4 - 59990000;
        iva = (sumaruno4 * 19 / 100) as int;
        total = (sumaruno4 + iva);
      }
    });
  }

  void sumar5() {
    setState(() {
      val5 = val5 + 1;
      cantidad5 = cantidad5 + 1;
      subtotal = subtotal + 111990000;
      sumaruno5 = sumaruno5 + 111990000;
      iva = (sumaruno5 * 19 / 100) as int;
      total = (sumaruno5 + iva);
    });
  }

  void restar5() {
    setState(() {
      if (val5 != 0) {
        val5 = val5 - 1;
        cantidad5 = cantidad5 - 1;
        subtotal = subtotal - 111990000;
        sumaruno5 = sumaruno5 - 111990000;
        iva = (sumaruno5 * 19 / 100) as int;
        total = (sumaruno5 + iva);
      }
    });
  }

  void sumar6() {
    setState(() {
      val6 = val6 + 1;
      cantidad6 = cantidad6 + 1;
      subtotal = subtotal + 63990000;
      sumaruno6 = sumaruno6 + 63990000;
      iva = (sumaruno6 * 19 / 100) as int;
      total = (sumaruno6 + iva);
    });
  }

  void restar6() {
    setState(() {
      if (val6 != 0) {
        val6 = val6 - 1;
        cantidad6 = cantidad6 - 1;
        subtotal = subtotal - 63990000;
        sumaruno6 = sumaruno6 - 63990000;
        iva = (sumaruno6 * 19 / 100) as int;
        total = (sumaruno6 + iva);
      }
    });
  }

  void sumar7() {
    setState(() {
      val7 = val7 + 1;
      cantidad7 = cantidad7 + 1;
      subtotal = subtotal + 99990000;
      sumaruno7 = sumaruno7 + 99990000;
      iva = (sumaruno7 * 19 / 100) as int;
      total = (sumaruno7 + iva);
    });
  }

  void restar7() {
    setState(() {
      if (val7 != 0) {
        val7 = val7 - 1;
        cantidad7 = cantidad7 - 1;
        subtotal = subtotal - 99990000;
        sumaruno7 = sumaruno7 - 99990000;
        iva = (sumaruno7 * 19 / 100) as int;
        total = (sumaruno7 + iva);
      }
    });
  }

  void sumar8() {
    setState(() {
      val8 = val8 + 1;
      cantidad8 = cantidad8 + 1;
      subtotal = subtotal + 80990000;
      sumaruno8 = sumaruno8 + 80990000;
      iva = (sumaruno8 * 19 / 100) as int;
      total = (sumaruno8 + iva);
    });
  }

  void restar8() {
    setState(() {
      if (val8 != 0) {
        val8 = val8 - 1;
        cantidad8 = cantidad8 - 1;
        subtotal = subtotal - 80990000;
        sumaruno8 = sumaruno8 - 80990000;
        iva = (sumaruno8 * 19 / 100) as int;
        total = (sumaruno8 + iva);
      }
    });
  }

  void sumar9() {
    setState(() {
      val9 = val9 + 1;
      cantidad9 = cantidad9 + 1;
      subtotal = subtotal + 164990000;
      sumaruno9 = sumaruno9 + 164990000;
      iva = (sumaruno9 * 19 / 100) as int;
      total = (sumaruno9 + iva);
    });
  }

  void restar9() {
    setState(() {
      if (val9 != 0) {
        val9 = val9 - 1;
        cantidad9 = cantidad9 - 1;
        subtotal = subtotal - 164990000;
        sumaruno9 = sumaruno9 - 164990000;
        iva = (sumaruno9 * 19 / 100) as int;
        total = (sumaruno9 + iva);
      }
    });
  }
}
