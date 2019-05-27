import 'dart:io';

/**
 * 操作file
 */

String base = Uri.base.toString();

void main() {
  print("Uri.base --> " + base);
  _createFile("file.txt");
//  _listFiles();
//  _createDir();
//  _parseUri();
//  _parseFile();
}

/**
 * 操作File
 */
void _createFile(String fileName) async {
  String name = "code/file/temp/${fileName}";
  var file = File(name);
  bool exists = await file.exists();
  if (exists) {
    print("file.length() -> ${await file.length()}");
    print("file.lastModified() -> ${await file.lastModified()}");
    print("file.parent.path -> ${file.parent.path}");
    print(await file.readAsString());
  } else {
    await file.create(recursive: true);
    file.writeAsString("买了佛冷\nwhy?");
    print("未发现文件，已创建文件:${fileName}");
    _createFile(fileName);
  }
}

/**
 * 遍历files
 */
void _listFiles() {
  var directory = Directory("code/file/temp");
  var list = directory.list();
  list.forEach((item) {
    print(item.path);
  });
}

/**
 * 操作dir
 */
void _createDir() {
  String name = "code/file/temp/tempDir";
  var directory = Directory(name);
  directory.createSync(recursive: true);
  print("创建成功 -> $name");

  name = "code/file/temp/tempDir_${DateTime.now().millisecondsSinceEpoch}";
  directory.renameSync(name);
  print("重命名成功 -> $name}");
}

/**
 * 解析File
 */
void _parseFile() async {
  var file = File.fromUri(Uri.parse("${base}code/file/file-basic.dart"));
  var result = await file.readAsString();
  print(result);
}

/**
 * 解析Uri
 */
void _parseUri() {
//  var parse =
//      Uri.parse("http://10.100.119.192:8080/wangzhen/scheme/index.html");
  var params = Map<String, String>();
  params["q"] = "dart";

  var parse = new Uri.http(
      "10.100.119.192:8080", "/wangzhen/scheme/index.html", params);
  print("host=${parse.host}");
  print("port=${parse.port}");
  print("path=${parse.path}");
  print("query=${parse.query}");
  print("fragment=${parse.fragment}");
}
