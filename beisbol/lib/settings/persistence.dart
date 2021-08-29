import 'package:shared_preferences/shared_preferences.dart';

class PersistenceLocal {
  static final PersistenceLocal _instancia =
      new PersistenceLocal._internal();

  factory PersistenceLocal() {
    return _instancia;
  }

  PersistenceLocal._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }
  
  double get widthDevice {
    return _prefs.getDouble('widthDevice') ?? 0;
  }

  set widthDevice(double value) {
    _prefs.setDouble('widthDevice', value);
  }

  double get heightDevice {
    return _prefs.getDouble('heightDevice') ?? 0;
  }

  set heightDevice(double value) {
    _prefs.setDouble('heightDevice', value);
  }

}
