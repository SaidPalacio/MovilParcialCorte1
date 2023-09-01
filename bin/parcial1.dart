import 'dart:ffi';

import 'package:parcial1/parcial1.dart' as parcial1;

//Parcial Movil primer corte Said Palacio Gutierrez

/*Se desea realizar los siguientes criterios de aceptación de 1 requerimiento para el módulo de productos:

a.Se debe tener un objeto de ventas donde se anexará cada producto que sea seleccionado

b.Cada producto que estén 15 días a vencer se le otorgará un 15% de descuento

c.Mostrar el total que se debe pagar*/

void main(List<String> arguments) {
  Producto producto1 = Producto("Producto 1", 100.0, DateTime.now().add(Duration(days: 15))); 
  Producto producto2 = Producto("Producto 2", 50.0, null); 

  Venta venta = Venta();
  venta.agregarProducto(producto1);
  venta.agregarProducto(producto2);

  double total = venta.calcularTotal();
  
  
  print("Total a pagar: \$${total.toStringAsFixed(2)}");




  print('Texto: ${parcial1.calculate()}');
}

class Producto{
  String nombre;
  double precio;
  DateTime fechaVen;

  Producto(this.nombre, this.precio, this.fechaVen);
}

class Venta {
  List<Producto> productos = [];

  void agregarProducto(Producto producto) {
    productos.add(producto);
    
  }
  double calcularTotal() {
    double total = 0;

    for (var producto in productos) {
      if (producto.fechaVen != null) {
        DateTime fechaAct = DateTime.now();
        int diasHastaVencimiento = producto.fechaVen.difference(fechaAct).inDays;
        if (diasHastaVencimiento <= 15) {
          total += producto.precio * 0.85; 
        } else {
          total += producto.precio;
        }
      } else {
        total += producto.precio;
      }
    }

    return total;
  }
}