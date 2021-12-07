import 'package:flutter/material.dart';

// list of colors that we use in our app
const kBackgroundColor = Color(0xFF161420);
const kWhiteTextColor = Color(0xFFFFFFFF);
const kPrimaryColor = Color(0xFFa81f68);
const kSecondaryColor = Color(0xFF050511);
const kTextColor = Color(0xFF06061D);
const kTextLightColor = Color(0xFF707070);
const kBackgroundTransparent = Color(0xFFECECEC);
const kRedColor = Color(0xFFF53B57);
const kBlueColor = Color(0xFF2A5AF6);

const kStartGradient = Color(0xFFa81f68);
const kEndGradient = Color(0xffb4457f);

const kDefaultPadding = 20.0;
const kMaxWidth = 1232.0;
const kDefaultDuration = Duration(milliseconds: 250);

const kGradient = LinearGradient(
  colors: [
    kStartGradient,
    kEndGradient,
  ],
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
);

const kGradientGrey = LinearGradient(
  colors: [
    kBackgroundTransparent,
    kBackgroundTransparent
  ],
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
);

// our default Shadow
const kDefaultShadow = BoxShadow(
  offset: Offset(0, 7),
  blurRadius: 5,
  color: Colors.black12, // Black color with 12% opacity
);

const textInputDecoration = InputDecoration(
  filled: true,
  fillColor: kBackgroundColor,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: kTextLightColor,
      width: 2.0,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: kPrimaryColor,
      width: 2.0,
    ),
  ),
);

final BoxDecoration pinPutDecoration = BoxDecoration(
    color: kBackgroundColor,
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      color:kBackgroundColor,
    ),
    boxShadow: [
      kDefaultShadow
    ]
);
