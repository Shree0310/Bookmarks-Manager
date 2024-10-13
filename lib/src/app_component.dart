import 'package:dart_app/src/bookmark/bookmark_component.dart';
import 'package:ngdart/angular.dart';

@Component(
    selector: 'my-app',
    styleUrls: ['app_component.css'],
    templateUrl: 'app_component.html',
    directives: [BookmarkComponent])
class AppComponent {
  final title = 'Tour of Heroes';
  var hero = 'Windstorm';
}
