import 'package:heimdall/Core/Base/BaseViewModel.dart';
import 'package:heimdall/Core/Theme/MyTheme.dart';
import 'package:heimdall/Presentation/Models/Button/Button.dart';
import 'package:heimdall/Presentation/UI/Home/Tabs/Profile/ProfileNavigator.dart';
import 'package:icons_plus/icons_plus.dart';

class ProfileViewModel extends BaseViewModel<ProfileNavigator> {
  late List<Button> buttonsData = [
    Button(id: 1, icon: EvaIcons.settings, title: local!.setting, onClickListener: goToSettingScreen),
    Button(id: 2, icon: EvaIcons.lock, title: local!.lockManagement, onClickListener: goToLockManagementScreen),
    Button(id: 3, icon: EvaIcons.smiling_face_outline, title: local!.yourFeedBack, onClickListener: goToFeedbackScreen),
    Button(id: 4, icon: EvaIcons.alert_triangle, title: local!.reportIssue, onClickListener: goToReportIssueScreen),
    Button(id: 5, icon: EvaIcons.alert_circle, title: local!.aboutUs, onClickListener: goToAboutUsScreen),
    Button(id: 6, icon: EvaIcons.trash, title: local!.deleteAccount, onClickListener: goToSettingScreen),
    Button(id: 7, icon: EvaIcons.arrow_circle_right, title: local!.signOut, onClickListener: goToSettingScreen)
  ];
  // navigation function
  // function to go to update profile screen
  goToUpdateProfileScreen() {}

  // function to go to setting screen
  goToSettingScreen() {
    navigator!.goToSettingScreen();
  }
  // function to go to Feedback screen
  goToFeedbackScreen(){
    navigator!.goToFeedbackScreen();
  }
  // function to go to ReportIssue screen
  goToReportIssueScreen(){
    navigator!.goToReportIssueScreen();
  }
  // function to go to About Us screen
  goToAboutUsScreen(){
    navigator!.goToAboutUsScreen();
  }
  // function to go to Lock Management screen
  goToLockManagementScreen(){
    navigator!.goToLockManagementScreen();
  }

  // function to return the icon of the app
  String getIcon() {
    if (themeProvider!.getTheme() == MyTheme.blackAndWhiteTheme) {
      return "assets/images/appIcon2.png";
    } else if (themeProvider!.getTheme() == MyTheme.purpleAndWhiteTheme) {
      return "assets/images/appIcon3.png";
    } else if (themeProvider!.getTheme() == MyTheme.darkPurpleTheme) {
      return "assets/images/appIcon4.png";
    } else {
      return "assets/images/appIcon5.png";
    }
  }
}
