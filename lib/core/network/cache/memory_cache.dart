import 'package:bvg_departures/core/network/cache/cache.dart';

typedef Clock = DateTime Function();

class MemoryCache<T> extends Cache<T> {
  MemoryCache({super.ttl, Clock? now}) : _now = now ?? DateTime.now;

  final Clock _now;
  final _map = <String, (T value, DateTime expires)>{};

  @override
  void save(String key, T value) {
    _map[key] = (value, _now().add(ttl));
  }

  @override
  T? read(String key) {
    final entry = _map[key];
    if (entry == null) return null;
    if (_now().isAfter(entry.$2)) {
      _map.remove(key);
      return null;
    }
    return entry.$1;
  }

  @override
  void clear() => _map.clear();
}
