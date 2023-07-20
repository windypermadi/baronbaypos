class AuthModel {
  final String iduserAkses;
  final String nama;
  final String username;
  final String jenisUser;
  final String idjabatan;
  final String? nomerAbsen;
  final String tokenLogin;
  final DateTime expTokenLogin;

  AuthModel({
    required this.iduserAkses,
    required this.nama,
    required this.username,
    required this.jenisUser,
    required this.idjabatan,
    required this.nomerAbsen,
    required this.tokenLogin,
    required this.expTokenLogin,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        iduserAkses: json['iduser_akses'],
        nama: json['nama'],
        username: json['username'],
        jenisUser: json['jenis_user'],
        idjabatan: json['idjabatan'],
        nomerAbsen: json['nomer_absen'],
        tokenLogin: json['token_login'],
        expTokenLogin: DateTime.parse(json['exp_token_login']),
      );

  Map<String, dynamic> toJson() => {
        'iduser_akses': iduserAkses,
        'nama': nama,
        'username': username,
        'jenis_user': jenisUser,
        'idjabatan': idjabatan,
        'nomer_absen': nomerAbsen,
        'token_login': tokenLogin,
        'exp_token_login': expTokenLogin.toIso8601String(),
  };
}

