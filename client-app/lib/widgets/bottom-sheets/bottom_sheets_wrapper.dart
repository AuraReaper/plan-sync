import 'package:flutter/material.dart';
import 'package:plan_sync/widgets/bottom-sheets/contribute_schedule.dart';
import 'package:plan_sync/widgets/bottom-sheets/report_error.dart';
import 'package:plan_sync/widgets/bottom-sheets/schedule_preference.dart';

class BottomSheets {
  static changeSectionPreference({
    required BuildContext context,
    bool save = false,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      backgroundColor: colorScheme.background,
      builder: (context) => SchedulePreferenceBottomSheet(
        save: save,
      ),
    );
  }

  static reportError({
    required BuildContext context,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      backgroundColor: colorScheme.background,
      builder: (context) => const ReportErrorBottomSheet(),
    );
  }

  static contributeTimeTable({
    required BuildContext context,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      backgroundColor: colorScheme.background,
      builder: (context) => const ContributeScheduleBottomSheet(),
    );
  }
}