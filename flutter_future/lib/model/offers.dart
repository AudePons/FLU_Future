// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class Offer {
//   String id;
//   String name;
//   String location;
//   String salary;
//   String description;
//   String image;

//   Offer(
//       {this.id,
//       this.name,
//       this.location,
//       this.salary,
//       this.description,
//       this.image});

//   Offer.fromJson(var value) {
//     this.name = value['name'];
//     this.location = value['location'];
//     this.salary = value['salary'];
//     this.description = value['description'];
//   }
// }

class Offer {
  final String id;
  final String name;
  final String location;
  final String salary;
  final String description;
  final String image;

  const Offer({this.id, this.name, this.location, this.salary, this.description, this.image});
}


List<Offer> offers = [
  const Offer(
    id: "1",
    name: "Web Designer",
    location: "Begles",
    salary: "40 000 par an",
    description: "Paucis adseclae ad est liberalium peregrini tenerentur ob sine tenerentur ut ulla remanerent ut adseclae extrusis dudum sine respiratione peregrini ita ab sine interpellata respiratione minimarum disciplinarum milia praecipites inopiam tempus urbe tenerentur pellerentur liberalium ita adseclae remanerent ulla alimentorum milia urbe id ab ab inopiam indignitatis ulla totidemque ab urbe sectatoribus inpendio ulla tenerentur quidem et ab inpendio simularunt indignitatis tria ulla et quique inpendio ne disciplinarum id formidatam liberalium magistris ob tempus quidem indignitatis dudum dudum inpendio paucis et id minimarum disciplinarum ad ab peregrini tria inpendio paucis interpellata indignitatis tempus urbe milia ut milia saltatricum quidem id.",
    image: "assets/img/jobs.png",
  ),
  const Offer(
    id: "2",
    name: "Developpeur Flutter",
    location: "Bordeaux",
    salary: "54 000 par an",
    description: "Paucis adseclae ad est liberalium peregrini tenerentur ob sine tenerentur ut ulla remanerent ut adseclae extrusis dudum sine respiratione peregrini ita ab sine interpellata respiratione minimarum",
    image: "assets/img/jobs.png",
  ),
  const Offer(
    id: "3",
    name: "Developpeur React",
    location: "Carcassonne",
    salary: "2900 par mois",
    description: "Paucis adseclae ad est liberalium peregrini tenerentur ob sine tenerentur ut ulla remanerent ut adseclae extrusis dudum sine respiratione peregrini ita ab sine interpellata respiratione minimarum",
    image: "assets/img/jobs.png",
  ),
  const Offer(
    id: "4",
    name: "Developpeur Web",
    location: "Bordeaux",
    salary: "30 000 par an",
    description: "Paucis adseclae ad est liberalium peregrini tenerentur ob sine tenerentur ut ulla remanerent ut adseclae extrusis dudum sine respiratione peregrini ita ab sine interpellata respiratione minimarum disciplinarum milia",
    image: "assets/img/jobs.png",
  ),
  const Offer(
    id: "5",
    name: "Developpeur .NET",
    location: "Paris 3ème",
    salary: "3300 par mois",
    description: "Paucis adseclae ad est liberalium peregrini tenerentur ob sine tenerentur ut ulla remanerent ut adseclae extrusis dudum sine respiratione peregrini ita ab sine interpellata respiratione minimarum",
    image: "assets/img/jobs.png",
  ),
  const Offer(
    id: "6",
    name: "Developpeur NodeJS",
    location: "Toulouse",
    salary: "40 000 par an",
    description: "Paucis adseclae ad est liberalium peregrini tenerentur ob sine tenerentur ut ulla remanerent ut adseclae extrusis dudum sine respiratione peregrini ita ab sine interpellata respiratione minimarum disciplinarum milia praecipites inopiam tempus urbe tenerentur pellerentur liberalium ita adseclae remanerent ulla alimentorum milia urbe id ab ab inopiam indignitatis ulla totidemque ab urbe sectatoribus inpendio ulla tenerentur quidem et ab inpendio simularunt indignitatis tria ulla et quique inpendio ne disciplinarum id formidatam liberalium magistris ob tempus quidem indignitatis dudum dudum inpendio paucis et id minimarum disciplinarum ad ab peregrini tria inpendio paucis interpellata indignitatis tempus urbe milia ut milia saltatricum quidem id.",
    image: "assets/img/jobs.png",
  ),
  const Offer(
    id: "7",
    name: "Developpeur PHP",
    location: "Toulouse",
    salary: "29 000 par an",
    description: "Paucis adseclae ad est liberalium peregrini tenerentur ob sine tenerentur ut ulla remanerent ut adseclae extrusis dudum sine respiratione peregrini ita ab sine interpellata respiratione minimarum disciplinarum milia praecipites inopiam tempus urbe tenerentur pellerentur liberalium ita adseclae remanerent ulla alimentorum milia urbe id ab ab inopiam indignitatis ulla totidemque ab urbe sectatoribus inpendio ulla tenerentur quidem et ab inpendio simularunt indignitatis tria ulla et quique inpendio ne disciplinarum id formidatam liberalium magistris ob tempus quidem indignitatis dudum dudum inpendio paucis et id minimarum disciplinarum ad ab peregrini tria inpendio paucis interpellata indignitatis tempus urbe milia ut milia saltatricum quidem id.",
    image: "assets/img/jobs.png",
  ),
];
