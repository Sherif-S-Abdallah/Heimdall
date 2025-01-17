class Constants {

  Constants._();
  static Constants? instance;
  static getInstance(){
    return instance??= Constants._();
  }

  final String userCollection = "Users";
  final String reportsCollection = "Reports";
  final String imagesFolderName = "images";
  final String feedbacksCollection = "Feedbacks";
  final String contactsCollection = "Contacts";
  final String locksCardCollection = "Locks";

}