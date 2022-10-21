import 'package:flutter/material.dart';
import 'buttom_navigaton_menu/buttom_navigation_menu.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const ButtomNuvigationMenu(),
      appBar: AppBar(),
      body: Column(
        children: const [
          SizedBox(
            height: 210,
            child: ButtomWidget(),
          ),
          BodyWidget()
        ],
      ),
    );
  }
}

class ButtomWidget extends StatelessWidget {
  const ButtomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 2, 28, 50),
                  size: 70,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Nickname',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 10),
                _CastomProgress(
                  lvl: 10,
                )
              ],
            ),
          ],
        ),
        ColoredBox(
          color: const Color.fromARGB(255, 2, 28, 50),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Matches: 50',
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                Text('30 wins',
                    style: TextStyle(color: Colors.white, fontSize: 18)),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);
  final _textStyle = const TextStyle(color: Colors.white, fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      children: [
        Column(
          children: [
            ColoredBox(
              color: const Color.fromARGB(255, 141, 177, 207),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Today', style: _textStyle),
                    Text('24.07', style: _textStyle),
                  ],
                ),
              ),
            ),
            const _TodayGames(),
            ColoredBox(
              color: const Color.fromARGB(255, 141, 177, 207),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '25.07',
                      style: _textStyle,
                    ),
                  ],
                ),
              ),
            ),
            const _TommorowGames(),
            ColoredBox(
              color: const Color.fromARGB(255, 2, 28, 50),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Past matches',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
              ),
            ),
            const _PastMatches()
          ],
        )
      ],
    ));
  }
}

class _PastMatches extends StatelessWidget {
  const _PastMatches({Key? key}) : super(key: key);

  final _textStyle = const TextStyle(color: Colors.white, fontSize: 18);

  final _gameResult = const TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(15, 50, 78, 1));

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color.fromARGB(255, 72, 132, 180),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Arsenal',
                        style: _textStyle,
                      ),
                      Text(
                        'Chelsea',
                        style: _textStyle,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Text(
                        '2.13',
                        style: _textStyle,
                      ),
                      Text(
                        '1.31',
                        style: _textStyle,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text('lose'.toUpperCase(),
                      textAlign: TextAlign.center, style: _gameResult),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 2,
                  width: 300,
                  color: const Color.fromARGB(255, 2, 28, 50)),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Real Madrid',
                        style: _textStyle,
                      ),
                      Text(
                        'Manchester United',
                        style: _textStyle,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Text(
                        '2.13',
                        style: _textStyle,
                      ),
                      Text(
                        '1.31',
                        style: _textStyle,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                      textAlign: TextAlign.center,
                      'win'.toUpperCase(),
                      style: _gameResult),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 2,
                  width: 300,
                  color: const Color.fromARGB(255, 2, 28, 50)),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chelsea',
                        style: _textStyle,
                      ),
                      Text(
                        'Manchester United',
                        style: _textStyle,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Text(
                        '2.13',
                        style: _textStyle,
                      ),
                      Text(
                        '1.31',
                        style: _textStyle,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text('win'.toUpperCase(),
                      textAlign: TextAlign.center, style: _gameResult),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 2,
                  width: 300,
                  color: const Color.fromARGB(255, 2, 28, 50)),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chelsea',
                        style: _textStyle,
                      ),
                      Text(
                        'Manchester United',
                        style: _textStyle,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Text(
                        '2.13',
                        style: _textStyle,
                      ),
                      Text(
                        '1.31',
                        style: _textStyle,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text('win'.toUpperCase(),
                      textAlign: TextAlign.center, style: _gameResult),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 2,
                  width: 300,
                  color: const Color.fromARGB(255, 2, 28, 50)),
            ),
          ],
        ),
      ),
    );
  }
}

class _TommorowGames extends StatelessWidget {
  const _TommorowGames({Key? key}) : super(key: key);
  final _textStyle = const TextStyle(color: Colors.white, fontSize: 18);
  final _vsStyle = const TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(15, 50, 78, 1));

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color.fromARGB(255, 72, 132, 180),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Boston Celties',
                        style: _textStyle,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '2.32',
                        textAlign: TextAlign.end,
                        style: _textStyle,
                      )
                    ],
                  ),
                ),
                Text('VS', style: _vsStyle),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Bagean Munchen',
                        style: _textStyle,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '2.32',
                        style: _textStyle,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _TodayGames extends StatelessWidget {
  const _TodayGames({Key? key}) : super(key: key);
  final _vsStyle = const TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(15, 50, 78, 1));
  final _textStyle = const TextStyle(color: Colors.white, fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color.fromARGB(255, 72, 132, 180),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Spartak',
                        style: _textStyle,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '2.32',
                        style: _textStyle,
                      )
                    ],
                  ),
                ),
                Text('VS', style: _vsStyle),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Zenit',
                        style: _textStyle,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '2.32',
                        style: _textStyle,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 2,
                  width: 300,
                  color: const Color.fromARGB(255, 2, 28, 50)),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Barcelona',
                        style: _textStyle,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '2.32',
                        style: _textStyle,
                      )
                    ],
                  ),
                ),
                Text('VS', style: _vsStyle),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Juventus',
                        style: _textStyle,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '2.32',
                        style: _textStyle,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _CastomProgress extends StatelessWidget {
  final int lvl;
  const _CastomProgress({Key? key, required this.lvl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 25, maxWidth: 300),
      alignment: Alignment.centerLeft,
      width: 300,
      height: 25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.transparent,
        border: Border.all(color: Colors.white, width: 1),
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 5),
        alignment: Alignment.centerLeft,
        width: lvl * 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.green,
        ),
        child: Text(
          'Lvl $lvl',
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
