import 'package:ngdart/angular.dart';
import 'package:ngforms/ngforms.dart';
import '../model/bookmark.dart';
import '../bookmark_form/bookmark_form_component.dart';

@Component(
    selector: 'bookmark',
    templateUrl: 'bookmark_component.html',
    directives: [coreDirectives, formDirectives, BookMarkFormComponent])
class BookmarkComponent {
  final List bookmarks = [
    Bookmark(
      title: 'Creative Bracket',
      description:
          'Go-to Dart blog containing Dart resources for beginners and beyond',
      url: 'https://creativebracket.com',
      edit: false,
    ),
    Bookmark(
      title: 'Dartlang Home',
      description: 'Documentation website for the Dart language and tools',
      url: 'https://dartlang.org',
      edit: false,
    ),
    Bookmark(
      title: 'Flutter',
      description: 'Build native mobile apps with the Flutter SDK',
      url: 'https://flutter.io',
      edit: false,
    )
  ];
  late Bookmark editedBookmark;

  addBookmark() {
    bookmarks.add(Bookmark());
  }

  editBookmark(int index) {
    editedBookmark = Bookmark(
      title: bookmarks[index].title,
      description: bookmarks[index].description,
      url: bookmarks[index].url,
      edit: bookmarks[index].edit,
    );
    bookmarks[index].edit = true;
  }

  removeBookmark(int index) {
    bookmarks.removeAt(index);
  }
}
