import 'package:parcial1/parcial1.dart' as parcial1;


/*Se desea realizar los siguientes criterios de aceptación de 1 requerimiento para el módulo de productos:

a.Se debe tener un objeto de ventas donde se anexará cada producto que sea seleccionado

b.Cada producto que estén 15 días a vencer se le otorgará un 15% de descuento

c.Mostrar el total que se debe pagar*/

void main(List<String> arguments) {
  print('Hello world: ${parcial1.calculate()}!');
}

class Producto{
  String nombre;
  double precio;
  DateTime fechaVencimineto;

  Producto(this.nombre, this.precio, this.fechaVencimineto);
}