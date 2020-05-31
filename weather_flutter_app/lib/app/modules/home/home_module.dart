import 'package:flutter_modular/flutter_modular.dart';
import 'package:weather_flutter_app/app/modules/home/home_page.dart';
import 'package:weather_flutter_app/app/splash/splash_widget.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SplashWidget()),
        Router('/home', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
