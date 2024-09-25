import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/widgets/appbar/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(
        hideBack: true,
        title: SvgPicture.asset('assets/vectors/spotify_logo.svg',
            height: 40, width: 40),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [_homeArtistCard(), _tabs()],
        ),
      ),
    );
  }

  Widget _homeArtistCard() {
    return Center(
      child: SizedBox(
        height: 140,
        child: Stack(
          children: [
            Align(
                alignment: Alignment.bottomCenter,
                child: SvgPicture.asset('assets/vectors/home_top_card.svg')),
            Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 60),
                  child: Image.asset('assets/images/home_artist.png'),
                ))
          ],
        ),
      ),
    );
  }

  Widget _tabs() {
    return TabBar(
      controller: _tabController,
      tabs: [
        Text('News'),
        Text('Videos'),
        Text('Artists'),
        Text('Podcast'),
      ],
    );
  }
}
