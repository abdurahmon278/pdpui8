import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var primaryColor = Colors.black;
  var secondaryColor = const Color(0xFF9d9d9d);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          'facebook',
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: secondaryColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.camera_alt,
              color: secondaryColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          // #upload
          Container(
            height: 120,
            color: primaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(children: [
              Row(
                children: [
                  Container(
                    height: 46,
                    width: 46,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/user_5.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 46,
                      padding:
                          const EdgeInsets.only(left: 10, top: 20, right: 10),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(23),
                        border: Border.all(color: secondaryColor, width: 1),
                      ),
                      child: Center(
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "What is on your mind?",
                            hintStyle:
                                TextStyle(color: secondaryColor, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 30,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Live',
                              style: TextStyle(color: Colors.grey[800]),
                            ),
                          ]),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 1,
                    color: secondaryColor,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 30,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.photo,
                              color: Colors.green,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Photo',
                              style: TextStyle(color: Colors.grey[800]),
                            ),
                          ]),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 1,
                    color: secondaryColor,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 30,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Check in',
                              style: TextStyle(color: Colors.grey[800]),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          // #stories
          Container(
            padding: const EdgeInsets.all(10),
            height: 200,
            color: primaryColor,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                makeStory(
                  storyImage: 'assets/images/story_1.jpeg',
                  userImage: 'assets/images/user_1.jpeg',
                  userName: 'User One',
                ),
                makeStory(
                  storyImage: 'assets/images/story_2.jpeg',
                  userImage: 'assets/images/user_2.jpeg',
                  userName: 'User Two',
                ),
                makeStory(
                  storyImage: 'assets/images/story_3.jpeg',
                  userImage: 'assets/images/user_3.jpeg',
                  userName: 'User Three',
                ),
                makeStory(
                  storyImage: 'assets/images/story_4.jpeg',
                  userImage: 'assets/images/user_4.jpeg',
                  userName: 'User Four',
                ),
                makeStory(
                  storyImage: 'assets/images/story_5.jpeg',
                  userImage: 'assets/images/user_5.jpeg',
                  userName: 'User Five',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // #feeds
          makeFeed(
            userName: 'User One',
            userImage: 'assets/images/user_1.jpeg',
            feedTime: '1 hr ago',
            feedImage: 'assets/images/feed_1.jpeg',
            feedText:
                'All the Lorem Ipsum generators on the internet tend to repeat predefined',
          ),
          makeFeed(
            userName: 'User Two',
            userImage: 'assets/images/user_2.jpeg',
            feedTime: '1 hr ago',
            feedImage: 'assets/images/feed_2.jpeg',
            feedText:
                'All the Lorem Ipsum generators on the internet tend to repeat predefined',
          ),
          makeFeed(
            userName: 'User Three',
            userImage: 'assets/images/user_3.jpeg',
            feedTime: '1 hr ago',
            feedImage: 'assets/images/feed_3.jpeg',
            feedText:
                'All the Lorem Ipsum generators on the internet tend to repeat predefined',
          ),
          makeFeed(
            userName: 'User Four',
            userImage: 'assets/images/user_4.jpeg',
            feedTime: '1 hr ago',
            feedImage: 'assets/images/feed_4.jpeg',
            feedText:
                'All the Lorem Ipsum generators on the internet tend to repeat predefined',
          ),
          makeFeed(
            userName: 'User Five',
            userImage: 'assets/images/user_5.jpeg',
            feedTime: '1 hr ago',
            feedImage: 'assets/images/feed_5.jpeg',
            feedText:
                'All the Lorem Ipsum generators on the internet tend to repeat predefined',
          ),
        ],
      ),
    );
  }

  Widget makeStory({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image:
              DecorationImage(image: AssetImage(storyImage), fit: BoxFit.cover),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 2),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                userName,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed({userName, userImage, feedTime, feedImage, feedText}) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      color: primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(userImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              userName,
                              style: TextStyle(
                                color: secondaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              feedTime,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_horiz,
                        color: secondaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  feedText,
                  style: TextStyle(
                      fontSize: 15,
                      color: secondaryColor,
                      height: 1.5,
                      letterSpacing: .7),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            height: 240,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(feedImage), fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    makeLike(),
                    Transform.translate(
                        offset: const Offset(-5, 0), child: makeLove()),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "2.5K",
                      style: TextStyle(fontSize: 15, color: secondaryColor),
                    )
                  ],
                ),
                Text(
                  "400 Comments",
                  style: TextStyle(fontSize: 13, color: secondaryColor),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: const Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: const Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white),
      ),
    );
  }

  Widget makeLikeButton({isActive}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.thumb_up,
              color: isActive ? Colors.blue : Colors.grey,
              size: 18,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "Like",
              style: TextStyle(color: isActive ? Colors.blue : Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  Widget makeCommentButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.chat, color: Colors.grey, size: 18),
            SizedBox(
              width: 5,
            ),
            Text(
              "Comment",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  Widget makeShareButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.share, color: Colors.grey, size: 18),
            SizedBox(
              width: 5,
            ),
            Text(
              "Share",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
