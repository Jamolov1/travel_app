import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:packages/main.dart';
import 'package:packages/pages/details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void tranlations() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 400,
            decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.keyboard_arrow_down,color: Colors.black,size: 35,)),
                Container(
                  margin: EdgeInsets.all(20),
                    child: Text(
                  "Tilni tanlang",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                )),
                ElevatedButton(
                    onPressed: () {
                      context.setLocale(Locale('en', 'US'));
                      Navigator.pop(context);
                    },
                    child: Text("en",style: TextStyle(fontSize: 20,color: Colors.black),)),
                ElevatedButton(
                    onPressed: () {
                      context.setLocale(Locale('uz', 'UZ'));
                      Navigator.pop(context);
                    },
                    child: Text("uz",style: TextStyle(fontSize: 20,color: Colors.black),)),
                ElevatedButton(
                    onPressed: () {
                      context.setLocale(Locale('ru', 'RU'));
                      Navigator.pop(context);
                    },
                    child: Text("ru",style: TextStyle(fontSize: 20,color: Colors.black),)),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF031F2B),
      appBar: AppBar(
        backgroundColor: Color(0xFF031F2B),
        title: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "sayohat".tr(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: IconButton(
                  onPressed: () {
                    tranlations();
                  },
                  icon: Icon(
                    Icons.language,
                    color: Colors.white,
                  )))
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(12),
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xFF263238),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "qidiruv".tr(),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 19,
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    )),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                categoryItem(
                  text: "barchasi".tr(),
                  color: Color(0xFF5EDFFF),
                  isactive: true,
                ),
                categoryItem(
                  text: "tog".tr(),
                  color: Color(0xFF263238),
                  isactive: false,
                ),
                categoryItem(
                  text: "dacha".tr(),
                  color: Color(0xFF263238),
                  isactive: false,
                ),
                categoryItem(
                  text: "shahar".tr(),
                  color: Color(0xFF263238),
                  isactive: false,
                ),
                categoryItem(
                  text: "qishloq".tr(),
                  color: Color(0xFF263238),
                  isactive: false,
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.all(20),
              child: Text(
                "mashxur_joylar".tr(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              )),
          Container(
            margin: EdgeInsets.only(left: 20, bottom: 20, top: 10),
            height: 210,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                categoryItemPopular(
                  image: "assets/img_1.png",
                  name: "orol_dengizi".tr(),
                  country: "Qoraqalpogiston".tr(),
                  about: "orol".tr(),
                  joylashuv:
                      "https://www.google.com/maps/place/Aral+Sea/@45.5065439,58.559078,8z/data=!3m1!4b1!4m6!3m5!1s0x41ed23b49bf6100f:0x3cde954279e8d69!8m2!3d45.3963063!4d59.6134113!16zL20vMGhfMTg?authuser=0&entry=ttu&g_ep=EgoyMDI0MTIwOS4wIKXMDSoASAFQAw%3D%3D",
                  manba: "https://uz.wikipedia.org/wiki/Orol_dengizi",
                  ball: "",
                ),
                categoryItemPopular(
                  image: "assets/img_2.png",
                  name: "zomin_toglari".tr(),
                  country: "Jizzax".tr(),
                  about: "zomin_tog".tr(),
                  joylashuv:
                      "https://www.google.com/maps/search/zomin+tog'lari/@39.9669227,68.3709993,14z/data=!3m1!4b1?authuser=0&entry=ttu&g_ep=EgoyMDI0MTIxMC4wIKXMDSoASAFQAw%3D%3D",
                  manba:
                      "https://uz.wikipedia.org/wiki/Zomin_tog%CA%BB-o%CA%BBrmon_davlat_qo%CA%BBriqxonasi",
                  ball: "",
                ),
                categoryItemPopular(
                  image: "assets/img_3.png",
                  name: "buston_sanatoriyasi".tr(),
                  country: "toshkent".tr(),
                  about: "boston_sanatoriya".tr(),
                  joylashuv:
                      "https://www.google.com/maps/place/Bo%CA%BBston+sanatoriyasi/@41.4392858,69.5273655,17z/data=!3m1!4b1!4m6!3m5!1s0x38aefb76fe68606b:0x63d24a424bc576b7!8m2!3d41.4392858!4d69.5299404!16s%2Fg%2F11nnshmg7l?authuser=0&entry=ttu&g_ep=EgoyMDI0MTIxMC4wIKXMDSoASAFQAw%3D%3D",
                  manba:
                      "https://uz.wikipedia.org/wiki/Bo%CA%BBston_sanatoriysi",
                  ball: "",
                ),
                categoryItemPopular(
                  image: "assets/img_1.png",
                  name: "boysuntog".tr(),
                  country: "surxondaryo".tr(),
                  about: "boysun_tog".tr(),
                  joylashuv:
                      "https://www.google.com/maps/place/Boysuntog%CA%BB/@38.6960263,67.4511282,14z/data=!3m1!4b1!4m6!3m5!1s0x38b4c9907f2305fb:0x5daf289dab52839c!8m2!3d38.6960333!4d67.4900969!16s%2Fg%2F121sfps9?authuser=0&entry=ttu&g_ep=EgoyMDI0MTIxMC4wIKXMDSoASAFQAw%3D%3D",
                  manba: "https://uz.wikipedia.org/wiki/Boysuntog%CA%BB",
                  ball: "",
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "barchasi".tr(),
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          categoryItemFeatured(
            image: "assets/img_6.png",
            name: "sangardak_sharsharasi".tr(),
            country: "surxondaryo".tr(),
            about: "sangardak_sharshara".tr(),
            joylashuv:
                "https://www.google.com/maps/place/Sangardak+sharsharasi/@38.534744,67.5620321,17z/data=!3m1!4b1!4m6!3m5!1s0x38b4d108d0283335:0x94bb2046e69bdfd0!8m2!3d38.534744!4d67.564607!16s%2Fg%2F11rsv18tkd?authuser=0&entry=ttu&g_ep=EgoyMDI0MTIxMC4wIKXMDSoASAFQAw%3D%3D",
            manba: "https://uz.wikipedia.org/wiki/Sangardak_sharsharasi",
            ball: "4.7",
          ),
          categoryItemFeatured(
            image: "assets/img_5.png",
            name: "arashan_kollari".tr(),
            country: "namangan".tr(),
            about: "arnasoy_kol".tr(),
            joylashuv:
                "https://www.google.com/maps/place/Arashon+Ko%60l/@41.3802707,70.4679758,14z/data=!3m1!4b1!4m6!3m5!1s0x38a57c6134fbefe1:0x5255e742fd2dc392!8m2!3d41.3802778!4d70.5069444!16s%2Fg%2F11h0wf96m?authuser=0&entry=ttu&g_ep=EgoyMDI0MTIxMC4wIKXMDSoASAFQAw%3D%3D",
            manba: "https://uz.wikipedia.org/wiki/Arnasoy_ko%CA%BBllari",
            ball: "4.9",
          ),
          categoryItemFeatured(
            image: "assets/img_6.png",
            name: "sangardak_sharsharasi".tr(),
            country: "surxondaryo".tr(),
            about: "arnasoy_kol".tr(),
            joylashuv:
                "https://www.google.com/maps/place/Sangardak+sharsharasi/@38.534744,67.5620321,17z/data=!3m1!4b1!4m6!3m5!1s0x38b4d108d0283335:0x94bb2046e69bdfd0!8m2!3d38.534744!4d67.564607!16s%2Fg%2F11rsv18tkd?authuser=0&entry=ttu&g_ep=EgoyMDI0MTIxMC4wIKXMDSoASAFQAw%3D%3D",
            manba: "https://uz.wikipedia.org/wiki/Sangardak_sharsharasi",
            ball: "3.2",
          ),
        ],
      ),
    );
  }

  Widget categoryItem({text, color, isactive}) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: isactive ? Colors.black : Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget categoryItemPopular(
      {image, name, country, about, joylashuv, manba, ball}) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return DetailsPage(
            image: image,
            name: name,
            about: about,
            country: country,
            joylashuv: joylashuv,
            manba: manba,
            ball: ball,
          );
        }));
      },
      child: Container(
        margin: EdgeInsets.all(8),
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.3),
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
              Text(
                country,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryItemFeatured(
      {image, name, country, about, joylashuv, manba, ball}) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return DetailsPage(
            image: image,
            name: name,
            about: about,
            country: country,
            joylashuv: joylashuv,
            manba: manba,
            ball: ball,
          );
        }));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [
                Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0.5),
                Colors.black.withOpacity(0.3),
              ])),
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
                      name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, bottom: 20),
                    child: Text(
                      country,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20, right: 20),
                child: Row(
                  children: [
                    Text(
                      ball,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 30,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
