class UserModel {
  String id;
  String nama;
  String idjabatan;
  String cekDiskon;
  String tokenLogin;

  UserModel({
    required this.id,
    required this.nama,
    required this.idjabatan,
    required this.cekDiskon,
    required this.tokenLogin
  });

  factory UserModel.fromJson(Map<String, dynamic> json){
    return UserModel(
      id: json['iduser_akses'] as String,
      nama: json['nama'] as String,
      idjabatan: json['idjabatan'] as String,
      cekDiskon: json['cek_diskon'] as String,
      tokenLogin: json['token_login'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'iduser_akses': id,
      'nama': nama,
      'idjabatan': idjabatan,
      'cek_diskon': cekDiskon,
      'token_login': tokenLogin,
    };
  }
}