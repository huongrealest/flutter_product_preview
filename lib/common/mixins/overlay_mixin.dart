import 'package:preview/utils/ui/app_dialogs.dart';
import 'package:preview/utils/ui/app_snack_bar.dart';

mixin OverlayMixin {
  hideLoading() => AppDialogs.hideLoadingCircle();

  showLoading() => AppDialogs.showLoadingCircle();

  notifyError(String error) => AppSnackbar.showErrorNotification(message: error);

  notifySuccess(String msg) =>
      AppSnackbar.showSuccessNotification(message: msg);
}
