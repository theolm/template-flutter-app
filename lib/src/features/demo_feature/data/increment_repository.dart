abstract class IIncrementRepository {
  int getIncrement();
}

class IncrementRepository implements IIncrementRepository {
  @override
  int getIncrement() => 1;
}
