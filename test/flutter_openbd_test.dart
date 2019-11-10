import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_openbd/flutter_openbd.dart';

void main() {
  test('getUrl', () async {
    var openbd = new FlutterOpenBD();
    OpenBD res = await openbd.getISBN('9784780802047');
    expect(res.isbn, '9784780802047');
  });

  test('2', () async {
    var openbd = new FlutterOpenBD();
    OpenBD res = await openbd.getISBN('9784822255640');
    expect(res.isbn, '9784822255640');
  });
}
