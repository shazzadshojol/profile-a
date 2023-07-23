import 'package:flutter/material.dart';

void main() {
  runApp(Profile_App());
}

class Profile_App extends StatelessWidget {
  const Profile_App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Profile_design(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Profile_design extends StatelessWidget {
  const Profile_design({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Image(image: AssetImage('assets/header-image2.jpg')),
              Positioned(
                  bottom: -100,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/male-photo3.jpg'),
                    radius: 100,
                    backgroundColor: Colors.amber,
                  ))
            ],
          ),
          SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                title: Text('Md Shazzad Hossain',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                subtitle: Text('A learning flutter developer',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                tileColor: Colors.amber,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text('About me',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blueAccent,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(color: Colors.amberAccent),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'With ListTile it is not possible. Some modifications are possible with the help of ListTileTheme like color and there is also the option of modifying padding but only work for left and right padding. So better is to create your own custom tile as @santosh showed in his answer. You can also use SizedBox but it can result in tragic output.With ListTile it is not possible. Some modifications are possible with the help of ListTileTheme like color and there is also the option of modifying padding but only work for left and right padding. So better is to create your own custom tile as @santosh showed in his answer. You can also use SizedBox but it can result in tragic output.'),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 155,
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(15)),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.work),
              color: Colors.black,
            ),
          )
        ],
      ),
    ));
  }
}
