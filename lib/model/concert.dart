class Concert {
  int id;
  String name;
  String location;
  String price;
  String date;
  String time;
  String imageasset;

  Concert({
    required this.id,
    required this.name,
    required this.location,
    required this.price,
    required this.date,
    required this.time,
    required this.imageasset,
  });
}

List<Concert> concertlist = [
  Concert(
      id: 1,
      name: 'Olivia Rodrigo',
      location: 'Ancol,Jakarta Utara,51357',
      price: '200',
      date: '22 July 2024',
      time: '19.00 WIB',
      imageasset: 'assets/olivia.png'),
  
  Concert(
      id: 2,
      name: 'Boy Pablo',
      location: 'UAD,Yogyakarta,55166',
      price: '150',
      date: '22 Oktober 2024',
      time: '19.00 WIB',
      imageasset: 'assets/boypablo.png'),

  Concert(
      id: 3,
      name: 'Lana Del Ray',
      location: 'UNNES,Semarang,50229',
      price: '400',
      date: '22 November 2024',
      time: '19.00 WIB',
      imageasset: 'assets/lanadelray.png'),

  Concert(
      id: 4,
      name: 'Soegi Bornean',
      location: 'UAD 4,Yogyakarta,55166',
      price: '10',
      date: '22 Desember 2024',
      time: '19.00 WIB',
      imageasset: 'assets/soegibornean.png'),
];
