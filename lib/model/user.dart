class User{

   String uid;

   String username;

   String email;

   String role;

   String firebasetoken;

   User({this.uid, this.email, this.username, this.role, this.firebasetoken});

   User.fromJson(Map<String, dynamic> json)
       : uid = json['uid'],
         email = json['email'],
         username = json['username'],
         role = json['role'],
         firebasetoken = json['firebasetoken'];

   Map<String, dynamic> toJson() =>
       {
         'uid': uid,
         'email': email,
         'username': username,
         'role': role,
         'firebasetoken': firebasetoken
       };
}