import 'package:flutter/material.dart';
import 'package:flutter_ui_example/tasks/apple_tv/film_detail.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class AppleTVCategoryNav extends StatefulWidget {
  @override
  _AppleTVCategoryNavState createState() => _AppleTVCategoryNavState();
}

class _AppleTVCategoryNavState extends State<AppleTVCategoryNav> {
  PageController _pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.black.withOpacity(0.7),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Featured',
                style: TextStyle(color: Colors.redAccent, fontSize: 20),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'New release',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Series',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Stack(
              children: [
                PageView(
                  controller: _pageController,
                  children: <Widget>[
                    posterFilm('assets/images/apple_tv/avenger.jpg', isBig: true),
                    posterFilm('assets/images/apple_tv/hero.png', isBig: true),
                    posterFilm('assets/images/apple_tv/alita.jpg', isBig: true),

                  ],
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Container(
                    child: SmoothPageIndicator(
                        controller: _pageController, // PageController
                        count: 3,
                        effect: SwapEffect(), // your preferred effect
                        onDotClicked: (index) {
                          _pageController.jumpToPage(index);
                        }),
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'What to watch',
              style: TextStyle(color: Colors.redAccent, fontSize: 20),
            ),
            padding: EdgeInsets.symmetric(vertical: 10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              posterFilm('assets/images/apple_tv/alita.jpg'),
              posterFilm('assets/images/apple_tv/spiderman.jpg'),
              posterFilm('assets/images/apple_tv/hero.png'),
            ],
          ),
        ],
      ),
    );
  }

  Widget posterFilm(String assetName, {bool isBig = false}) {
    return InkWell(
      child: Container(
        height: isBig ? 400 :150,
        width: isBig ? 300 :100,
        decoration: BoxDecoration(
          color: Colors.black45,
          image: DecorationImage(
            image: AssetImage(assetName),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FilmDetailScreen()),
        );
      },
    );
  }
}
