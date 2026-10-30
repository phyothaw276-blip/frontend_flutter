
class UpdateUser {
  final String name;
  final String email;
  final String? password;
  final String role;

  const UpdateUser({
    required this.name,
    required this.email,
    this.password,
    required this.role,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'name': name,
      'email': email,
      'role': role,
    };

    if (password != null && password!.isNotEmpty) {
      data['password'] = password;
    }

    return data;
  }
}
