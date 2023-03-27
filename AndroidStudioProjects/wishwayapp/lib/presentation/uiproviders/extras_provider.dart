import 'package:flutter/cupertino.dart';
import 'package:wishwayapp/presentation/model/ui_model.dart';

class ExtraProvider extends ChangeNotifier {
  Size _screenSize = Size.zero;
  List<SignUpOtions> signUpOption = [
    SignUpOtions(isTicked: false, text: "A Business", id: 0),
    SignUpOtions(isTicked: false, text: "An Individual", id: 1),
  ];
  List<int> _trackTimeline = [0];
  int _sendPackageIndex = 0;

   List<int> _trackRegTimeline = [0];
   int _regTimelineIndex = 0;

  int _index = 0;
  int _navIndex = 0;

  //Size get screenSize => _screenSize;
  int get index => _index;
  List get signUpOptions => signUpOption;
  int get navIndex => _navIndex;
  int get sendPackageIndex => _sendPackageIndex;
  List get trackTimeline => _trackTimeline;
    int get regTimelineIndex => _regTimelineIndex;
  List get trackRegTimeline => _trackRegTimeline;

  void changeSendPackageIndex(int added) {
    // _trackTimeline.clear();
    _sendPackageIndex = added;
    _trackTimeline.add(added);
    if (_trackTimeline.length > 4) {
      _trackTimeline.clear();
      _trackTimeline.add(0);
    }

    notifyListeners();
  }

  void resetTimelineIndex(int addedIndex) {
    _trackTimeline.clear();
    _trackTimeline.add(addedIndex);

    notifyListeners();
  }

    void changeRegTimelineIndex(int added) {
    // _trackTimeline.clear();
    _regTimelineIndex = added;
    _trackRegTimeline.add(added);
    if (_trackTimeline.length > 4) {
      _trackRegTimeline.clear();
      _trackRegTimeline.add(0);
    }

    notifyListeners();
  }

  void resetRegTimelineIndex(int addedIndex) {
    _trackRegTimeline.clear();
    _trackRegTimeline.add(addedIndex);

    notifyListeners();
  }

  void changeNavIndex(int dex) {
    _navIndex = dex;
    notifyListeners();
  }

  void setScreenSize(Size size) {
    _screenSize = size;
    notifyListeners();
  }

  void nextCarousel() {
    if (_index >= 2) {
      return;
    }
    _index++;
    notifyListeners();
  }

  void previousCarousel() {
    if (_index <= 0) {
      return;
    }
    _index--;
    notifyListeners();
  }

  void selectSignupOptions(int id, bool tick) {
    SignUpOtions isSelect =
        signUpOption.where((element) => element.id == id).single;
    SignUpOtions notSelect =
        signUpOption.where((element) => element.id != id).single;

    if (tick) {
      isSelect.isTicked = tick;
      notSelect.isTicked = false;
    } else {
      notSelect.isTicked = tick;
      isSelect.isTicked = false;
    }

    notifyListeners();
  }
}
