import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:packages/main.dart';
import 'package:packages/service/url_service.dart';

class DetailsPage extends StatefulWidget {
  String image;
  String name;
  String country;
  String joylashuv;
  String manba;
  String about;
  String ball;

  DetailsPage({
    super.key,
    required this.image,
    required this.name,
    required this.about,
    required this.country,
    required this.joylashuv,
    required this.manba,
    required this.ball,
  });

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF031F2B),
      body: Column(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                  image: DecorationImage(
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(35),
                      bottomLeft: Radius.circular(35)
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.2),
                    ])
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              widget.name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20,bottom: 20),
                            child: Text(
                              widget.country,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Row(children: [
                          Text(widget.ball,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                          Icon(Icons.star,color: Colors.orange,size: 30,)
                        ],),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "batafsil".tr(),
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  widget.about,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              )
            ],
          )),
          Container(
            margin: EdgeInsets.all(26),
            height: 56,
            child: Row(
              children: [
                Expanded(
                    child: InkWell(
                  onTap: () {
                    UrlService.launchInBrother(Uri.parse(widget.joylashuv));
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 2, color: Color(0xFF5EDFFF)),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.map_outlined,
                            color: Color(0xFF5EDFFF),
                            size: 30,
                          ),
                          Text(
                            "joylashuv".tr(),
                            style: TextStyle(
                                color: Color(0xFF5EDFFF), fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    UrlService.launchInBrother(Uri.parse(widget.manba));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 2, color: Color(0xFF5EDFFF)),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.language,
                            color: Color(0xFF5EDFFF),
                            size: 30,
                          ),
                          Text(
                            "manba".tr(),
                            style: TextStyle(
                                color: Color(0xFF5EDFFF), fontSize: 22),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
