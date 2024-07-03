import 'package:daily_new_releases/screen/ui/home/home_page.dart';
import 'package:daily_new_releases/force_update/common_widget/update_prompt_dialog.dart';
import 'package:daily_new_releases/force_update/enum/update_request_type.dart';
import 'package:daily_new_releases/force_update/feature/util/forced_update/update_request_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TopPage extends ConsumerWidget {
  const TopPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // updateの確認
    final updateRequestType = ref.watch(updateRequesterProvider).whenOrNull(
          skipLoadingOnRefresh: false,
          data: (updateRequestType) => updateRequestType,
        );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // アップデートがあった場合
      if (updateRequestType == UpdateRequestType.cancelable ||
          updateRequestType == UpdateRequestType.forcibly) {
        // 新しいバージョンがある場合はダイアログを表示する
        // barrierDismissible はダイアログ表示時の背景をタップしたときにダイアログを閉じてよいかどうか
        // updateの案内を勝手に閉じて欲しくないのでbarrierDismissibleはfalse
        showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return UpdatePromptDialog(
              updateRequestType: updateRequestType,
            );
          },
        );
      }
    });

    return HomePage();
  }
}
