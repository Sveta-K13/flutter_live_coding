import 'dart:convert';

enum ItemType { PRIME, TRANSACTION }

class Item {
  final String title;
  final String subtitle;
  final String description;
  final ItemType type;
  const Item({
    this.title,
    this.subtitle,
    this.description,
    this.type,
  });

  Item copyWith({
    String title,
    String subtitle,
    String description,
    ItemType type,
  }) {
    return Item(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      description: description ?? this.description,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'subtitle': subtitle,
      'description': description,
      'type': type,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Item(
      title: map['title'],
      subtitle: map['subtitle'],
      description: map['description'],
      type: map['type'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(title: $title, subtitle: $subtitle, description: $description, type: $type)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Item &&
        o.title == title &&
        o.subtitle == subtitle &&
        o.description == description &&
        o.type == type;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        subtitle.hashCode ^
        description.hashCode ^
        type.hashCode;
  }
}
