import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatelessWidget{
  static const valueKey = ValueKey('ItemdetailScreen');

  final String product;

  const ItemDetailsScreen({Key? key, required this.product}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles del producto'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Center(
              child:Image.asset("image/$product.jpg")
          ),
          Column(
              children: [
                if(product =="Producto 1")...[
                  const Text('Moto Yamaha de alto cilindraje'
                  ),
                  const Text('Precio: 95.000.000'
                  ),
                  const Text('Color: Todos'
                  ),
                  const Text('Modelo: R1 2022'
                  ),
                ]else if(product =="Producto 2")...[
                  const Text('Moto BMW de alto cilindraje'
                  ),
                  const Text('Precio: 157.990.000'
                  ),
                  const Text('Color: Todos'
                  ),
                  const Text('Modelo: BMW S 1000 RR'
                  ),
                ]else if(product =="Producto 3")...[
                  const Text('Moto Yamaha de alto cilindraje '
                  ),
                  const Text('Precio: 40.000.000'
                  ),
                  const Text('Color: Todos'
                  ),
                  const Text('Modelo: YZF-R3 2019'
                  ),
                ]else if(product =="Producto 4")...[
                  const Text('Moto BMW de alto cilindraje'
                  ),
                  const Text('Precio: 249.990.000'
                  ),
                  const Text('Color: Todos'
                  ),
                  const Text('Modelo: BMW M 1000 RR'
                  ),
                ]else if(product =="Producto 5")...[
                  const Text('Moto Yamaha de alto cilindraje'
                  ),
                  const Text('Precio: 59.990.000'
                  ),
                  const Text('Color: Todos'
                  ),
                  const Text('Modelo: R6  '
                  ),
                ]else if(product =="Producto 6")...[
                  const Text('Moto Ducati de alto cilindraje'
                  ),
                  const Text('Precio: 111.990.000'
                  ),
                  const Text('Color: Todos'
                  ),
                  const Text('Modelo: Streetfighter V4'
                  ),
                ]else if(product =="Producto 7")...[
                  const Text('Moto KTM de alto cilindraje'
                  ),
                  const Text('Precio: 63.990.000'
                  ),
                  const Text('Color: Todos'
                  ),
                  const Text('Modelo: 350 EXC-F Factory 2022'
                  ),
                ]else if(product =="Producto 8")...[
                  const Text('Moto KTM de alto cilindraje'
                  ),
                  const Text('Precio: 99.990.000'
                  ),
                  const Text('Color: Todos'
                  ),
                  const Text('Modelo: 1290 Super Duke R 2021'
                  ),
                ]else if(product =="Producto 9")...[
                  const Text('Moto Honda de alto cilindraje'
                  ),
                  const Text('Precio: 80.990.000'
                  ),
                  const Text('Color: Todos'
                  ),
                  const Text('Modelo: CBR 1000 SP1 2022'
                  ),
                ]else if(product =="Producto 10")...[
                  const Text('Moto BMW de alto cilindraje'
                  ),
                  const Text('Precio: 164.990.000'
                  ),
                  const Text('Color: Todos'
                  ),
                  const Text('Modelo: R 1250 GS Adventure'
                  ),
                ]
              ]
          ),
        ],
      ),
    );
  }
}