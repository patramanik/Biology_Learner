// / catagorys : [{"id":1,"name":"python","mata_title":"it is a python tutoriyal","image":"1694929338.png","c_keywords":"Haeckel,General Biology"}]

class CatagoryModel {
  CatagoryModel({
      List<Catagorys>? catagorys,}){
    _catagorys = catagorys;
}

  CatagoryModel.fromJson(dynamic json) {
    if (json['catagorys'] != null) {
      _catagorys = [];
      json['catagorys'].forEach((v) {
        _catagorys?.add(Catagorys.fromJson(v));
      });
    }
  }
  List<Catagorys>? _catagorys;
CatagoryModel copyWith({  List<Catagorys>? catagorys,
}) => CatagoryModel(  catagorys: catagorys ?? _catagorys,
);
  List<Catagorys>? get catagorys => _catagorys;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_catagorys != null) {
      map['catagorys'] = _catagorys?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// name : "python"
/// mata_title : "it is a python tutoriyal"
/// image : "1694929338.png"
/// c_keywords : "Haeckel,General Biology"

class Catagorys {
  Catagorys({
      num? id, 
      String? name, 
      String? mataTitle, 
      String? image, 
      String? cKeywords,}){
    _id = id;
    _name = name;
    _mataTitle = mataTitle;
    _image = image;
    _cKeywords = cKeywords;
}

  Catagorys.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _mataTitle = json['mata_title'];
    _image = json['image'];
    _cKeywords = json['c_keywords'];
  }
  num? _id;
  String? _name;
  String? _mataTitle;
  String? _image;
  String? _cKeywords;
Catagorys copyWith({  num? id,
  String? name,
  String? mataTitle,
  String? image,
  String? cKeywords,
}) => Catagorys(  id: id ?? _id,
  name: name ?? _name,
  mataTitle: mataTitle ?? _mataTitle,
  image: image ?? _image,
  cKeywords: cKeywords ?? _cKeywords,
);
  num? get id => _id;
  String? get name => _name;
  String? get mataTitle => _mataTitle;
  String? get image => _image;
  String? get cKeywords => _cKeywords;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['mata_title'] = _mataTitle;
    map['image'] = _image;
    map['c_keywords'] = _cKeywords;
    return map;
  }

}