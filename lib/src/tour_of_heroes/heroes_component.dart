// import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_forms/angular_forms.dart';

import 'hero.dart';
import 'my_hero_component.dart';

import 'mock_heroes.dart';

@Component(
  selector: 'heroes',
  styleUrls: ['heroes_component.css'],
  templateUrl: 'heroes_component.html',
  directives: [
    MaterialCheckboxComponent,
    MaterialFabComponent,
    MaterialIconComponent,
    MaterialSpinnerComponent,
    materialInputDirectives,
    NgFor,
    NgIf,
    formDirectives,
    coreDirectives,
    MyHeroComponent
  ],
)
class HeroesComponent {
  final title = 'Tour of Heroes';
  List<Hero> heroes = mockHeroes;

  //istanzio la variabile selected di tipo Hero
  Hero selected;

  void onSelect(Hero hero) => selected = hero;
  //al click l'hero cliccato diventa selected,
  //cosi posso esporre proprio quell hero nella parte sotto
}
