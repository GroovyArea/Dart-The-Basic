import 'dart:async';

Future<String> fetchData() async {
  print("API 호출 및 데이터를 가져오는 중...");
  await Future.delayed(Duration(seconds: 3)); // 3초 딜레이
  return "서버 데이터: 'Hello, Dart!'";
}

void main() async {
  try {
    String data = await fetchData();
    print(data);
  } catch (e) {
    print("오류 발생: $e");
  }
}
