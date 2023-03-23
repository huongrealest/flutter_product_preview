import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class StateController<T> extends GetxController with StateMixin<T> {
  @protected
  showLoading() => change(null, status: RxStatus.loading());

  @protected
  showError({required String error}) =>
      change(null, status: RxStatus.error(error));

  @protected
  updateNewState({required T value}) =>
      change(value, status: RxStatus.success());
}
