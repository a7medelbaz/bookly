import 'package:flutter/cupertino.dart';

abstract class MyRoutes {
  static const splashViewRoute = '/';
  static const homeViewRoute = '/homeViewRoute';
  static const bookDetailsViewRoute =
      '/bookDetailsViewRoute';
  static const searchViewRoute =
      '/searchViewRoute';
}

abstract class MyConstants {
  static const kTransitionDuration = Duration(
    seconds: 1,
  );
}

abstract class MyColors {
  static const kPrimaryColor = Color(0xff100B20);
  static const priceContainerColor = Color(
    0xffE4E4E4,
  );
  static const reviewContainerColor = Color(
    0xffEF8262,
  );
  static const autherNameColor = Color(
    0xffFFFFFF,
  );
}

abstract class MyAssets {
  static const booklyLogo =
      'assets/images/Logo.png';
  static const testImage =
      'assets/images/GOAT.jpg';
  static const testImage2 =
      'assets/images/testimage2.png.webp';
  static const kPrimaryFont =
      'GT Sectra Fine Regular';
}

abstract class MyUrlConstants {
  static const myBasicsBooksUrl =
      'https://www.googleapis.com/books/v1/volumes?';
  static const myBookToken =
      'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjIsInVzZXIiOiJtb3JfMjMxNCIsImlhdCI6MTc1ODgzOTUxOH0.jq8WsHDLqfTBgNWYTMmAU1U4qk_zuvm8yqfZaeaM-n0';
  static const bestSellerEndPoint =
      'q=subject:general&filtering=free-ebooks&sorting-newest';
  static const generalBooksEndPoint =
      'q=subject:general&filtering=free-ebooks';
}
