import 'package:flutter/material.dart';

class AppleTVTelevisionNav extends StatefulWidget {
  @override
  _AppleTVTelevisionNavState createState() => _AppleTVTelevisionNavState();
}

class _AppleTVTelevisionNavState extends State<AppleTVTelevisionNav> {


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      color: Colors.black.withOpacity(0.7),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Channels',
                style: TextStyle(color: Colors.redAccent, fontSize: 20),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Trending',
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
            flex: 1,
            child: GridView.count(
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              crossAxisCount: 2,
              childAspectRatio: 50 / 100,
              children: [
                itemChannel(
                  nameAsset: 'assets/images/apple_tv/spiderman.jpg',
                  name: 'Sports',
                  description:
                      'Discover the best sport\'s\nchannels int the world',
                  channels: '30 channels',
                  width: width / 2 - 30,
                ),
                itemChannel(
                  nameAsset: 'assets/images/apple_tv/avenger.jpg',
                  name: 'Movies & Series',
                  description:
                      'Ready to watch action movies? over 10 channels to watch',
                  channels: '30 channels',
                  width: width / 2 - 30,
                ),
                itemChannel(
                  nameAsset: 'assets/images/apple_tv/alita.jpg',
                  name: 'Sports',
                  description:
                      'Discover the best sport\'s\nchannels int the world',
                  channels: '30 channels',
                  width: width / 2 - 30,
                ),
                itemChannel(
                  nameAsset: 'assets/images/apple_tv/hero.png',
                  name: 'Sports',
                  description:
                      'Discover the best sport\'s\nchannels int the world',
                  channels: '30 channels',
                  width: width / 2 - 30,
                ),
                itemChannel(
                  nameAsset: 'assets/images/apple_tv/spiderman.jpg',
                  name: 'Sports',
                  description:
                      'Discover the best sport\'s\nchannels int the world',
                  channels: '30 channels',
                  width: width / 2 - 30,
                ),
                itemChannel(
                  nameAsset: 'assets/images/apple_tv/avenger.jpg',
                  name: 'Sports',
                  description:
                      'Discover the best sport\'s\nchannels int the world',
                  channels: '30 channels',
                  width: width / 2 - 30,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget itemChannel({
    String nameAsset,
    String name,
    String description,
    String channels,
    double width,
  }) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 230,
            width: width,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(nameAsset),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
                color: Colors.black45),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.thumb_up,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Text(
            description,
            style: TextStyle(
              color: Colors.white,
            ),
            maxLines: 2,
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            channels,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
