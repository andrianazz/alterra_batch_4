import 'package:alterra_batch_4/app/data/models/category.dart';
import 'package:alterra_batch_4/app/data/models/place.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt currentIndex = 0.obs;

  final listCategory = [
    Category(name: "House", image: "assets/house-illustration.jpg"),
    Category(name: "Camp", image: "assets/camp-illustration.jpg"),
    Category(name: "Villa", image: "assets/villa-illustration.jpg"),
    Category(name: "Hotel", image: "assets/hotels-illustration.jpg"),
  ].obs;

  final listPopular = {
    Places(
      name: "Royal Hotel Bogor",
      image: "assets/royal-bogor.jpg",
      price: "300.000",
      location: "Cisanya, Bogor",
      about:
          "Hotel ini sangat nyaman untuk dijadikan tempat beristirahat dan juga memiliki fasilitas yang lengkap untuk kebutuhan anda selama menginap di hotel ini.",
      features: ["Wifi", "3 Beds", "Food"],
      rating: 4.5,
    ),
    Places(
      name: "Bumi Katulampa",
      image: "assets/bumi-katulampa.jpg",
      price: "200.000",
      location: "Cisanya, Bogor",
      about:
          "Hotel ini sangat nyaman untuk dijadikan tempat beristirahat dan juga memiliki fasilitas yang lengkap untuk kebutuhan anda selama menginap di hotel ini.",
      features: ["Wifi", "3 Beds", "Food"],
      rating: 3.5,
    ),
    Places(
      name: "Villa Sawah",
      image: "assets/villa-sawah.jpg",
      price: "150.000",
      location: "Cisanya, Bogor",
      about:
          "Hotel ini sangat nyaman untuk dijadikan tempat beristirahat dan juga memiliki fasilitas yang lengkap untuk kebutuhan anda selama menginap di hotel ini.",
      features: ["Wifi", "3 Beds", "Food"],
      rating: 4.0,
    ),
    Places(
      name: "Camp Batu Gede",
      image: "assets/bumi-katulampa.jpg",
      price: "220.000",
      location: "Cisanya, Bogor",
      about:
          "Hotel ini sangat nyaman untuk dijadikan tempat beristirahat dan juga memiliki fasilitas yang lengkap untuk kebutuhan anda selama menginap di hotel ini.",
      features: ["Wifi", "3 Beds", "Food"],
      rating: 4.5,
    ),
    Places(
      name: "Camp Pusdiklatda",
      image: "assets/bumi-katulampa.jpg",
      price: "220.000",
      location: "Cisanya, Bogor",
      about:
          "Hotel ini sangat nyaman untuk dijadikan tempat beristirahat dan juga memiliki fasilitas yang lengkap untuk kebutuhan anda selama menginap di hotel ini.",
      features: ["Wifi", "3 Beds", "Food"],
      rating: 5.0,
    ),
  }.obs;
}
