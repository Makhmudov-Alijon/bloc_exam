/// id : 1584
/// title : "A3: Still Alive Coupon Codes"
/// worth : "N/A"
/// thumbnail : "https://www.gamerpower.com/offers/1/62c8adb2ba6a6.jpg"
/// image : "https://www.gamerpower.com/offers/1b/62c8adb2ba6a6.jpg"
/// description : "Grab these A3: Still Alive Coupon Codes before they expire and unlock several in-game items for A3: Still Alive including Blue Diamond x 500, Soul Linker Wish Summon Currency x 100 and much more!"
/// instructions : "1. Click the get button to access the coupon codes list provided by our sister site GamerCoins.\r\n2. Redeem all the codes!"
/// open_giveaway_url : "https://www.gamerpower.com/open/a3-still-alive-coupon-codes"
/// published_date : "2022-07-09 00:20:34"
/// type : "DLC"
/// platforms : "PC, Android, iOS"
/// end_date : "N/A"
/// users : 800
/// status : "Active"
/// gamerpower_url : "https://www.gamerpower.com/a3-still-alive-coupon-codes"
/// open_giveaway : "https://www.gamerpower.com/open/a3-still-alive-coupon-codes"

class ExamModel {
  ExamModel({
      int? id, 
      String? title, 
      String? worth, 
      String? thumbnail, 
      String? image, 
      String? description, 
      String? instructions, 
      String? openGiveawayUrl, 
      String? publishedDate, 
      String? type, 
      String? platforms, 
      String? endDate, 
      int? users, 
      String? status, 
      String? gamerpowerUrl, 
      String? openGiveaway,}){
    _id = id;
    _title = title;
    _worth = worth;
    _thumbnail = thumbnail;
    _image = image;
    _description = description;
    _instructions = instructions;
    _openGiveawayUrl = openGiveawayUrl;
    _publishedDate = publishedDate;
    _type = type;
    _platforms = platforms;
    _endDate = endDate;
    _users = users;
    _status = status;
    _gamerpowerUrl = gamerpowerUrl;
    _openGiveaway = openGiveaway;
}

  ExamModel.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _worth = json['worth'];
    _thumbnail = json['thumbnail'];
    _image = json['image'];
    _description = json['description'];
    _instructions = json['instructions'];
    _openGiveawayUrl = json['open_giveaway_url'];
    _publishedDate = json['published_date'];
    _type = json['type'];
    _platforms = json['platforms'];
    _endDate = json['end_date'];
    _users = json['users'];
    _status = json['status'];
    _gamerpowerUrl = json['gamerpower_url'];
    _openGiveaway = json['open_giveaway'];
  }
  int? _id;
  String? _title;
  String? _worth;
  String? _thumbnail;
  String? _image;
  String? _description;
  String? _instructions;
  String? _openGiveawayUrl;
  String? _publishedDate;
  String? _type;
  String? _platforms;
  String? _endDate;
  int? _users;
  String? _status;
  String? _gamerpowerUrl;
  String? _openGiveaway;
ExamModel copyWith({  int? id,
  String? title,
  String? worth,
  String? thumbnail,
  String? image,
  String? description,
  String? instructions,
  String? openGiveawayUrl,
  String? publishedDate,
  String? type,
  String? platforms,
  String? endDate,
  int? users,
  String? status,
  String? gamerpowerUrl,
  String? openGiveaway,
}) => ExamModel(  id: id ?? _id,
  title: title ?? _title,
  worth: worth ?? _worth,
  thumbnail: thumbnail ?? _thumbnail,
  image: image ?? _image,
  description: description ?? _description,
  instructions: instructions ?? _instructions,
  openGiveawayUrl: openGiveawayUrl ?? _openGiveawayUrl,
  publishedDate: publishedDate ?? _publishedDate,
  type: type ?? _type,
  platforms: platforms ?? _platforms,
  endDate: endDate ?? _endDate,
  users: users ?? _users,
  status: status ?? _status,
  gamerpowerUrl: gamerpowerUrl ?? _gamerpowerUrl,
  openGiveaway: openGiveaway ?? _openGiveaway,
);
  int? get id => _id;
  String? get title => _title;
  String? get worth => _worth;
  String? get thumbnail => _thumbnail;
  String? get image => _image;
  String? get description => _description;
  String? get instructions => _instructions;
  String? get openGiveawayUrl => _openGiveawayUrl;
  String? get publishedDate => _publishedDate;
  String? get type => _type;
  String? get platforms => _platforms;
  String? get endDate => _endDate;
  int? get users => _users;
  String? get status => _status;
  String? get gamerpowerUrl => _gamerpowerUrl;
  String? get openGiveaway => _openGiveaway;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['worth'] = _worth;
    map['thumbnail'] = _thumbnail;
    map['image'] = _image;
    map['description'] = _description;
    map['instructions'] = _instructions;
    map['open_giveaway_url'] = _openGiveawayUrl;
    map['published_date'] = _publishedDate;
    map['type'] = _type;
    map['platforms'] = _platforms;
    map['end_date'] = _endDate;
    map['users'] = _users;
    map['status'] = _status;
    map['gamerpower_url'] = _gamerpowerUrl;
    map['open_giveaway'] = _openGiveaway;
    return map;
  }

}