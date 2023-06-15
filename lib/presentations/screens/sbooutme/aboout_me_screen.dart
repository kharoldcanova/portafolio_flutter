import 'package:flutter/material.dart';
import 'package:portafolio_flutter/domain/entities/section.dart';
import 'package:portafolio_flutter/shared/local_about_me.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return ListView.builder(
            itemCount: sectionDataList.length,
            itemBuilder: (context, index) {
              final sectionData = sectionDataList[index];
              return constraints.maxWidth >= 1000
                  ? _buildSectionAboutMeRow(sectionData)
                  : _buildSectionAboutMeColumn(sectionData);
            },
          );
        },
      ),
    );
  }

  Widget _buildSectionAboutMeRow(SectionData sectionData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _buildSectionImage(sectionData.imageUrl, 400),
              const SizedBox(width: 40),
              Flexible(
                child: Text(
                  sectionData.text,
                  softWrap: true,
                  style: const TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSectionAboutMeColumn(SectionData sectionData) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildSectionImage(sectionData.imageUrl, 250),
              const SizedBox(height: 20),
              Flexible(
                child: Text(
                  sectionData.text,
                  softWrap: true,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSectionImage(String imageUrl, double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imageUrl),
        ),
      ),
    );
  }
}

