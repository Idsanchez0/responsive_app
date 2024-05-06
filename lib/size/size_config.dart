import 'package:flutter/cupertino.dart';

class SizeConfig {
  /// Propiedades estáticas para almacenar información sobre el tamaño de la pantalla y configuraciones de diseño
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double blockWidth = 0;
  static double blockHeight = 0;
  static double textMultiplier = 0;
  static double imageSizeMultiplier = 0;
  static double heightMultiplier = 0;
  static double widthMultiplier = 0;
  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  /// Método para inicializar las propiedades de la clase SizeConfig
  void init(BoxConstraints constraints, Orientation orientation) {
    /// Verifica si la orientación es retrato
    if (orientation == Orientation.portrait) {
      /// Asigna el ancho de la pantalla como el ancho máximo de las restricciones proporcionadas
      screenWidth = constraints.maxWidth;

      /// Asigna el alto de la pantalla como la altura máxima de las restricciones proporcionadas
      screenHeight = constraints.maxHeight;

      /// Establece la bandera isPortrait como verdadera para indicar que la orientación es retrato
      isPortrait = true;

      /// Si el ancho de la pantalla es menor que 450, establece la bandera isMobilePortrait como verdadera para indicar que es un dispositivo móvil en orientación retrato
      if (screenWidth < 450) {
        isMobilePortrait = true;
      }
    } else {
      /// Si la orientación no es retrato (es decir, paisaje), asigna el ancho de la pantalla como la altura máxima de las restricciones proporcionadas
      screenWidth = constraints.maxHeight;

      /// Asigna el alto de la pantalla como el ancho máximo de las restricciones proporcionadas
      screenHeight = constraints.maxWidth;

      /// Establece la bandera isPortrait como falsa para indicar que la orientación no es retrato
      isPortrait = false;

      /// Establece la bandera isMobilePortrait como falsa para indicar que no es un dispositivo móvil en orientación retrato
      isMobilePortrait = false;
    }

    /// Calcula el tamaño de un bloque en función del ancho de la pantalla
    blockWidth = screenWidth / 100;

    /// Calcula el tamaño de un bloque en función del alto de la pantalla
    blockHeight = screenHeight / 100;

    /// Asigna el tamaño del texto como el alto de un bloque
    textMultiplier = blockHeight;

    /// Asigna el tamaño de la imagen como el ancho de un bloque
    imageSizeMultiplier = blockWidth;

    /// Asigna el multiplicador de altura como el alto de un bloque
    heightMultiplier = blockHeight;

    /// Asigna el multiplicador de ancho como el ancho de un bloque
    widthMultiplier = blockWidth;
  }
}
