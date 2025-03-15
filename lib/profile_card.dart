import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 174, 204, 255),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.fromLTRB(20,20,20,5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 50, // Image radius
                    backgroundImage: NetworkImage(
                      "https://static.wixstatic.com/media/fed1b6_f68a0c58f0bd476886736c6c91189017~mv2.jpg/v1/fill/w_568,h_378,al_c,q_80,usm_0.66_1.00_0.01,enc_avif,quality_auto/fed1b6_f68a0c58f0bd476886736c6c91189017~mv2.jpg",
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Danudeth Ninkuha",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text("650710079", style: TextStyle(fontSize: 18)),
                  SizedBox(height: 5),
                  Text(
                    "ninkuha_d@silpkorn.edu",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(20,0,20,20),
            height: 40,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 244, 244, 244),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.favorite, color: Colors.red,),
                Icon(Icons.message, color: Colors.blue,),
                Icon(Icons.share, color: Colors.green,)
              ],
            ),
          )
        ],
      ),
    );
  }
}

