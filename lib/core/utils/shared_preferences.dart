// import 'package:shared_preferences/shared_preferences.dart';
//
// class SharedPrefs {
//   static SharedPreferences? sharedPrefs;
//
//   Future<void> init() async {
//     sharedPrefs = await SharedPreferences.getInstance();
//   }
//
//   String? get token =>
//       sharedPrefs?.getString(keyToken) ??
//       sharedPrefs?.getString(keyDevToken) ??
//       sharedPrefs?.getString(keyChangePassToken);
//
//   String? get firstName => sharedPrefs?.getString(keyFirstName) ?? "";
//
//   String? get bankCardTitleSubscription =>
//       sharedPrefs?.getString(keyBankCardTitleSubscription) ??
//       "4000 00## #### 0002";
//   String? get causesNames => sharedPrefs?.getString(keyCausesNames) ?? "";
//   String? get causesIds => sharedPrefs?.getString(keyCausesIds) ?? "";
//
//   String get fcmToken => sharedPrefs!.getString(keyFcmToken) ?? "";
//
//   bool getSignedIn() {
//     return sharedPrefs!.getBool(keySignedIn) ?? false;
//   }
//
//   setSignedIn(bool value) {
//     sharedPrefs!.setBool(keySignedIn, value);
//   }
//
//   setToken(String value) {
//     sharedPrefs!.setString(keyToken, value);
//   }
//
//   void removeToken() {
//     sharedPrefs!.remove(keyToken);
//   }
//
//   setDevToken(String value) {
//     sharedPrefs!.setString(keyDevToken, value);
//   }
//
//   void removeDevToken() {
//     sharedPrefs!.remove(keyDevToken);
//   }
//
//   setChangePassToken(String value) {
//     sharedPrefs!.setString(keyChangePassToken, value);
//   }
//
//   void removeChangePassToken() {
//     sharedPrefs!.remove(keyChangePassToken);
//   }
//
//   saveFirstName(String value) {
//     sharedPrefs!.setString(keyFirstName, value);
//   }
//
//   saveBankCardTitleSubscription(String value) {
//     sharedPrefs!.setString(keyFirstName, value);
//   }
//
//   void removeCausesNames() {
//     sharedPrefs!.remove(keyCausesNames);
//   }
//
//   saveCausesNames(String value) {
//     sharedPrefs!.setString(keyCausesNames, value);
//   }
//
//   void removeCausesIds() {
//     sharedPrefs!.remove(keyCausesIds);
//   }
//
//   saveCausesIds(String value) {
//     sharedPrefs!.setString(keyCausesIds, value);
//   }
//
//   setFcm(String value) {
//     sharedPrefs!.setString(keyFcmToken, value);
//   }
// }
//
// final sharedPrefs = SharedPrefs();
//
// String keySignedIn = "key_signedIn";
// String keyToken = "key_token";
// String keyDevToken = "key_dev_token";
// String keyChangePassToken = "key_changePass_token";
// String keyFirstName = "key_first_name";
// String keyBankCardTitleSubscription = "key_bankCardTitleSubscription";
// String keyCausesNames = "key_causesNames";
// String keyCausesIds = "key_causesIds";
// String keyFcmToken = "Fcm_key";
