const List<String> marketsNames = <String>['Auchan', 'Carrefour', 'Kaufland', 'Penny', 'Profi'];
const List<String> marketsPictures = <String>[
  'https://www.hellopark.ro/pictures/original/318255e7cfa2c1093c-auchan.jpg',
  'https://logowik.com/content/uploads/images/210_carrefour.jpg',
  'https://kaufland.media.schwarz/is/image/schwarz/t-kaufland-magazin%20%282%29?JGstbGVnYWN5LW9uc2l0ZS00JA==',
  'https://assets-eu-01.kc-usercontent.com/b50b8cce-450a-0138-7b43-de6bc2f3ad32/dfa9eff8-af7e-4d76-941f-226973049f2c/otopeni.jpg?w=1500&fm=webp&lossless=0&q=80',
  'https://storage0.dms.mpinteractiv.ro/media/1/1481/21335/22104753/1/profi.jpg',
];

const List<String> supermarketCategories = <String>[
  'legume',
  'carne',
  'mezeluri',
  'lactate',
  'bauturiNonAlcoolice',
  'bauturiAlcoolice',
];
const List<String> supermarketCategoryLabels = <String>[
  'Fructe si legume',
  'Carne si peste',
  'Mezeluri',
  'Lactate, branzeturi si oua',
  'Bauturi non-alcoolice',
  'Bauturi alcoolice',
];

Map<String, Map<String, String>> allSupermarkets = <String, Map<String, String>>{
  'Auchan': Auchan,
  'Carrefour': Carrefour,
  'Kaufland': Kaufland,
  'Penny': Penny,
  'Profi': Profi,
};

Map<String, String> Auchan = <String, String>{
  supermarketCategories[0]: 'https://tazz.ro/timisoara/auchan-hypermarket-timisoara/legume-si-fructe/9063/2355527/dpt',
  supermarketCategories[1]:
      'https://tazz.ro/timisoara/auchan-hypermarket-timisoara/macelarie-si-peste/9063/2355685/dpt',
  supermarketCategories[2]:
      'https://tazz.ro/timisoara/auchan-hypermarket-timisoara/lactate-branzeturi-si-oua/9063/2355796/dpt',
  supermarketCategories[3]:
      'https://tazz.ro/timisoara/auchan-hypermarket-timisoara/mezeluri-si-specialitati/9063/2356037/dpt',
  supermarketCategories[4]:
      'https://tazz.ro/timisoara/auchan-hypermarket-timisoara/bauturi-non-alcoolice/9063/2356141/dpt',
  supermarketCategories[5]: 'https://tazz.ro/timisoara/auchan-hypermarket-timisoara/bauturi-alcoolice/9063/2356655/dpt',
};

Map<String, String> Carrefour = <String, String>{
  supermarketCategories[0]: 'https://tazz.ro/timisoara/carrefour-timisoara-9113-/fructe-si-legume/21098/2249517/dpt',
  supermarketCategories[1]: 'https://tazz.ro/timisoara/carrefour-timisoara-9113-/macelarie-si-peste/21098/2249519/dpt',
  supermarketCategories[2]: 'https://tazz.ro/timisoara/carrefour-timisoara-9113-/mezeluri/21098/2249520/dpt',
  supermarketCategories[3]:
      'https://tazz.ro/timisoara/carrefour-timisoara-9113-/lactate-branzeturi-si-oua/21098/2249518/dpt',
  supermarketCategories[4]: 'https://tazz.ro/timisoara/carrefour-timisoara-9113-/bauturi-nealcoolice/21098/2248355/dpt',
  supermarketCategories[5]: 'https://tazz.ro/timisoara/carrefour-timisoara-9113-/bauturi-alcoolice/21098/2248357/dpt',
};

Map<String, String> Kaufland = <String, String>{
  supermarketCategories[0]: 'https://tazz.ro/timisoara/kaufland-timisoara/legume-si-fructe/3865/1800340/dpt',
  supermarketCategories[1]: 'https://tazz.ro/timisoara/kaufland-timisoara/macelarie-si-peste/3865/1800367/dpt',
  supermarketCategories[2]: 'https://tazz.ro/timisoara/kaufland-timisoara/mezeluri-si-specialitati/3865/1800414/dpt',
  supermarketCategories[3]: 'https://tazz.ro/timisoara/kaufland-timisoara/lactate-branzeturi-si-oua/3865/1800380/dpt',
  supermarketCategories[4]: 'https://tazz.ro/timisoara/kaufland-timisoara/bauturi-non-alcoolice/3865/1800425/dpt',
  supermarketCategories[5]: 'https://tazz.ro/timisoara/kaufland-timisoara/bauturi-alcoolice/3865/1800448/dpt',
};

Map<String, String> Penny = <String, String>{
  supermarketCategories[0]: 'https://tazz.ro/timisoara/penny/legume-si-fructe/14722/2345386/dpt',
  supermarketCategories[1]: 'https://tazz.ro/timisoara/penny/macelarie-si-peste/14722/2345396/dpt',
  supermarketCategories[2]: 'https://tazz.ro/timisoara/penny/mezeluri-si-specialitati/14722/2345439/dpt',
  supermarketCategories[3]: 'https://tazz.ro/timisoara/penny/lactate-branzeturi-si-oua/14722/2345409/dpt',
  supermarketCategories[4]: 'https://tazz.ro/timisoara/penny/bauturi-non-alcoolice/14722/2345448/dpt',
  supermarketCategories[5]: 'https://tazz.ro/timisoara/penny/bauturi-alcoolice/14722/2345460/dpt',
};

Map<String, String> Profi = <String, String>{
  supermarketCategories[0]: 'https://tazz.ro/timisoara/profi/fructe-si-legume/19615/2094143/dpt',
  supermarketCategories[1]: 'https://tazz.ro/timisoara/profi/carne/19615/2094166/cat',
  supermarketCategories[2]: 'https://tazz.ro/timisoara/profi/mezeluri/19615/2094147/dpt',
  supermarketCategories[3]: 'https://tazz.ro/timisoara/profi/lactate-si-oua/19615/2094146/dpt',
  supermarketCategories[4]: 'https://tazz.ro/timisoara/profi/bauturi-non-alcoolice/19615/2094149/dpt',
  supermarketCategories[5]: 'https://tazz.ro/timisoara/profi/bauturi-alcoolice/19615/2094150/dpt',
};
