/// items : {"item":[{"id":"0001","type":"donut","name":"Cake","ppu":0.55,"batters":{"batter":[{"id":"1001","type":"Regular"},{"id":"1002","type":"Chocolate"},{"id":"1003","type":"Blueberry"},{"id":"1004","type":"Devil's Food"}]},"topping":[{"id":"5001","type":"None"},{"id":"5002","type":"Glazed"},{"id":"5005","type":"Sugar"},{"id":"5007","type":"Powdered Sugar"},{"id":"5006","type":"Chocolate with Sprinkles"},{"id":"5003","type":"Chocolate"},{"id":"5004","type":"Maple"}]},"..."]}

class Complexproductmodel {
  Complexproductmodel({
    Items? items,
  }) {
    _items = items;
  }

  Complexproductmodel.fromJson(dynamic json) {
    _items = json['items'] != null ? Items.fromJson(json['items']) : null;
  }
  Items? _items;

  Items? get items => _items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_items != null) {
      map['items'] = _items?.toJson();
    }
    return map;
  }
}

/// item : [{"id":"0001","type":"donut","name":"Cake","ppu":0.55,"batters":{"batter":[{"id":"1001","type":"Regular"},{"id":"1002","type":"Chocolate"},{"id":"1003","type":"Blueberry"},{"id":"1004","type":"Devil's Food"}]},"topping":[{"id":"5001","type":"None"},{"id":"5002","type":"Glazed"},{"id":"5005","type":"Sugar"},{"id":"5007","type":"Powdered Sugar"},{"id":"5006","type":"Chocolate with Sprinkles"},{"id":"5003","type":"Chocolate"},{"id":"5004","type":"Maple"}]},"..."]

class Items {
  Items({
    List<Item>? item,
  }) {
    _item = item;
  }

  Items.fromJson(dynamic json) {
    if (json['item'] != null) {
      _item = [];
      json['item'].forEach((v) {
        _item?.add(Item.fromJson(v));
      });
    }
  }
  List<Item>? _item;

  List<Item>? get item => _item;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_item != null) {
      map['item'] = _item?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : "0001"
/// type : "donut"
/// name : "Cake"
/// ppu : 0.55
/// batters : {"batter":[{"id":"1001","type":"Regular"},{"id":"1002","type":"Chocolate"},{"id":"1003","type":"Blueberry"},{"id":"1004","type":"Devil's Food"}]}
/// topping : [{"id":"5001","type":"None"},{"id":"5002","type":"Glazed"},{"id":"5005","type":"Sugar"},{"id":"5007","type":"Powdered Sugar"},{"id":"5006","type":"Chocolate with Sprinkles"},{"id":"5003","type":"Chocolate"},{"id":"5004","type":"Maple"}]

class Item {
  Item({
    String? id,
    String? type,
    String? name,
    double? ppu,
    Batters? batters,
    List<Topping>? topping,
  }) {
    _id = id;
    _type = type;
    _name = name;
    _ppu = ppu;
    _batters = batters;
    _topping = topping;
  }

  Item.fromJson(dynamic json) {
    _id = json['id'];
    _type = json['type'];
    _name = json['name'];
    _ppu = json['ppu'];
    _batters =
        json['batters'] != null ? Batters.fromJson(json['batters']) : null;
    if (json['topping'] != null) {
      _topping = [];
      json['topping'].forEach((v) {
        _topping?.add(Topping.fromJson(v));
      });
    }
  }
  String? _id;
  String? _type;
  String? _name;
  double? _ppu;
  Batters? _batters;
  List<Topping>? _topping;

  String? get id => _id;
  String? get type => _type;
  String? get name => _name;
  double? get ppu => _ppu;
  Batters? get batters => _batters;
  List<Topping>? get topping => _topping;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['type'] = _type;
    map['name'] = _name;
    map['ppu'] = _ppu;
    if (_batters != null) {
      map['batters'] = _batters?.toJson();
    }
    if (_topping != null) {
      map['topping'] = _topping?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : "5001"
/// type : "None"

class Topping {
  Topping({
    String? id,
    String? type,
  }) {
    _id = id;
    _type = type;
  }

  Topping.fromJson(dynamic json) {
    _id = json['id'];
    _type = json['type'];
  }
  String? _id;
  String? _type;

  String? get id => _id;
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['type'] = _type;
    return map;
  }
}

/// batter : [{"id":"1001","type":"Regular"},{"id":"1002","type":"Chocolate"},{"id":"1003","type":"Blueberry"},{"id":"1004","type":"Devil's Food"}]

class Batters {
  Batters({
    List<Batter>? batter,
  }) {
    _batter = batter;
  }

  Batters.fromJson(dynamic json) {
    if (json['batter'] != null) {
      _batter = [];
      json['batter'].forEach((v) {
        _batter?.add(Batter.fromJson(v));
      });
    }
  }
  List<Batter>? _batter;

  List<Batter>? get batter => _batter;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_batter != null) {
      map['batter'] = _batter?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : "1001"
/// type : "Regular"

class Batter {
  Batter({
    String? id,
    String? type,
  }) {
    _id = id;
    _type = type;
  }

  Batter.fromJson(dynamic json) {
    _id = json['id'];
    _type = json['type'];
  }
  String? _id;
  String? _type;

  String? get id => _id;
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['type'] = _type;
    return map;
  }
}
