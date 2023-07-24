class ProductModel {
  String id;
  String name;
  String price;
  String stok;
  String satuan;
  String barcode;
  String pajak;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.stok,
    required this.satuan,
    required this.barcode,
    required this.pajak,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json){
    return ProductModel(
      id: json['iditem'] as String,
      name: json['nama'] as String,
      price: json['harga_jual'] as String,
      stok: json['stok'] as String,
      satuan: json['satuan'] as String,
      barcode: json['barcode'] as String,
      pajak: json['jenis_pajak'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
        'iditem': id,
        'nama': name,
        'harga_jual': price,
        'stok': stok,
        'satuan': satuan,
        'barcode': barcode,
        'jenis_pajak': pajak,
    };
  }
}