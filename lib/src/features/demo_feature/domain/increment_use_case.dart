import 'package:injectable/injectable.dart';
import 'package:template_flutter/src/features/demo_feature/data/increment_repository.dart';

abstract class IInctementUseCase {
  int increment(int current);
}

@Injectable(as: IInctementUseCase)
class IncrementUseCase implements IInctementUseCase {
  final IIncrementRepository repository;

  IncrementUseCase(this.repository);

  @override
  int increment(int current) => current + 1;
}
