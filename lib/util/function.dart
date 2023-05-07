import 'package:nyrs_projet/class/produit.dart';

transformTocart(
  data,
) {
  print(data);
  var cour = Produits(
      domainename: '',
      name: data.intitule,
      imagePath: "assets/word.png",
      montant: '');
  return cour;
}