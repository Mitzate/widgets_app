import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevacion 0'},
  {'elevation': 1.0, 'label': 'Elevacion 1'},
  {'elevation': 2.0, 'label': 'Elevacion 2'},
  {'elevation': 3.0, 'label': 'Elevacion 3'},
  {'elevation': 4.0, 'label': 'Elevacion 4'},
  {'elevation': 5.0, 'label': 'Elevacion 5'},
];

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cards Screen')),
      body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map(
            (card) =>
                _CardType2(label: card['label'], elevation: card['elevation']),
          ),
          ...cards.map(
            (card) =>
                _CardType2(label: card['label'], elevation: card['elevation']),
          ),
          ...cards.map(
            (card) =>
                _CardType4(label: card['label'], elevation: card['elevation']),
          ),
        ],
      ),
    );
  }
}

class _CardType2 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType2({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(12)),
        side: BorderSide(color: colors.outline),
      ),
      elevation: elevation,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.bottomRight,

              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert_outlined),
              ),
              //Icon(child: Icon((Icons.more_vert_outlined))))
            ),
            Text(label),
          ],
        ),
      ),
    );
  }
}

class _CardType4 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType4({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Stack(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.all(Radius.circular(12)),
            side: BorderSide(color: colors.outline),
          ),
          elevation: elevation,
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.network(
                      'https://picsum.photos/id/${elevation.toInt()}/600/500',
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,

                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_vert_outlined),
                        ),
                      ),
                      //Icon(child: Icon((Icons.more_vert_outlined))))
                    ),
                  ],
                ),
                //Text(label),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
