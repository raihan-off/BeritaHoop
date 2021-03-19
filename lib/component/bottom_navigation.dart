import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationNews extends StatefulWidget {
  @override
  _BottomNavigationNewsState createState() => _BottomNavigationNewsState();
}

class _BottomNavigationNewsState extends State<BottomNavigationNews> {
  int _selectedIndex=0;
  var bottomTextStyle = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex :index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 15,
                offset: Offset(0, 5)
            )
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          )
      ),
      child: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: _selectedIndex==1?
          new SvgPicture.asset('assets/icons/home-color.svg')
              : new SvgPicture.asset('assets/icons/home.svg'),
          title: Text(
            'Home',
            style: bottomTextStyle,
          ),
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex==1?
          new SvgPicture.asset('assets/icons/search-color.svg')
              : new SvgPicture.asset('assets/icons/search.svg'),
          title: Text(
            'Search',
            style: bottomTextStyle,
          ),
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex==1?
          new SvgPicture.asset('assets/icons/bookmark-color.svg')
              : new SvgPicture.asset('assets/icons/bookmark.svg'),
          title: Text(
            'Bookmark',
            style: bottomTextStyle,
          ),
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex==1?
          new SvgPicture.asset('assets/icons/home-color.svg')
              : new SvgPicture.asset('assets/icons/person.svg'),
          title: Text(
            'Profile',
            style: bottomTextStyle,
          ),
        ),
      ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff343B3C),
        unselectedItemColor: Color(0xffA9B0B1),
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 11,
        showSelectedLabels: true,
        elevation: 0,
      ),
    );
  }
}
