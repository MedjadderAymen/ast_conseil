import 'package:ast_conseil/shared/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhiteTextColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: kMaxWidth / 1.4,
                child: Stack(
                  children: [
                    Container(
                      height: kMaxWidth / 1.9,
                      width: double.infinity,
                      color: kBackgroundColor,
                      child: Image.asset(
                        "assets/images/background.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(kDefaultPadding * 2),
                      height: kMaxWidth / 1.9,
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/logo.png",
                                  height: 45,
                                  width: 45,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "AST Conseil et Technologie",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: kBackgroundTransparent),
                                ),
                                Spacer(),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () async {
                                      if (await canLaunch(
                                          "https://www.facebook.com/")) {
                                        try {
                                          await launch(
                                            "https://www.facebook.com/",
                                          );
                                        } catch (e) {
                                          print(e.toString());
                                        }
                                      } else {
                                        throw 'Could not launch facebook';
                                      }
                                    },
                                    child: SvgPicture.asset(
                                      "assets/icons/facebook.svg",
                                      color: kWhiteTextColor.withOpacity(0.9),
                                      width: 25,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                SvgPicture.asset(
                                  "assets/icons/github.svg",
                                  color: kWhiteTextColor.withOpacity(0.9),
                                  width: 25,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                SvgPicture.asset(
                                  "assets/icons/linkedin.svg",
                                  color: kWhiteTextColor.withOpacity(0.9),
                                  width: 25,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 120,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(kDefaultPadding),
                            child: Row(
                              children: [
                                Container(
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "AST Conseil\n",
                                          style: TextStyle(
                                              fontSize: 90,
                                              fontWeight: FontWeight.bold,
                                              color: kBackgroundTransparent),
                                        ),
                                        TextSpan(
                                          text: "et Technologie - \n\n\n",
                                          style: TextStyle(
                                              fontSize: 90,
                                              fontWeight: FontWeight.bold,
                                              color: kBackgroundTransparent),
                                        ),
                                        TextSpan(
                                          text:
                                              "Ensemble relevons le défi de la \n",
                                          style: TextStyle(
                                              fontSize: 50,
                                              fontWeight: FontWeight.w700,
                                              color: kPrimaryColor),
                                        ),
                                        TextSpan(
                                          text: "digitalisation",
                                          style: TextStyle(
                                              fontSize: 50,
                                              fontWeight: FontWeight.w700,
                                              color: kPrimaryColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    if (MediaQuery.of(context).size.width > 1800)
                      Positioned(
                        bottom: kDefaultPadding * 4,
                        right: kDefaultPadding * 3,
                        child: Container(
                          child: Image.asset(
                            "assets/images/one.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 4),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Qui-Sommes Nous ?",
                        style: TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                            color: kTextColor),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 10,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: 500,
                          child: Stack(
                            children: [
                              Image.asset(
                                "assets/images/d_2.png",
                                width: MediaQuery.of(context).size.width * 0.15,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                bottom: 0,
                                right: 50,
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  height: 450,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      boxShadow: [kDefaultShadow]),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      "assets/images/team.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Stack(children: [
                            Positioned(
                                right: 0,
                                bottom: 0,
                                child:Image.asset("assets/images/d_3.png", width: 500,fit: BoxFit.cover,)
                            ),
                            Container(
                              child: Text(
                                "En quelques mots AST Conseil est une ESN qui accompagne ses clients dans le cadre de leur transformation digital, nous assistons les entreprises sur tout le cycle des projets informatiques, de la phase de définition de la stratégie aux solutions, en passant par les phases de mise en œuvre de nouvelles infrastructures.",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: kTextLightColor),
                              ),
                            ),
                          ]),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 120,
              ),
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: kDefaultPadding * 4),
                  width: double.infinity,
                  height: 600,
                  child: Stack(
                    children: [
                      Positioned(
                          left: 0,
                          top: 0,
                          child: Image.asset(
                            "assets/images/d_3.png",
                            width: 500,
                            fit: BoxFit.cover,
                          )),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          height: 500,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                                topLeft: Radius.circular(150)),
                            child: Image.asset(
                              "assets/images/office.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          left: 0,
                          bottom: 0,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(kDefaultPadding),
                                height: 150,
                                width: MediaQuery.of(context).size.width * 0.7,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(25),
                                        bottomLeft: Radius.circular(25),
                                        topRight: Radius.circular(150),
                                        topLeft: Radius.circular(25)),
                                    color: kWhiteTextColor.withOpacity(0.6),
                                    boxShadow: [kDefaultShadow]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Notre Expertise",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: kPrimaryColor),
                                    ),
                                    Text(
                                      "Nous proposons des services de Cloud de Cybersécurités et BIG DATA, mais aussi de l’expertise qui s’articule autour des problématiques que vous pouvez rencontrer au sein de votre SI.",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300,
                                          color: kTextColor),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding: EdgeInsets.all(kDefaultPadding),
                                height: 150,
                                width: MediaQuery.of(context).size.width * 0.7,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(25),
                                        bottomLeft: Radius.circular(25),
                                        topRight: Radius.circular(150),
                                        topLeft: Radius.circular(25)),
                                    color: kWhiteTextColor.withOpacity(0.6),
                                    boxShadow: [kDefaultShadow]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Notre Expertise",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: kPrimaryColor),
                                    ),
                                    Text(
                                      "Nous proposons des services de Cloud de Cybersécurités et BIG DATA, mais aussi de l’expertise qui s’articule autour des problématiques que vous pouvez rencontrer au sein de votre SI.",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300,
                                          color: kTextColor),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ],
                  )),
              SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding * 2, vertical: kDefaultPadding),
                decoration: BoxDecoration(color: kBackgroundColor),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 5,
                      decoration: BoxDecoration(
                          color: kPrimaryColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 500,
                            child: Column(
                              children: [
                                Container(
                                  width: 500,
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/logo.png",
                                        height: 45,
                                        width: 45,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "AST Conseil et Technologie",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: kBackgroundTransparent),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "En quelques mots AST Conseil est une ESN qui accompagne ses clients dans le cadre de leur transformation digital, nous assistons les entreprises sur tout le cycle des projets informatiques, de la phase de définition de la stratégie aux solutions, en passant par les phases de mise en œuvre de nouvelles infrastructures.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: kWhiteTextColor.withOpacity(0.7)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 500,
                            child: Column(
                              children: [
                                Text(
                                  "Contacts",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: kBackgroundTransparent),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 500,
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: GestureDetector(
                                          onTap: () async {
                                            if (await canLaunch(
                                                "https://www.facebook.com/")) {
                                              try {
                                                await launch(
                                                  "https://www.facebook.com/",
                                                );
                                              } catch (e) {
                                                print(e.toString());
                                              }
                                            } else {
                                              throw 'Could not launch facebook';
                                            }
                                          },
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.phone,
                                                color: kPrimaryColor,
                                                size: 35,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                "(+213) 698 281 556",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                    color: kWhiteTextColor
                                                        .withOpacity(0.7)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 500,
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: GestureDetector(
                                          onTap: () async {
                                            if (await canLaunch(
                                                "https://www.facebook.com/")) {
                                              try {
                                                await launch(
                                                  "https://www.facebook.com/",
                                                );
                                              } catch (e) {
                                                print(e.toString());
                                              }
                                            } else {
                                              throw 'Could not launch facebook';
                                            }
                                          },
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.mail,
                                                color: kPrimaryColor,
                                                size: 35,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                "medjadder.aimen@gmail.com",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                    color: kWhiteTextColor
                                                        .withOpacity(0.7)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 500,
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: GestureDetector(
                                          onTap: () async {
                                            if (await canLaunch(
                                                "https://www.facebook.com/")) {
                                              try {
                                                await launch(
                                                  "https://www.facebook.com/",
                                                );
                                              } catch (e) {
                                                print(e.toString());
                                              }
                                            } else {
                                              throw 'Could not launch facebook';
                                            }
                                          },
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: kPrimaryColor,
                                                size: 35,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                "Bir Khadem - Algiers 1600, Algeria.",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                    color: kWhiteTextColor
                                                        .withOpacity(0.7)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 500,
                            child: Column(
                              children: [
                                Text(
                                  "Retrouvez-nous",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: kBackgroundTransparent),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 500,
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: GestureDetector(
                                          onTap: () async {
                                            if (await canLaunch(
                                                "https://www.facebook.com/")) {
                                              try {
                                                await launch(
                                                  "https://www.facebook.com/",
                                                );
                                              } catch (e) {
                                                print(e.toString());
                                              }
                                            } else {
                                              throw 'Could not launch facebook';
                                            }
                                          },
                                          child: SvgPicture.asset(
                                            "assets/icons/facebook.svg",
                                            color: kWhiteTextColor
                                                .withOpacity(0.8),
                                            width: 35,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: GestureDetector(
                                          onTap: () async {
                                            if (await canLaunch(
                                                "https://www.facebook.com/")) {
                                              try {
                                                await launch(
                                                  "https://www.facebook.com/",
                                                );
                                              } catch (e) {
                                                print(e.toString());
                                              }
                                            } else {
                                              throw 'Could not launch facebook';
                                            }
                                          },
                                          child: SvgPicture.asset(
                                            "assets/icons/github.svg",
                                            color: kWhiteTextColor
                                                .withOpacity(0.8),
                                            width: 35,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: GestureDetector(
                                          onTap: () async {
                                            if (await canLaunch(
                                                "https://www.facebook.com/")) {
                                              try {
                                                await launch(
                                                  "https://www.facebook.com/",
                                                );
                                              } catch (e) {
                                                print(e.toString());
                                              }
                                            } else {
                                              throw 'Could not launch facebook';
                                            }
                                          },
                                          child: SvgPicture.asset(
                                            "assets/icons/linkedin.svg",
                                            color: kWhiteTextColor
                                                .withOpacity(0.8),
                                            width: 35,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
