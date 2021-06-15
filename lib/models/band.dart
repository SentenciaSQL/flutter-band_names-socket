import 'dart:convert';

Band bandFromJson(String str) => Band.fromJson(json.decode(str));

String bandToJson(Band data) => json.encode(data.toJson());

class Band {

  String? id;
  String? name;
  int? votes;

  Band({
      this.id,
      this.name,
      this.votes,
  });

  factory Band.fromJson(Map<String, dynamic> json) => Band(
      id: json.containsKey('id') ? json["id"] : 'no-id',
      name: json.containsKey('name') ? json["name"] : 'no-name',
      votes: json.containsKey('votes') ? json["votes"] : 'no-votes',
  );

  Map<String, dynamic> toJson() => {
      "id": id,
      "name": name,
      "votes": votes,
  };
}