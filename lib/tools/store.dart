import 'package:flutter/material.dart';

class Store{
  String itemName;
  String itemBrand;
  String itemType;
  String itemImage;
  String itemIngredients;
  double itemRate;

  Store.items({
    this.itemName,
    this.itemBrand,
    this.itemImage,
    this.itemType,
    this.itemRate,
    this.itemIngredients
  });
}
List<Store> storeitems = [
  Store.items(
      itemName: "Hydrolat Kwiat Pomarańczy",
      itemBrand: "NaturaIME",
      itemType: "mgiełka/tonik",
      itemImage: "https://www.superpharm.pl/media/catalog/product/n/a/naturalme_hydrolat_z_kwiatow_pomaranczy.jpg",
      itemRate: 0.0,
  ),
  Store.items(
      itemName: "Serum Aqua Activating",
      itemBrand: "Rovectin",
      itemType: "serum",
      itemImage: "https://cdn.shopify.com/s/files/1/0269/3935/9309/products/SkinEssentialsAquaActivatingSerum_900x_54b63bdb-350a-4851-9eea-2e95c4c1dc1a_900x.jpg?v=1587781073",
      itemRate: 0.0
  ),
  Store.items(
      itemName: "Artemisia Calming Intensive Serum",
      itemBrand: "BringGreen",
      itemType: "serum",
      itemImage: "https://images-na.ssl-images-amazon.com/images/I/51LFgKdSB%2BL._SX569_.jpg",
      itemRate: 0.0
  ),
  Store.items(
      itemName: "Artemisia Calming Repair Cream",
      itemBrand: "BringGreen",
      itemType: "krem",
      itemImage: "https://images-na.ssl-images-amazon.com/images/I/51ysQeE1D2L._SL1024_.jpg",
      itemRate: 0.0
  ),
  Store.items(
      itemName: "Time Revolution Artemisia Treatment Essence",
      itemBrand: "MISSHA",
      itemType: "esencja",
      itemImage: "https://www.missha.pl/wp-content/uploads/2019/07/es.jpg",
      itemRate: 0.0
  ),
  Store.items(
      itemName: "AHA 30% + BHA 2% Peeling Solution",
      itemBrand: "The Ordinary",
      itemType: "peeling",
      itemImage: "https://static.wizaz.pl/media/images/kwc/product/5/d/5d410967c8fb9.jpeg",
      itemRate: 0.0
  ),
  Store.items(
      itemName: "Power 10 Formula GF Effector",
      itemBrand: "It's Skin",
      itemType: "serum",
      itemImage: "https://cdn.shopify.com/s/files/1/0272/0222/4227/products/health-beauty-personal-care-cosmetics-skin-care-lotion-moisturizer-power-10-formula-gf-effector-serum-do-twarzy-30-ml-1_2000x.jpg?v=1573505991",
      itemRate: 0.0
  ),
];

