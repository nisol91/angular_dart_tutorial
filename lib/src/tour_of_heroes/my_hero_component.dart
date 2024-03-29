import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'hero.dart';

@Component(
  selector: 'my-hero',
  template: '''
    <div *ngIf="hero != null">
      <h2>{{hero.name}}</h2>
      <div><label>id: </label>{{hero.id}}</div>
      <div>
        <label>name: </label>
        <input [(ngModel)]="hero.name" placeholder="name">
      </div>
    </div>''',
  directives: [coreDirectives, formDirectives],
)
class MyHeroComponent {
  @Input()
  Hero hero;
  //ho dichiarato che [hero] e' una proprieta di input,
  //il componente genitore mi passera qualcosa tramite [hero]
}
