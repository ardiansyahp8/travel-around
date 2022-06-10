class TripCategory {
  String assetImage;
  String name;

  TripCategory({required this.assetImage, required this.name});
}

final List<TripCategory> tripCategories = [
  TripCategory(assetImage: 'assets/images/categories/lake.png', name: 'Nature'),
  TripCategory(assetImage: 'assets/images/categories/tent.png', name: 'Camp'),
  TripCategory(
      assetImage: 'assets/images/categories/eiffel-tower.png',
      name: 'Monument'),
  TripCategory(
      assetImage: 'assets/images/categories/mountain.png', name: 'Mountain'),
  TripCategory(
      assetImage: 'assets/images/categories/vacations.png', name: 'Tour'),
];
