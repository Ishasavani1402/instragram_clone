// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, unused_element

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instragram_clone/profile_tabs/mentions.dart';
import 'package:instragram_clone/profile_tabs/post_profile.dart';
import 'package:instragram_clone/profile_tabs/reels_profile.dart';
import 'package:instragram_clone/widgets/buttons.dart';
import 'package:instragram_clone/widgets/custome_text.dart';
import 'package:instragram_clone/widgets/follower.dart';
import 'package:instragram_clone/widgets/people_accounts.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: const Color.fromARGB(255, 145, 145, 145),
          automaticallyImplyLeading: false,
          title: CustomeText(
            text: "isha.savani_1402",
            fontSize: 15,
            fontWeight: FontWeight.bold,
            fontcolor: Colors.white,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.threads),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.horizontal_split)),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder:
              (context, innerBoxIsScrolled) => [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  maxRadius: 35,
                                  backgroundImage: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkAJEkJQ1WumU0hXNpXdgBt9NUKc0QDVIiaw&s",
                                  ),
                                ),
                                SizedBox(height: 10),
                                CustomeText(
                                  text: "Isha@1402_Savani",
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontcolor: Colors.white,
                                ),
                              ],
                            ),
                            SizedBox(width: 40),
                            Follower(
                              text1: "1",
                              text2: "Posts",
                              f_weight1: FontWeight.bold,
                              f_weight2: FontWeight.normal,
                              f_color1: Colors.white,
                              fontsize1: 15,
                              fontsize2: 10,
                            ),
                            SizedBox(width: 20),
                            Follower(
                              text1: "290",
                              text2: "Followers",
                              f_weight1: FontWeight.bold,
                              f_weight2: FontWeight.normal,
                              f_color1: Colors.white,
                              fontsize1: 15,
                              fontsize2: 10,
                            ),
                            SizedBox(width: 20),
                            Follower(
                              text1: "240",
                              text2: "Followings",
                              f_weight1: FontWeight.bold,
                              f_weight2: FontWeight.normal,
                              f_color1: Colors.white,
                              fontsize1: 15,
                              fontsize2: 10,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Buttons(
                                callback: () {},
                                text: "Edit profile",
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Buttons(
                                callback: () {},
                                text: "Share profile",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            CustomeText(
                              text: "Discover people",
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontcolor: Colors.white,
                            ),
                            Spacer(),
                            CustomeText(
                              text: "See all",
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              fontcolor: const Color.fromARGB(255, 0, 65, 119),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              PeopleAccounts(
                                img_path: "assets/images/virat.png",
                                text1: "Virat kohli",
                                text2: "Followed by Isha Savani and 120 others",
                              ),
                              SizedBox(width: 10),
                              PeopleAccounts(
                                img_path: "assets/images/rohit.png",
                                text1: "Rohit Sharma",
                                text2: "Followed by Isha Savani and 150 others",
                              ),
                              SizedBox(width: 10),
                              PeopleAccounts(
                                img_path: "assets/images/kirtidangadhvi.png",
                                text1: "Kirtidan Gadhvi",
                                text2: "Followed by Isha Savani and 500 others",
                              ),
                              SizedBox(width: 10),
                              PeopleAccounts(
                                img_path: "assets/images/raj.png",
                                text1: "Rajbha Gadhvi",
                                text2: "Followed by Isha Savani and 50 others",
                              ),
                              SizedBox(width: 10),
                              PeopleAccounts(
                                img_path: "assets/images/aditya.png",
                                text1: "Aditya Gadhvi",
                                text2: "Followed by Isha Savani and 700 others",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SliverPersistentHeader(
                  pinned: true,
                  delegate: _SliverAppBarDelegate(
                    TabBar(
                      tabs: [
                        Tab(icon: Icon(Icons.post_add, color: Colors.white)),
                        Tab(icon: Icon(Icons.camera, color: Colors.white)),
                        Tab(
                          icon: Icon(Icons.person_add_alt, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
          body: TabBarView(
            children: [PostProfile(), ReelsProfile(), Mentions()],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;

  _SliverAppBarDelegate(this._tabBar);

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      // color: Colors.black, // Match your app's theme
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(covariant _SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
