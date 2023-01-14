abstract class BlocCounterRepository {
  Future<String> putCounter(String counter);
  Future<String> getCounter();
}
