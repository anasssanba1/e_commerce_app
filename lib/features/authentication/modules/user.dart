class UserModule {
  final String userId;
  final String userName;
  final String userEmail;

  const UserModule({
    required this.userId,
    required this.userName,
    required this.userEmail,
  });

  factory UserModule.fromsnapshot(Map<String, dynamic> userinfo) {
    return UserModule(
      userId: userinfo['userId'],
      userName: userinfo['userName'],
      userEmail: userinfo['userEmail'],
    );
  }
  Map<String, String> toMap() {
    return {
      'userId': this.userId,
      'userName': this.userName,
      'userEmail': this.userEmail,
    };
  }
}
