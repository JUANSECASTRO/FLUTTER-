import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  final int count;

  const MyTile({Key? key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('image/pic${count +5}.jpg'),
              alignment: Alignment.topLeft),
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey[400]
        ),
        child:Center(
          child: Column(
              children: [
                if(count == 0)...[
                  const Text('Moto Yamaha de alto cilindraje'
                  ),
                  const Text('Precio: 95.000.000'
                  ),
                  const Text('Color: Todos'
                  ),
                  const Text('Modelo: R1 2022'
                  ),
                  const Icon(
                    Icons.shopping_cart_sharp
                  )
                ]else if(count == 1)...[
                  const Text('Moto BMW de alto cilindraje'
                  ),
                  const Text('Precio: 157.990.000'
                  ),
                  const Text('Color: Todos'
                  ),
                  const Text('Modelo: BMW S 1000 RR'
                  ),
                  const Icon(
                      Icons.shopping_cart_sharp
                  )
                ]else if(count == 2)...[
                  const Text('Moto Yamaha de alto cilindraje '
                  ),
                  const Text('Precio: 40.000.000'
                  ),
                  const Text('Color: Todos'
                  ),
                  const Text('Modelo: YZF-R3 2019'
                  ),
                  const Icon(
                      Icons.shopping_cart_sharp
                  )
                ]else if(count == 3)...[
                  const Text('Moto BMW de alto cilindraje'
                  ),
                  const Text('Precio: 249.990.000'
                  ),
                  const Text('Color: Todos'
                  ),
                  const Text('Modelo: BMW M 1000 RR'
                  ),
                  const Icon(
                      Icons.shopping_cart_sharp
                  )
                ]else if(count == 4)...[
                  const Text('Moto Yamaha de alto cilindraje'
                  ),
                  const Text('Precio: 59.990.000'
                  ),
                  const Text('Color: Todos'
                  ),
                  const Text('Modelo: R6  '
                  ),
                  const Icon(
                      Icons.shopping_cart_sharp
                  )
                ]else if(count == 5)...[
                  const Text('Moto Ducati de alto cilindraje'
                  ),
                  const Text('Precio: 111.990.000'
                  ),
                  const Text('Color: Todos'
                  ),
                  const Text('Modelo: Streetfighter V4'
                  ),
                  const Icon(
                      Icons.shopping_cart_sharp
                  )
                ]else if(count == 6)...[
                  const Text('Moto KTM de alto cilindraje'
                  ),
                  const Text('Precio: 63.990.000'
                  ),
                  const Text('Color: Todos'
                  ),
                  const Text('Modelo: 350 EXC-F Factory 2022'
                  ),
                  const Icon(
                      Icons.shopping_cart_sharp
                  )
                ]else if(count == 7)...[
                  const Text('Moto KTM de alto cilindraje'
                  ),
                  const Text('Precio: 99.990.000'
                  ),
                  const Text('Color: Todos'
                  ),
                  const Text('Modelo: 1290 Super Duke R 2021'
                  ),
                  const Icon(
                      Icons.shopping_cart_sharp
                  )
                ]else if(count == 8)...[
                  const Text('Moto Honda de alto cilindraje'
                  ),
                  const Text('Precio: 80.990.000'
                  ),
                  const Text('Color: Todos'
                  ),
                  const Text('Modelo: CBR 1000 SP1 2022'
                  ),
                  const Icon(
                      Icons.shopping_cart_sharp
                  )
                ]else if(count == 9)...[
                  const Text('Moto BMW de alto cilindraje'
                  ),
                  const Text('Precio: 164.990.000'
                  ),
                  const Text('Color: Todos'
                  ),
                  const Text('Modelo: R 1250 GS Adventure'
                  ),
                  const Icon(
                      Icons.shopping_cart_sharp
                  )
                ]else if(count == 10)...[
                  const Text('Camioneta Ford Raptor'
                  ),
                  const Text('Precio: 290.990.000'
                  ),
                  const Text('Color: Todos'
                  ),
                  const Text('Modelo: Ford Raptor 2019'
                  ),
                  const Icon(
                      Icons.shopping_cart_sharp
                  )
                ]
              ]
          ),
        )
        )
      );
  }
}