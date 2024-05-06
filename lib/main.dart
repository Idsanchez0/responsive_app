import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_app/example/example.dart';
import 'package:responsive_app/size/size_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.light,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  /// Constructor de la clase MyApp
  const MyApp({super.key});

  /// Método build que retorna un widget que representa la interfaz de la aplicación
  @override
  Widget build(BuildContext context) {
    /// LayoutBuilder permite construir widgets dependiendo de las restricciones del padre
    return LayoutBuilder(builder: (context, constraints) {
      /// OrientationBuilder permite construir widgets dependiendo de la orientación del dispositivo
      return OrientationBuilder(builder: (context, orientation) {
        /// Inicializa la clase SizeConfig con las restricciones y orientación actuales
        SizeConfig().init(constraints, orientation);

        /// Retorna un MaterialApp que es la raíz de la aplicación
        return const MaterialApp(
          /// Desactiva la cinta de depuración en la esquina superior derecha
          debugShowCheckedModeBanner: false,

          /// Establece el widget Example como la pantalla de inicio de la aplicación
          home: Example(),
        );
      });
    });
  }
}
