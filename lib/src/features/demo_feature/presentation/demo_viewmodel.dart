import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../domain/increment_use_case.dart';

part 'demo_viewmodel.g.dart';

@injectable
class DemoViewModel extends _DemoViewModelBase with _$DemoViewModel {}

abstract class _DemoViewModelBase with Store {
  @observable
  int count = 0;

  @action
  void incrementCounter() {
    count += 1;
  }
}
