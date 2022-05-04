import 'package:flutter/material.dart';
import 'package:otpapp/constant.dart';
import 'package:otpapp/screens/login_screen.dart';
import 'package:otpapp/size_config.dart';

// This is the best practice
import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": ".מהיום ניתן לקבל סיוע בכל מקרה חירום מאנשים שנמצאים בסביבתך",
      "image": 'assets/images/onboard1.png',
    },
    {
      "text":
      "נרשמים לאפליקציה, וכעת בכל מקרה חירום \n בין אם מדובר בסכנת חיים או שאתם רק זקוקים להטעין את המצבר של הרכב",
      "image": 'assets/images/onboard2.png',
    },
    {
      "text":" בלחיצת כפתור, האפליקציה מאתרת בזמן אמת אזרחים ואנשי מקצוע באיזורך שיכולים להגיע ולסייע במהירות",
      "image": 'assets/images/onboard3.png',
    },
    {
      "text":" במידה ואתה מעוניין להצטרף למערך הסיוע שלנו \n תוכל לציין זאת בתהליך הרישום ולהיות חלק מנותני הסיוע",
      "image": "assets/images/splash_1.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                            (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),

                    DefaultButton(
                      text: "Continue",
                      onPressed: ()async{
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}