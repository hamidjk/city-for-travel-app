class Model {
  String name;
  String location;
  String image;
  String population;
  String temp;
  String rating;
  String discription;
  String price;

  Model(
      {required this.name,
      required this.location,
      required this.image,
      required this.population,
      required this.temp,
      required this.rating,
      required this.discription,
      required this.price});
}

List<Model> modellist = [
  Model(
      name: "Tehran",
      location: "Iran-Tehran",
      image: "assets/images/tehran.jpg",
      population: "15 Milion",
      temp: "20~35° C",
      rating: "8",
      discription:
          "Tehran is a city in Tehran Province and the capital of Iran. With a population of around 8.7 million in the city and 15 million in the larger metropolitan area of Greater Tehran, Tehran is the most populous city in Iran and Western Asia,[6] and has the second-largest metropolitan area in the Middle East, after Cairo. It is ranked 24th in the world by metropolitan area population.",
      price: "1000 \$"),
  Model(
      name: "Damghan",
      location: "Iran-Damghan",
      image: "assets/images/Damghan.jpg",
      population: "100K",
      temp: "15~40° C",
      rating: "7",
      discription:
          "Damghan is the capital of Damghan County, Semnan Province, Iran. At the 2006 census, its population was 100,331, in 70,849 families.[3] It is situated 342 km (213 mi) east of Tehran on the high-road to Mashad, at an elevation of 1,250 m (4,101 ft). It is one of the oldest cities on the Iranian plateau, stretching back 7,000 years, and boasts many sites of historic interest. The oldest of these is Tappeh Hessar, lying to the southeast of the city, which holds the ruins of a castle dating from the Sasanian Empire.",
      price: "700 \$"),
  Model(
      name: "Mashhad",
      location: "Iran-Mashhad",
      image: "assets/images/mashhad.jpg",
      population: "4 Milion",
      temp: "15~40° C",
      rating: "9",
      discription:
          "Mashhad is the second-most-populous city in Iran and the capital of Razavi Khorasan Province.The city is named after the shrine of Imam Reza, the eighth Shia Imam. The Imam was buried in a village in Khorasan, which afterward gained the name Mashhad, meaning the place of martyrdom. Every year, millions of pilgrims visit the Imam Reza shrine. The Abbasid caliph Harun al-Rashid is also buried within the same shrine",
      price: "900 \$"),
  Model(
      name: "Shiraz",
      location: "Iran-Shiraz",
      image: "assets/images/shiraz.jpg",
      population: "2 Milion",
      temp: "20~40° C",
      rating: "8",
      discription:
          "Shiraz is the fifth-most-populous city of Iran[3] and the capital of its Fars Province, which has been historically known as Pars (پارس, Pārs) and Persis.[4] As of the 2016 national census, the population of the city was 1,565,572 people, and its built-up area with Sadra was home to almost 1,800,000 inhabitants.[5] A census in 2021 showed an increase in the city's population to 1,995,500 people.[6] The city is located in southwestern Iran on the rudkhaneye khoshk (lit.'dry river') seasonal river. It has a moderate climate and has been a regional trade center for over a thousand years. Shiraz is one of the oldest cities of ancient Iran.",
      price: "1000 \$"),

    
];
