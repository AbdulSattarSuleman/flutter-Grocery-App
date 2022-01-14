/// nazraCount : 68
/// hifzCount : 22
/// qaidaCount : 79

class StudentCountModel {
  StudentCountModel({
      int? nazraCount, 
      int? hifzCount, 
      int? qaidaCount,}){
    _nazraCount = nazraCount;
    _hifzCount = hifzCount;
    _qaidaCount = qaidaCount;
}

  StudentCountModel.fromJson(dynamic json) {
    _nazraCount = json['nazraCount'];
    _hifzCount = json['hifzCount'];
    _qaidaCount = json['qaidaCount'];
  }
  int? _nazraCount;
  int? _hifzCount;
  int? _qaidaCount;

  int? get nazraCount => _nazraCount;
  int? get hifzCount => _hifzCount;
  int? get qaidaCount => _qaidaCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['nazraCount'] = _nazraCount;
    map['hifzCount'] = _hifzCount;
    map['qaidaCount'] = _qaidaCount;
    return map;
  }

}