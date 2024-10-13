import 'package:ngdart/angular.dart';
import 'package:ngforms/ngforms.dart';
import '../model/bookmark.dart';

@Component(
    selector: 'bookmark',
    templateUrl: 'bookmark_component.html',
    directives: [coreDirectives, formDirectives])
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
    var bm = Bookmark();
    bookmarks.add(bm);
    editedBookmark = Bookmark(
      title: bm.title,
      description: bm.description,
      url: bm.url,
    );
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

  updateBookmark(int index) {
    bookmarks[index].title = editedBookmark.title;
    bookmarks[index].description = editedBookmark.description;
    bookmarks[index].url = editedBookmark.url;
    bookmarks[index].edit = false;
  }

  removeBookmark(int index) {
    bookmarks.removeAt(index);
  }
}
