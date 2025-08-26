// ignore_for_file: sort_child_properties_last, sized_box_for_whitespace, prefer_interpolation_to_compose_strings, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {

  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final int hourlyRate;

  JobCard({
    required this.companyName,
    required this.jobTitle,
    required this.logoImagePath,
    required this.hourlyRate,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 200,
          padding: EdgeInsets.all(12),
          color: Colors.grey[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      height: 60,
                      child: Image.asset(logoImagePath),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Part Time",
                        style: TextStyle(color: Colors.white),
                        ),
                      color: Colors.grey[500],
                      ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                child: Text(
                  jobTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  '\$' + hourlyRate.toString() + '/hr',
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}