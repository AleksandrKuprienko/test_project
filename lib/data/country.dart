import 'dart:convert';

class Country {
  Country({
    required this.name,
    required this.idd,
    required this.flags,
  });

  final Name name;
  final Idd idd;

  final Flags flags;

  Map<String, dynamic> toMap() {
    return {
      'name': name.toMap(),
      'idd': idd.toMap(),
      'flags': flags.toMap(),
    };
  }

  factory Country.fromMap(Map<String, dynamic> map) {
    return Country(
      name: Name.fromMap(map['name']),
      idd: Idd.fromMap(map['idd']),
      flags: Flags.fromMap(map['flags']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Country.fromJson(String source) =>
      Country.fromMap(json.decode(source));
}

class Idd {
  Idd({
    required this.root,
    required this.suffixes,
  });

  final String root;
  final List<String> suffixes;

  Map<String, dynamic> toMap() {
    return {
      'root': root,
      'suffixes': suffixes,
    };
  }

  factory Idd.fromMap(Map<String, dynamic> map) {
    return Idd(
      root: map['root'] ?? '',
      suffixes: List<String>.from(map['suffixes']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Idd.fromJson(String source) => Idd.fromMap(json.decode(source));
}

class Name {
  Name({
    required this.common,
  });

  final String common;

  Map<String, dynamic> toMap() {
    return {
      'common': common,
    };
  }

  factory Name.fromMap(Map<String, dynamic> map) {
    return Name(
      common: map['common'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Name.fromJson(String source) => Name.fromMap(json.decode(source));
}

class Flags {
  final String png;
  final String svg;

  Flags({required this.png, required this.svg});

  Map<String, dynamic> toMap() {
    return {
      'png': png,
      'svg': svg,
    };
  }

  factory Flags.fromMap(Map<String, dynamic> map) {
    return Flags(
      png: map['png'] ?? '',
      svg: map['svg'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Flags.fromJson(String source) => Flags.fromMap(json.decode(source));
}
