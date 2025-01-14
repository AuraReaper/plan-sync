import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPreferencesController extends GetxController {
  late SharedPreferences perfs;

  @override
  Future<void> onInit() async {
    perfs = await SharedPreferences.getInstance();
    super.onInit();
  }

  String? getPrimarySectionPreference() => perfs.getString('primary-section');

  Future<bool> savePrimarySectionPreference(String data) async =>
      await perfs.setString('primary-section', data);

  String? getPrimarySemesterPreference() => perfs.getString('primary-semester');

  Future<bool> savePrimarySemesterPreference(String data) async =>
      await perfs.setString('primary-semester', data);

  String? getPrimaryYearPreference() => perfs.getString('primary-year');

  Future<bool> savePrimaryYearPreference(String data) async =>
      await perfs.setString('primary-year', data);

  // In app tutorial
  /// Returns `true` if tutorial has already been completed.
  bool? getTutorialStatus() => perfs.getBool('app-tutorial-status');

  /// Save tutorial status as `true` if completed.
  Future<bool> saveTutorialStatus(bool status) async =>
      await perfs.setBool('app-tutorial-status', status);
}
