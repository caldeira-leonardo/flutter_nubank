abstract class Adapter<T> {
  T fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson(T entity);

  List<T> fromJsonList(List<Map<String, dynamic>> jsonList) {
    return jsonList.map((json) => fromJson(json)).toList();
  }
}
