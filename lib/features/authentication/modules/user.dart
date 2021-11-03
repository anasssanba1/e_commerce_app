class UserModule {
  final String userId;
  final String userName;
  final String userEmail;
  final String? userImage;

  const UserModule({
    required this.userId,
    required this.userName,
    required this.userEmail,
    this.userImage,
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
