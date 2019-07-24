import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_forms/angular_forms.dart';

import 'hero.dart';
import 'my_hero_component.dart';

// import 'mock_heroes.dart';
import 'hero_service.dart';

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
  //aggiungo il servizio ai providers
  providers: [ClassProvider(HeroService)],
)
class HeroesComponent implements OnInit {
  final title = 'Tour of Heroes';

  //istanzio il servizio come variabile col nome _heroService
  final HeroService _heroService;
  //chiamo il costruttore che deve solo settare la proprieta _heroService
  HeroesComponent(this._heroService);

  List<Hero> heroes;

  //istanzio la variabile selected di tipo Hero
  Hero selected;

  //metodo che chiama in modo asincrono i dati dal servizio
  Future<void> _getHeroes() async {
    heroes = await _heroService.getAllSlowly();
  }
  //===se voglio chiamare il metodo che mi ritarda la chiamata sostituisco getAll()
  //con getAllSlowly()===

  //all inizializzazione del componente viene chiamato il metodo
  void ngOnInit() => _getHeroes();

  //al click l'hero cliccato diventa selected,
  //cosi posso esporre proprio quell hero nella parte sotto
  void onSelect(Hero hero) => selected = hero;
}
