import 'package:flutter/material.dart';

import 'util/job_card.dart';
import 'util/recent_job_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final List jobsForYou = [
    // [ comapanyName, jobTitle, logoImagePath, hourlyRate ]
    [ 'Uber', 'UI Designer', 'lib/icons/uber.png', 45],
    [ 'Google', 'Cloud Engineer', 'lib/icons/google.png', 80],
    [ 'Apple', 'Software engineer', 'lib/icons/apple.png', 95],
  ];

  final List recentJobs = [
    // [ comapanyName, jobTitle, logoImagePath, hourlyRate ]
    [ 'Nike', 'Web Designer', 'lib/icons/nike.png', 30],
    [ 'Google', 'Software engineer', 'lib/icons/google.png', 95],
    [ 'Apple', 'Product Manager', 'lib/icons/apple.png', 65],
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 75,
          ),

          //appbar
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Container(
                  height: 50,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[200],
                  ),
                child: Image.asset(
                  'lib/icons/menu_from_left.png',
                  color: Colors.grey[800],
                  ),
                ),
              ),

              Center(
                child: Padding(
                            padding: const EdgeInsets.only(left: 90.0),
                            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: Text(
                      "JOB BOARD",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                      ),
                  ),
                ],
                            ),
                          ),
              ),
            ],
          ), 


        SizedBox(
          height: 25,
        ),

          //discover new path
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text("Discover a New Path", 
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            )),
          ),

          SizedBox(
          height: 25,
        ),

          //search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 30,
                            child: Image.asset(
                              'lib/icons/search.png',
                            color: Colors.grey[600]),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(left: 7),
                              hintText: "Search for a job...",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              SizedBox(
                width: 10,
              ),

                Container(
                  height: 50,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(
                    'lib/icons/preferences.png',
                    color: Colors.white,
                    ),

                )
              ],
            ),
          ),
            SizedBox(
              height: 50,
            ),

          //for you -> job tiles
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              "For You",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ), 
          ),

          SizedBox(
              height: 50,
            ),

            Container(
              height: 200,
              child: ListView.builder(
                itemCount: jobsForYou.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return JobCard(
                    companyName: jobsForYou[index][0],
                    jobTitle: jobsForYou[index][1],
                    logoImagePath: jobsForYou[index][2], 
                    hourlyRate: jobsForYou[index][3]
                  );
                },
                ),
            ),

            SizedBox(
              height: 35,
            ),

          //recently added -> tiles
           Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              "Recently Added",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ), 
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView.builder(
                itemCount: recentJobs.length,
                itemBuilder: (context, index){
                return RecentJobCard(
                  companyName: recentJobs[index][0],
                  jobTitle: recentJobs[index][1],
                  logoImagePath: recentJobs[index][2],
                  hourlyRate: recentJobs[index][3],
                );
                        }),
            ))

        ],
      ),
    );
  }
}