import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseManager {
  final CollectionReference profileList =
      FirebaseFirestore.instance.collection('profileInfo');

  Future<void> createUserData(
      String name, String bday, String age, String email, String uid) async {
    return await profileList
        .doc(uid)
        .set({'name': name, 'bday': bday, 'age': age, 'email': email});
  }

  Future updateUserList(
      String name, String bday, String age, String uid) async {
    return await profileList
        .doc(uid)
        .update({'name': name, 'bday': bday, 'age': age});
  }

  Future getUsersList() async {
    List itemsList = [];

    try {
      await profileList.get().then((querySnapshot) {
        querySnapshot.docs.forEach((element) {
          itemsList.add(element.data);
        });
      });
      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}