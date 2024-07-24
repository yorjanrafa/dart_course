  void main() {
    final Map<String, dynamic> hero = {
      'name': 'Batman',
      'powers': <String>['Money', 'Power', 'Flight'],
      'hp': 100,
      'isAlive': true,
      'address': { 'city': 'Gotham', 'country': 'USA' }
    };   

    print("${hero['name']} ${hero['powers']} ${hero['hp']} ${hero['isAlive']}");
    print("${hero['address']['city']}");
    print("${hero['address']['country']}");
  }