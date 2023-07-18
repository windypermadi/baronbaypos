class UserModel {
  String id;
  String nama;
  String idjabatan;
  String cekDiskon;
  String tokenLogin;

  UserModel({
    this.id,
    this.nama,
    this.idjabatan,
    this.cekDiskon,
    this.tokenLogin
  });

  UserModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    nama = json['nama'];
    idjabatan = json['idjabatan'];
    cekDiskon = json['cek_diskon'];
    tokenLogin = json['token_login'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nama': nama,
      'idjabatan': idjabatan,
      'cek_diskon': cekDiskon,
      'token_login': tokenLogin,
    };
  }
}