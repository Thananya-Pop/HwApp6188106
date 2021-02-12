import 'package:flutter/material.dart';

class Book{
  int id;
  String title;
  String imageUrl;
  double price;
  int qty;

  Book(
      {
        @required this.id,
        @required this.title,
        @required this.imageUrl,
        @required this.price,
        @required this.qty});
}

List<Book> itemList = [
  Book(
      id: 1,
      title:'Harry Potter and the Prisoner of Azkaban',
      imageUrl:'https://cdn.waterstones.com/bookjackets/large/9781/4088/9781408855676.jpg',
      price: 990,
      qty: 1
  ),
  Book(
      id: 2,
      title:'Star Wars Little Golden Book Collection',
      imageUrl:'https://images.penguinrandomhouse.com/cover/9780736436090',
      price: 350,
      qty: 1
  ),
  Book(
      id: 3,
      title:'The Adventures of Pinocchio',
      imageUrl:'https://kbimages1-a.akamaihd.net/c275e823-1676-4080-9856-591d9acf6a21/1200/1200/False/the-adventures-of-pinocchio-an-illustrated-story-of-a-puppet-for-kids.jpg',
      price: 90,
      qty: 1
  ),
  Book(
      id: 4,
      title:'HarryPotter and the Philosopher Stone',
      imageUrl:'https://cdn.softwaretestinghelp.com/wp-content/qa/uploads/2019/08/Harry-Potter.jpg',
      price: 1600,
      qty: 1
  ),
  Book(
      id: 5,
      title:'Game Of Thrones',
      imageUrl:'https://cdn.softwaretestinghelp.com/wp-content/qa/uploads/2019/08/The-Game-of-Thrones.jpg',
      price: 999,
      qty: 1
  ),
  Book(
      id: 6,
      title:'Good Omens',
      imageUrl:'https://cdn.softwaretestinghelp.com/wp-content/qa/uploads/2019/08/Good-Omens-1.jpg',
      price: 239,
      qty: 1
  ),
  Book(
      id: 7,
      title:'Marvel Encyclopedia',
      imageUrl:'https://cf.shopee.co.th/file/e1e91fabfdd042f69e166958783dc520_tn',
      price: 1450,
      qty: 1
  ),
  Book(
      id: 8,
      title:'Ds Game Of Life Anime Book',
      imageUrl:'https://cf.shopee.co.th/file/ac52ccbe9faeef8816b97c17b2ccad71',
      price: 430,
      qty: 1
  ),
  Book(
      id: 9,
      title:'Kimetsu no Yaiba 1',
      imageUrl:'https://cdn-local.mebmarket.com/meb/server1/102020/Thumbnail/book_detail_large.gif?4',
      price: 59,
      qty: 1
  ),
  Book(
      id: 10,
      title:'Peter Pan',
      imageUrl:'https://images-na.ssl-images-amazon.com/images/I/91KiaSazxgL.jpg',
      price: 299,
      qty: 1
  ),

];