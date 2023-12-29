import 'package:mno_commons/extensions/uri.dart';
import 'package:test/test.dart';

void main() {
  test("remove last component", () {
    expect(Uri.parse("http://domain.com/two/"),
        Uri.parse("http://domain.com/two/paths").removeLastComponent());
    expect(Uri.parse("http://domain.com/two/"),
        Uri.parse("http://domain.com/two/paths/").removeLastComponent());
    expect(Uri.parse("http://domain.com/"),
        Uri.parse("http://domain.com/path").removeLastComponent());
    expect(Uri.parse("http://domain.com/"),
        Uri.parse("http://domain.com/path/").removeLastComponent());
    expect(Uri.parse("http://domain.com/"),
        Uri.parse("http://domain.com/").removeLastComponent());
    expect(Uri.parse("http://domain.com"),
        Uri.parse("http://domain.com").removeLastComponent());
  });
}
