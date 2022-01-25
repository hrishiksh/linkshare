import '../model.dart';

List<LinkHistory> decodeData(List<Map<String, dynamic>> data) {
  return data
      .map(
        (e) => LinkHistory(
          link: e["link"],
          generationTime: e["generationTime"],
        ),
      )
      .toList();
}
