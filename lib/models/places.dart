class Place {
  String name;
  String categoryName;
  double cost;
  String costQuantifier;
  String duration;
  double rating;
  String description;
  String assetImage;

  Place({
    required this.name,
    required this.categoryName,
    required this.cost,
    required this.costQuantifier,
    required this.duration,
    required this.rating,
    required this.description,
    required this.assetImage,
  });
}

final List<Place> places = [
  Place(
    name: 'Benteng Kuto Besak',
    categoryName: 'Monument',
    cost: 0,
    costQuantifier: 'person',
    duration: 'Anytime',
    rating: 4.7,
    description:
        'Benteng Kuto Besak is one of the historical relics of the past located in the city of Palembang, South Sumatra.Kuto Besak Fort is located on the banks of the Musi River, precisely on Jalan Sultan Mahmud Badarudin, 19 Ilir, Bukit Kecil, Palembang City. This fort is relatively large with a size of 288.75 meters x 183.75 meters, and a wall thickness of 1.99 meters.',
    assetImage: 'assets/images/places/bkb-plg.jpg',
  ),
  Place(
    name: 'Bogor Botanical Gardens',
    categoryName: 'Nature',
    cost: 4,
    costQuantifier: 'person',
    duration: 'Anytime',
    rating: 4.9,
    description:
        'The Bogor Botanical Gardens (Indonesian: Kebun Raya Bogor) is a botanical garden located in Bogor, Indonesia, 60 km south of central Jakarta. It is currently operated by Indonesian Institute of Sciences (Indonesian: Lembaga Ilmu Pengetahuan Indonesia or LIPI). The Garden is located in the city center and adjoin the presidential palace compound of Istana Bogor. It covers an area of 87 hectares (210 acres) and contains 13,983 different kinds of trees and plants of various origin. The geographic position of Bogor means it rains almost daily, even in the dry season. This makes the Garden an advantageous location for the cultivation of tropical plants.',
    assetImage: 'assets/images/places/bogorbotani.jpg',
  ),
  Place(
    name: 'Sarinah Mall Jakarta',
    categoryName: 'Mall',
    cost: 0,
    costQuantifier: 'person',
    duration: 'Anytime',
    rating: 4.8,
    description:
        'PT Sarinah (Persero) is an Indonesian retail company owned by PT Aviasi Pariwisata Indonesia (Persero) (InJourney), a state-owned holding company. Its flagship store, Sarinah Building in M.H. Thamrin Street of Central Jakarta, was the first skyscraper to be built in Jakarta as well as the first modern department store in the city. In addition to Thamrin, Sarinah also has a number of outlets located in Pejaten Village at South Jakarta, Banyumanik at Semarang and Malang.[1]',
    assetImage: 'assets/images/places/sarinah.png',
  ),
  Place(
    name: 'Jakarta National Monument of Indonesia',
    categoryName: 'Monument',
    cost: 1,
    costQuantifier: 'person',
    duration: '1 Days',
    rating: 4.5,
    description:
        'The National Monument (Indonesian: Monumen Nasional, abbreviated Monas) is a 132 m (433 ft) obelisk in the centre of Merdeka Square, Central Jakarta, symbolizing the fight for Indonesia. It is the national monument of the Republic of Indonesia, built to commemorate the struggle for Indonesian independence. Construction began in 1961 under the direction of President Sukarno. Monas was opened to the public in 1975. It is topped by a flame covered with gold foil.',
    assetImage: 'assets/images/places/jakarta.jpg',
  ),
  Place(
    name: 'Bundaran HI Jakarta',
    categoryName: 'Monument',
    cost: 0,
    costQuantifier: 'person',
    duration: 'Anytime',
    rating: 4.0,
    description:
        'During the 1960s, President Sukarno ordered several constructions and city beautification projects in preparation for the Asian Games IV. These activities included the construction of the Ikada Sport Complex (in what is now Gelora Bung Karno Sport Complex) and several statues, including the Selamat Datang Monument, designated as Tugu Selamat Datang.',
    assetImage: 'assets/images/places/bundaranhi.jpg',
  ),
  Place(
    name: 'Jakarta International Stadium',
    categoryName: 'Monument',
    cost: 2,
    costQuantifier: 'person',
    duration: 'Anytime',
    rating: 4.6,
    description:
        'Jakarta International Stadium (Indonesian: Stadion Internasional Jakarta) is a retractable roof football stadium in Tanjung Priok, Jakarta, Indonesia. It is the home ground of Persija Jakarta after moving from their current stadium, Gelora Bung Karno Stadium, and the occasional home of the Indonesia national football team, after an agreement between PSSI and PT JAKPRO to use the facility.[1] The stadium is able to host 82,000 spectators, making it the largest stadium in Indonesia.[2][3] Construction of the stadium was delayed due to land disputes and class-action lawsuits by former squatters whose homes were demolished to make way for the stadium.[4] Construction commenced in late 2019 and completed in April 2022.[5]',
    assetImage: 'assets/images/places/jis.jpg',
  ),
];
