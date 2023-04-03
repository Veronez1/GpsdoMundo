import 'package:flutter/material.dart';
import 'author_card.dart';
import 'gpsdomundo_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      //1
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://media-cdn.tripadvisor.com/media/photo-s/11/31/3b/34/robertavittoriano-verticalrio.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Column(children: [
          const AuthorCard(
            authorName: 'Davi Veronez',
            title: 'Desenvolvedor',
            imageProvider: NetworkImage(
                'https://thumbs.dreamstime.com/b/pao-de-acucar-rio-janeiro-brasil-vista-vertical-da-rocha-com-vizinhan%C3%A7a-urca-em-143907378.jpg'),
          ),
          Expanded(
            //2
            child: Stack(
              children: [
                //3
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: Text(
                    'Rio de janeiro',
                    style: GpsdoMundoTheme.darkTextTheme.headline1,
                  ),
                ),
                //4
                Positioned(
                  bottom: 70,
                  left: 16,
                  child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Paraiso',
                        style: GpsdoMundoTheme.darkTextTheme.headline1,
                      )),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
