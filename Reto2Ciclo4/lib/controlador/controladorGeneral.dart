import 'package:get/get.dart';
import 'package:reto2/clases/productos.dart';

class controladorGeneral extends GetxController {
  final _posicionPagina = 0.obs;
  final pro = <productos>[].obs;
  @override
  void onInit() {
    pro.add(productos(
        1,
        "Baggage Dark",
        "https://cuerosvelezco.vteximg.com.br/arquivos/ids/233024-450-675/1007422-28-02-Maleta-de-viaje.jpg?v=637859081151500000",
        0,
        100000));
    pro.add(productos(
        2,
        "Suitcase Dark",
        "https://cuerosvelezco.vteximg.com.br/arquivos/ids/233091-450-675/1022843-00-02-Maleta-de-viaje.jpg?v=637859955079300000",
        0,
        180000));
    pro.add(productos(
        3,
        "Bag Dark",
        "https://cuerosvelezco.vteximg.com.br/arquivos/ids/233091-450-675/1022843-00-02-Maleta-de-viaje.jpg?v=637859955079300000",
        0,
        50000));
    pro.add(productos(
        4,
        "Suitcase Big",
        "https://cuerosvelezco.vteximg.com.br/arquivos/ids/216471-450-675/1023948-00-02-maleta-de-viaje.jpg?v=637596479594500000",
        0,
        60000));
    pro.add(productos(
        5,
        "Brown rawhide bag ",
        "https://cuerosvelezco.vteximg.com.br/arquivos/ids/217958-450-675/1031327-21-02-maleta-de-viaje.jpg?v=637635295085830000",
        0,
        300000));

    // TODO: implement onInit
    super.onInit();
  }

  void cambiarposicion(int x) {
    _posicionPagina.value = x;
  }

  int get posicionPagina => _posicionPagina.value;

  void cambiarCantidad(int posicion, int valor) {
    print(
        "posicion = " + posicion.toString() + " | valor = " + valor.toString());
    pro[posicion].cantidad = valor;
  }

  int calcularTotal() {
    int total = 0;
    for (int i = 0; i < pro.length; i++) {
      total = total + pro[i].cantidad * pro[i].precio;
    }

    return total;
  }

  void limpiartodo() {
    for (int i = 0; i < pro.length; i++) {
      pro[i].cantidad = 0;
    }
    calcularTotal();
  }
}
