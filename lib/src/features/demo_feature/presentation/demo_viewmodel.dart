import 'package:mobx/mobx.dart';

part 'demo_viewmodel.g.dart';

class DemoViewModel = _DemoViewModelBase with _$DemoViewModel;

abstract class _DemoViewModelBase with Store {
  @observable
  int count = 0;

  @action
  void incrementCounter() {
    count += 1;
  }
}
