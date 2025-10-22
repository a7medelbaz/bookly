import 'package:equatable/equatable.dart';

class ImageLinks extends Equatable {
  final String? smallThumbnail;
  final String? thumbnail;
  final String? small;
  final String? medium;
  final String? large;
  final String? extraLarge;

  const ImageLinks({
    this.smallThumbnail,
    this.thumbnail,
    this.small,
    this.medium,
    this.large,
    this.extraLarge,
  });

  factory ImageLinks.fromJson(
    Map<String, dynamic> json,
  ) => ImageLinks(
    smallThumbnail:
        json['smallThumbnail'] as String?,
    thumbnail: json['thumbnail'] as String?,
    small: json['small'] as String?,
    medium: json['medium'] as String?,
    large: json['large'] as String?,
    extraLarge: json['extraLarge'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'smallThumbnail': smallThumbnail,
    'thumbnail': thumbnail,
    'small': small,
    'medium': medium,
    'large': large,
    'extraLarge': extraLarge,
  };

  ImageLinks copyWith({
    String? smallThumbnail,
    String? thumbnail,
    String? small,
    String? medium,
    String? large,
    String? extraLarge,
  }) {
    return ImageLinks(
      smallThumbnail:
          smallThumbnail ?? this.smallThumbnail,
      thumbnail: thumbnail ?? this.thumbnail,
      small: small ?? this.small,
      medium: medium ?? this.medium,
      large: large ?? this.large,
      extraLarge: extraLarge ?? this.extraLarge,
    );
  }

  @override
  List<Object?> get props {
    return [
      smallThumbnail,
      thumbnail,
      small,
      medium,
      large,
      extraLarge,
    ];
  }
}
