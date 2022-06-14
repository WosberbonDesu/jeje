import 'package:flutter/material.dart';

import 'event_model.dart';

const Color KAppColor = Color(0xffde554d);

List<Map> categories = [
  {
    "name": 'MUSIC',
    'icon': Icons.music_note,
  },
  {
    "name": 'SPORT',
    'icon': Icons.sports_basketball,
  },
  {
    "name": 'ART',
    'icon': Icons.bubble_chart,
  },
];

List<Event> weekendEvents = [
  Event(
    name: 'Moon Crush Festival',
    image: 'assets/images/img2.jpg',
    date: '24 Dec',
    category: categories[0],
    location: 'Barclays Centre',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Moon Crush Festival',
    image: 'assets/images/img1.jpg',
    date: '25 Dec',
    category: categories[0],
    location: 'Barclays Centre',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Moon Crush Festival',
    image: 'assets/images/img3.jpg',
    date: '25 Dec',
    category: categories[0],
    location: 'Barclays Centre',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Moon Crush Festival',
    image: 'assets/images/img4.jpg',
    date: '25 Dec',
    category: categories[0],
    location: 'Barclays Centre',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Moon Crush Festival',
    image: 'assets/images/img1.jpg',
    date: '25 Dec',
    category: categories[0],
    location: 'Barclays Centre',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Marwan Pablo Live',
    image: 'assets/images/img3.jpg',
    date: '24 Dec',
    category: categories[0],
    location: 'Barclays Centre',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
];

List<Event> upcomingHomeEvents = [
  Event(
    name: 'Marwan Pablo Live',
    image: 'assets/images/img2.jpg',
    date: '24 Dec',
    category: categories[0],
    location: 'Barclays Centre',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Moon Crush Festival',
    image: 'assets/images/img1.jpg',
    date: '25 Dec',
    category: categories[0],
    location: 'Barclays Centre',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Moon Crush Festival',
    image: 'assets/images/img3.jpg',
    date: '25 Dec',
    category: categories[0],
    location: 'Barclays Centre',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Moon Crush Festival',
    image: 'assets/images/img3.jpg',
    date: '24 Dec',
    category: categories[0],
    location: 'Barclays Centre',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Moon Crush Festival',
    image: 'assets/images/img4.jpg',
    date: '25 Dec',
    category: categories[0],
    location: 'Barclays Centre',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Moon Crush Festival',
    image: 'assets/images/img2.jpg',
    date: '25 Dec',
    category: categories[0],
    location: 'Barclays Centre',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
];

List<Event> profileEvents = [
  Event(
    name: 'Marwan Pablo Live',
    image: 'assets/images/img1.jpg',
    date: '24 Dec',
    category: categories[0],
    location: 'Barclays Centre',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Marwan Pablo Live',
    image: 'assets/images/img2.jpg',
    date: '24 Dec',
    category: categories[0],
    location: 'Barclays Centre',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Marwan Pablo Live',
    image: 'assets/images/img2.jpg',
    date: '24 Dec',
    category: categories[0],
    location: 'Barclays Centre',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Marwan Pablo Live',
    image: 'assets/images/img2.jpg',
    date: '24 Dec',
    category: categories[0],
    location: 'Barclays Centre',
    fromTo: '19PM - 22PM',
    cost: '60-240\$',
    participants: 1947,
    duration: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
];
