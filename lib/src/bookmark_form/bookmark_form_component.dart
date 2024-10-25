import 'dart:async';
import 'package:ngdart/angular.dart';
import 'package:ngforms/ngforms.dart';
import '../model/bookmark.dart';

@Component(
    selector: 'bookmark-form',
    templateUrl: 'bookmark_form_component.html',
    directives: [formDirectives, coreDirectives])
class BookMarkFormComponent implements OnInit {
  @Input()
  late Bookmark bookmark;
  late Bookmark editedBookmark;

  final _formDeleteCtrl = StreamController();
  @Output('onDelete')
  Stream get formDelete => _formDeleteCtrl.stream;

  @override
  Future<Null> ngOnInit() async {
    editedBookmark = Bookmark()..update(bookmark);
  }

  updateBookmark() {
    bookmark
      ..update(editedBookmark)
      ..edit = false;
  }

  removeBookmark() {
    _formDeleteCtrl.add(null);
  }
}
