import 'package:flutter/material.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return ListView.builder(
            itemCount: _sectionDataList.length,
            itemBuilder: (context, index) {
              final sectionData = _sectionDataList[index];
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

class SectionData {
  final String imageUrl;
  final String text;

  SectionData({required this.imageUrl, required this.text});
}

final List<SectionData> _sectionDataList = [
  SectionData(
    imageUrl: 'images/banner_profile.jpg',
    text:
        "¡Hola! Soy Kharold Canova, un apasionado desarrollador con alrededor de dos años de experiencia en el uso de Flutter, el framework de desarrollo de aplicaciones móviles multiplataforma. Mi objetivo es aportar mis habilidades y conocimientos a una organización que valore la innovación y la excelencia en el desarrollo de software.",
  ),
  SectionData(
    imageUrl: 'images/banner_profile.jpg',
    text:
        "Además de mi experiencia en Flutter, también tengo un profundo interés en el campo de la inteligencia artificial. Me fascina la capacidad de las máquinas para aprender y tomar decisiones inteligentes, y me encantaría trabajar en proyectos relacionados con chatbots como Bard o sistemas de procesamiento de lenguaje natural como ChatGPT. Creo firmemente que la inteligencia artificial tiene el potencial de transformar nuestra forma de interactuar con la tecnología y mejorar la vida de las personas.",
  ),
  SectionData(
    imageUrl: 'images/banner_profile.jpg',
    text:
        "Fuera del mundo de la tecnología, tengo una pasión desbordante por las películas de ciencia ficción. Disfruto sumergirme en mundos imaginarios y explorar las posibilidades futuristas que nos muestran. Esta pasión por la ciencia ficción alimenta mi creatividad y mi pensamiento fuera de lo convencional, lo que me permite abordar los desafíos de desarrollo de software desde diferentes perspectivas.",
  ),
  SectionData(
    imageUrl: 'images/banner_profile.jpg',
    text:
        "Además de programar, tengo habilidades en la escritura creativa. Me encanta componer poemas y escribir relatos cortos. Esta habilidad me permite expresar mi creatividad y ver el mundo desde una perspectiva artística, lo cual creo que es esencial en el desarrollo de software. Creo firmemente que la combinación de habilidades técnicas y creativas me hace un candidato único para aportar ideas frescas y soluciones innovadoras a cualquier proyecto.",
  ),
  SectionData(
    imageUrl: 'images/banner_profile.jpg',
    text:
        "Estoy emocionado por la posibilidad de formar parte de un equipo dinámico y trabajar en proyectos que marquen la diferencia. Estoy comprometido con el aprendizaje continuo y el crecimiento profesional, y estoy seguro de que mi experiencia en Flutter, mi pasión por la inteligencia artificial y mis habilidades creativas pueden hacer una contribución significativa a su organización. ¡Espero con ansias la oportunidad de hablar más sobre cómo puedo agregar valor a su equipo!",
  ),
];
