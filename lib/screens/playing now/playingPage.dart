// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:music_player/screens/playing%20now/appbar.dart';
import 'package:music_player/screens/playing%20now/carousel_card.dart';
import 'package:music_player/utils/exports.dart';

class PlayingPage extends StatefulWidget {
  PlayingPage({super.key});

  @override
  State<PlayingPage> createState() => _PlayingPageState();
}

class _PlayingPageState extends State<PlayingPage> {
  double value = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 28),
          child: ListView(
            children: [
              PlayingNowAppBar(),
              SizedBox(height: 50.h),
              CarouselSlider(
                items: [
                  ...List.generate(
                    menuItems.length,
                    (index) {
                      return CarouselCard();
                    },
                  ).toList(),
                ],
                options: CarouselOptions(
                  height: 385.h,
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 0.78,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    // setState(() {
                    //   value.selectedImage = index;
                    //  });
                  },
                ),
              ),
              Container(
                  padding: EdgeInsets.only(right: 28),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: ImageIcon(AssetImage('icons/volume-1.png'), color: Colors.grey)),
                      IconButton(
                          onPressed: () {},
                          icon: ImageIcon(
                              AssetImage('icons/ic_round-repeat.png'),  color: Colors.grey)),
                    ],
                  )),
             SizedBox(height: 15.h),
              Container(
                padding: EdgeInsets.only(right: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('00:45',
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w400)),
                    Text('04:00',
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
              SizedBox(height: 35.h),
              Slider(
                min: 0,
                max: 100,
                activeColor: Colors.black,
                inactiveColor: Color.fromARGB(255, 225, 225, 225),
                value: value,
                onChanged: (double newValue) {
                  setState(() {
                    value = newValue;
                  });
                },
              ),
              SizedBox(height: 20.h),
              Center(
                child: SizedBox(
                  width: 171.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: ImageIcon(
                            AssetImage('icons/next.png'),
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: ImageIcon(AssetImage('icons/pause.png'))),
                      IconButton(
                          onPressed: () {},
                          icon: ImageIcon(AssetImage('icons/next (1).png')))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
