class Todo {
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;

  int get id => _id;

  set id(int value) => _id = value;

  String get title => _title;

  set title(String value) {
    if (value.length <= 255) {
      _title = value;
    }
  }

  String get description => _description;

  set description(String value) => _description = value;

  String get date => _date;

  set date(String value) => _date = value;

  int get priority => _priority;

  set priority(int value) {
    if (value >= 0 && value <= 3) {
      _priority = value;
    }
  }

  Todo(this._title, this._priority, this._date, [this._description]);
  Todo.withId(this._id, this._title, this._priority, this._date,
      [this._description]);
  Map <String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["title"] = _title;
    map["description"] = _description;
    map['priority'] = _priority;
    map['date'] = _date;
    if (_id != null) {
      map["id"] =_id;
    }

    return map;
  }
 
  Todo.fromObject(dynamic o) {
    this._id = o["id"];
    this._title = o["title"];
    this._description = o["description"];
    this._priority = o["priority"];
    this._date = o["date"];
  }
}
