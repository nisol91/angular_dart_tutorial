import 'dart:async';
import 'hero.dart';
import 'mock_heroes.dart';

class HeroService {
  Future<List<Hero>> getAll() async => mockHeroes;
//il servizio mi prende i dati dal mock con il metodo getAll() [dalla variabile mockHeroes]

  Future<List<Hero>> getAllSlowly() {
    return Future.delayed(Duration(seconds: 2), getAll);
  }
  //cosi facendo ritardo la chiamata dei dati simulando un finto caricamento
}
