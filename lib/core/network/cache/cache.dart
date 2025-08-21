abstract class Cache<T> {
  final Duration ttl;
  Cache({this.ttl = const Duration(minutes: 3)});
  void save(String key, T data);
  T? read(String key);
  void clear();
}
