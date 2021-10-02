import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_openbd/flutter_openbd.dart';

void main() {
  test('getUrl', () async {
    var openbd = FlutterOpenBD();
    OpenBD res = await openbd.getISBN('9784780802047');
    expect(res.isbn, '9784780802047');
    expect(res.title, 'おにぎりレシピ101');
    expect(res.author, '山田玲子／著 水野菜生／英訳');
    expect(res.cover, 'https://cover.openbd.jp/9784780802047.jpg');
    expect(res.publisher, '');
  });

  test('2', () async {
    var openbd = FlutterOpenBD();
    OpenBD res = await openbd.getISBN('9784822255640');
    expect(res.isbn, '9784822255640');
    expect(res.title, 'OKR（オーケーアール）');
    expect(res.author, 'クリスティーナ・ウォドキー／著 二木夢子／翻訳 及川卓也／監修');
    expect(res.cover, 'https://cover.openbd.jp/9784822255640.jpg');
    expect(res.publisher, '');
  });
}
