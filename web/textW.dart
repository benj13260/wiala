library wiala.web.text;

class TextW {
  static const String menu = 'menu';
  static const String fond = 'fond';
  static const String site = 'site';
  static const String wines = 'wines';
  static const String domain = 'domain';
  static const String team = 'team';
  static const String rewards = 'rewards';
  static const String bnb = 'bnb';
  static const String location = 'location';
  static const String contact = 'contact';
  static const String news = 'news';
  static const String order = 'order';

  static const String fr = 'fr';
  static const String en = 'en';
  static const String ge = 'ge';

  // Bottle or Pack brief
  static const String ca = 'ca';
  static const String bo = 'bo';

  //Wine brief
  static Map<String, String> wine_ref = {
    're': 'Rebelle',
    'ha': 'Harmonie',
    'im': 'L’imprevisible',
    'se': 'L’imprevisible',
    'ms': 'Muscat Sec',
    'mr': 'Muscat de Rivesaltes',
    'gr': 'Gris de gris'
  };

  static String lang;

  static setLang(String l1, String l2) {
    lang = null;
    if (l2 != null) {
      if (l2.length == 2) {
        lang = l2;
      } else {
        lang = en;
      }
    }
    if (lang == null) {
      if (l1.length == 2) {
        lang = l1;
      } else if (l1.length > 2) {
        lang = l1.substring(0, 2);
      } else {
        lang = en;
      }
    }
    if (lang == null) {
      lang = fr;
    }
  }

  static Object getTxt(page) {
    var res;
    switch (page) {
      case menu:
        if (lang == 'fr') {
          res = TextW.menu_fr;
        } else if (lang == 'ge') {
          res = TextW.menu_ge;
        } else {
          res = TextW.menu_en;
        }
        break;
      case site:
        if (lang == 'fr') {
          res = TextW.site_fr;
        } else if (lang == 'ge') {
          res = TextW.site_ge;
        } else {
          res = TextW.site_en;
        }
        break;

      case wines:
        if (lang == 'fr') {
          res = TextW.wines_fr;
        } else if (lang == 'ge') {
          res = TextW.wines_ge;
        } else {
          res = TextW.wines_en;
        }
        break;
      case domain:
        if (lang == 'fr') {
          res = TextW.domain_fr;
        } else if (lang == 'ge') {
          res = TextW.domain_ge;
        } else {
          res = TextW.domain_en;
        }
        break;
      case team:
        if (lang == 'fr') {
          res = TextW.team_fr;
        } else if (lang == 'ge') {
          res = TextW.team_ge;
        } else {
          res = TextW.team_en;
        }
        break;

      case rewards:
        if (lang == 'fr') {
          res = TextW.rewards_fr;
        } else if (lang == 'ge') {
          res = TextW.rewards_ge;
        } else {
          res = TextW.rewards_en;
        }
        break;
      case bnb:
        if (lang == 'fr') {
          res = TextW.bnb_fr;
        } else if (lang == 'ge') {
          res = TextW.bnb_ge;
        } else {
          res = TextW.bnb_en;
        }
        break;
      case location:
        if (lang == 'fr') {
          res = TextW.location_fr;
        } else if (lang == 'ge') {
          res = TextW.location_ge;
        } else {
          res = TextW.location_en;
        }
        break;
      case contact:
        if (lang == 'fr') {
          res = TextW.contact_fr;
        } else if (lang == 'ge') {
          res = TextW.contact_ge;
        } else {
          res = TextW.contact_en;
        }
        break;
      case order:
        if (lang == 'fr') {
          res = TextW.order_fr;
        } else if (lang == 'ge') {
          res = TextW.order_ge;
        } else {
          res = TextW.order_en;
        }
        break;
      default:
        if (lang == 'fr') {
          res = TextW.wines_fr;
        } else if (lang == 'ge') {
          res = TextW.wines_ge;
        } else {
          res = TextW.wines_en;
        }
    }
    return res;
  }

  static List<Map<String, String>> menu_fr = [
    {'id': 'team', 'text': 'Le vigneron', 'icon': 'maps:map'},
    {'id': 'domain', 'text': 'Le Domaine', 'icon': 'social:domain'},
    {'id': 'wines', 'text': 'Les Vins', 'icon': 'maps:local-bar'},
    {'id': 'rewards', 'text': 'Les Distinctions', 'icon': 'places:ac-unit'},
    {'id': 'bnb', 'text': 'Le Gîte', 'icon': 'maps:hotel'},
    /*{'id': 'location', 'text': 'Les Environs', 'icon': 'maps:place'}, */
    {'id': 'contact', 'text': 'Contact', 'icon': 'communication:contacts'},
    {'id': 'order', 'text': 'Commande', 'icon': 'icons:shopping-basket'}
  ];

  static List<Map<String, String>> menu_en = [
    {'id': 'team', 'text': 'The Wine-Grower', 'icon': 'maps:map'},
    {'id': 'domain', 'text': 'The Domain', 'icon': 'social:domain'},
    {'id': 'wines', 'text': 'Wines', 'icon': 'maps:local-bar'},
    {'id': 'rewards', 'text': 'Awards', 'icon': 'places:ac-unit'},
    {'id': 'bnb', 'text': 'BnB', 'icon': 'maps:hotel'},
    /*{'id': 'location', 'text': 'Location', 'icon': 'maps:place'}, */
    {'id': 'contact', 'text': 'Contact Us', 'icon': 'communication:contacts'},
    {'id': 'order', 'text': 'Order', 'icon': 'icons:shopping-basket'}
  ];

  static List<Map<String, String>> menu_ge = [
    {'id': 'team', 'text': 'Der Winzer', 'icon': 'maps:map'},
    {'id': 'domain', 'text': 'Das Gebiet', 'icon': 'social:domain'},
    {'id': 'wines', 'text': 'Die Weine', 'icon': 'maps:local-bar'},
    {'id': 'rewards', 'text': 'Die Auszeichnungen', 'icon': 'places:ac-unit'},
    {'id': 'bnb', 'text': 'Fremdenzimmer', 'icon': 'maps:hotel'},
    /*{'id': 'location', 'text': 'Location', 'icon': 'maps:place'}, */
    {'id': 'contact', 'text': 'Kontakt.', 'icon': 'communication:contacts'},
    {'id': 'order', 'text': 'Bestellung', 'icon': 'icons:shopping-basket'}
  ];

  static Map<String, String> site_fr = {'news': 'Actualités'};
  static Map<String, String> site_en = {'news': 'News'};
  static Map<String, String> site_ge = {'news': 'News'};

  static Map<String, String> wines_fr = {
    'title_fin': 'éWasion',
    'subtitle_fin':
    'Cette gamme rassemble des vins à boire en apéritif, avec de la cuisine simple, des grillades, des poissons',
    'title_exp': 'Expression',
    'subtitle_exp':
    'Dans cette gamme vous retrouverez toute l’expression de nos terroirs. Ces 3 AOP Fitou ont des profils différents',
    'cepages': 'Cépages: ',
    'age': 'Age des vignes: ',
    'sol': 'Sol: ',
    'degust': 'Dégustation: ',
    'accords': 'Accords: ',
    'rewards': 'Distinctions: ',
    'muscatsec': 'éWasion blanche',
    'muscatsec_sub': 'Frais et fruité',
    'muscatsec_desc':
    'Le muscat est traditionnellement utilisé dans les vins doux naturels. Vinifié en sec, ses arômes typiques lui confèrent une jolie fraîcheur et une grande présence aromatique. Le Muscat sec ressemble aux arômes du muscat, le sucre en moins.',
    'muscatsec_app': 'IGP Vallée du Torgan',
    'muscatsec_1': '100% Muscat petit grains.',
    'muscatsec_2': '20 ans.',
    'muscatsec_3': 'Galets roulés argilo-calcaires.',
    'muscatsec_4':
    'Robe claire et transparente. Arômes de Muscats très présents accompagnés d’une jolie acidité qui contribue à sa fraîcheur.',
    'muscatsec_5':
    'Toasts salés, salades composées, tartes aux légumes, poissons, volailles, salades de fruits... Servir entre 8 et 10 degrés.',
    'muscatriv': 'Muscat de Rivesaltes',
    'muscatriv_sub': 'Doux et fruité',
    'muscatriv_desc':
    'Le Muscat de Rivesaltes est l’alliance du soleil et des fruits. D’une grande puissance aromatique, on retrouve dans le vin tout le croquant du raisin. Sa douceur provient des sucres du raisin qui n’ont pas totalement fermenté.',
    'muscatriv_app': 'Vin doux naturel, AOP',
    'muscatriv_1': 'Muscat petit grains.',
    'muscatriv_2': '20 ans.',
    'muscatriv_3': 'Galets roulés argilo-calcaires.',
    'muscatriv_4':
    'Grande puissance aromatique, parfums d’abricot, de mangue et de sureau. Peu sucré pour un vin doux.',
    'muscatriv_5':
    'Apéritif, foie gras, tartes aux fruits, chocolat... Servir entre 8 et 10 degrés.',
    'gris': 'Gris de gris',
    'gris_sub': 'Frais et fruité',
    'gris_desc': 'Disponible après vendange 2016',
    'gris_app': 'IGP Vallée du Torgan',
    'rebelle': 'Rebelle',
    'rebelle_sub': 'Vif et Fruité',
    'rebelle_12': 'Rebelle 2012',
    'rebelle_121': 'A.O.P Fitou',
    'rebelle_desc':
    'Issu du terroir de schiste, Rebelle est un vin qui n’obéit à aucune règle. Vif et fruité, il se veut du terroir et incarne la fraicheur du vent, la plénitude du soleil. Vin des quatre saisons, il vous accompagnera avec sa fougue sous la tonnelle l’été et au coin du feu l’hiver.',
    'rebelle_12_1':
    'Sélection de Carignan vieilles vignes, Grenache noir & Syrah (respectivement 40, 40 et 20%).',
    'rebelle_12_2':
    'Plus de 20 ans pour le Carignan et le Grenache, plus de 10 ans pour la Syrah.',
    'rebelle_12_3':
    'Schistes bleus et rouges en coteaux à 300m d’altitude pour Grenache et Carignan. Argilo-calcaire pour la Syrah.',
    'rebelle_12_4':
    'Robe fuchsia aux accents violacés. En bouche il développe des arômes secondaires de noisette, de petits fruits rouges associés à des tanins prometteurs. On y retrouve la fraicheur des vins de schiste.',
    'rebelle_12_5':
    'Viandes grillées, tartes aux légumes, gibier, fromage. Servir entre 16 et 18 degrés.',
    'harmonie': 'Harmonie',
    'harmonie_sub': 'Fin et gourmand',
    'harmonie_12': 'Harmonie 2012',
    'harmonie_121': 'A.O.P Fitou',
    'harmonie_desc':
    'On retrouve dans la bouteille la vie du sol et les caprices du temps. Dans ce vin issu du terroir de galets roulés, on retrouve le caractère du Carignan, la rondeur du Grenache et le fruité de la Syrah, une Harmonie dans ce Fitou fin et gourmand.',
    'harmonie_12_1':
    'Sélection de Carignan Vieilles vignes, Grenache noir & Syrah (respectivement 35, 25 et 40%).',
    'harmonie_12_2':
    '50 ans pour le Carignan, 60 ans pour le Grenache et 20 pour la Syrah.',
    'harmonie_12_3':
    'Galets roulés, argilo-calcaires sur coteaux, exposition sud-est.',
    'harmonie_12_4':
    'La robe dominée par le bleu est la caractéristique de ce vin. Issu de raisins à pleine maturité il est promis à un grand avenir et présente une bonne structure tannique accompagnée d’une matière dense, du fruit et surtout une architecture imposante, parfois sévère.',
    'harmonie_12_5':
    'Viandes rouges, cuisinées ou grillées, gibier, fromage. Servir entre 16 et 18 degrés.',
    'harmonie_13': 'Harmonie 2013',
    'harmonie_131': 'A.O.P Fitou',
    'harmonie_13_1':
    'Sélection de Carignan Vieilles vignes, Grenache noir & Syrah (Respectivement 40, 40 et 20%).',
    'harmonie_13_2':
    '50 ans pour le Carignan, 60 ans pour le Grenache et 20 pour la Syrah.',
    'harmonie_13_3':
    'Galets roulés, argilo-calcaires sur coteaux, exposition sud-est.',
    'harmonie_13_4':
    'Vin limpide avec un joli disque rouge clair. Notes de griottes au nez. Ce vin exprime la parfaite harmonie de nos cépages traditionnels, Grenache et Carignan, la Syrah y ajoute des arômes de violette.',
    'harmonie_13_5':
    'Viandes rouges, cuisinées ou grillées, gibier, fromage. Servir entre 16 et 18 degrés.',
    'harmonie_13_6':
    'Ambassadeur Fitou pour l’année 2016, Sélectionné par le guide Hachette des Vins 2016.',
    'imprevisible': 'L’imprevisible',
    'imprevisible_sub': 'Elégant et généreux',
    'imprevisible_09': 'L’imprevisible 2009',
    'imprevisible_091': 'A.O.P Fitou',
    'imprevisible_desc':
    'L’imprévisible est l’alchimie entre le terroir, le climat et les raisins. C’est après la vinification que se révèle ce vin d’exception qui exprime le meilleur du fruit de la Syrah, de la puissance du Carignan et de la douceur du Grenache. Ce Fitou élégant et généreux est un vin de garde exceptionnel.',
    'imprevisible_09_1':
    'Sélection de Carignan Vieilles vignes, Grenache noir & Syrah (Respectivement 35, 25 et 40%).',
    'imprevisible_09_2':
    'Plus de 50 ans pour le Carignan, plus de 30 ans pour le Grenache dont une parcelle centenaire et 20 ans pour la Syrah.',
    'imprevisible_09_3':
    'Galets roulés, argilo-calcaires sur coteaux et schistes en coteaux.',
    'imprevisible_09_4':
    'Parfums de fruits mûrs qui laissent place à un corps épicé donnant une sensation très agréable en bouche. Les arômes floraux de la syrah se combinent à la douceur du Grenache et préparent le terrain au Carignan qui peut ainsi s’épanouir. Vin apte au vieillissement.',
    'imprevisible_09_5':
    'Viandes rouges, cuisinées ou grillées, gibier, fromage. Servir entre 16 et 18 degrés.',
    'imprevisible_09_6': 'Médaille d’argent Decanter World Wine Awards 2012.',
  };

  static Map<String, String> wines_en = {
    'title_fin': 'The éWasion Range',
    'subtitle_fin':
    'This range comprises wines to be drunk as an aperitif, with simple cuisine, fish ...',
    'title_exp': 'The Expression Range',
    'subtitle_exp':
    'In this range you will find the expression of our terroirs. These 3 AOP Fitou have very different profiles',
    'cepages': 'Grape varieties: ',
    'age': 'Vine age: ',
    'sol': 'Soil: ',
    'degust': 'Tasting: ',
    'accords': 'Partnerships: ',
    'rewards': 'Awards: ',
    'muscatsec': 'éWasion blanche',
    'muscatsec_sub': 'Fresh and fruity',
    'muscatsec_desc':
    'Muscat is traditionally used in natural sweet wines. Being vinified as a dry wine, its typical flavours keep it fresh whilst offering a certain aromatic presence. Dry Muscat provides the flavour of muscat, without the sugar',
    'muscatsec_app': 'IGP Vallée du Torgan',
    'muscatsec_1': '100% Muscat petit grains',
    'muscatsec_2': '20 years',
    'muscatsec_3': 'Rolled pebble, clay-limestone soil',
    'muscatsec_4':
    'Pale, transparent robe. Strong Muscat flavour, accompanied by slight acidity which adds to its freshness',
    'muscatsec_5':
    'Savory toasts, salads, vegetable tarts, fish, poultry, fruit salads... Serve between 8 and 10 degrees',
    'muscatriv': 'Muscat de Rivesaltes',
    'muscatriv_sub': 'Light and fruity',
    'muscatriv_desc':
    'The Muscat de Rivesaltes is the union of sun and fruit. A wine with very powerful aromas, and the crispness of the grape. Its softness comes from the sugars in the grapes which have not fully fermented',
    'muscatriv_app': 'Natural sweet wine, AOP',
    'muscatriv_1': 'Muscat petit grains',
    'muscatriv_2': '20 years',
    'muscatriv_3': 'Rolled pebble, clay-limestone soil',
    'muscatriv_4':
    'A wine with very powerful aromas, notes of apricot, mango and elderflower. Even though it is a sweet wine, it is not overly sweet',
    'muscatriv_5':
    'Aperitif, foie gras, fruit tarts, chocolate... Serve between 8 and 10 degrees',
    'gris': 'Gris de Gris',
    'gris_sub': 'Fresh and fruity',
    'gris_desc': 'Available after the 2016 harvest',
    'gris_app': 'IGP Vallée du Torgan',
    'rebelle': 'Rebelle',
    'rebelle_sub': 'Lively and fruity',
    'rebelle_12': 'Rebelle 2012',
    'rebelle_121': 'A.O.P Fitou',
    'rebelle_desc':
    'Grown in shale soil, Rebel is a wine that does not obey any rule. Lively and fruity, it is typical of its local region and embodies the freshness of the wind, the fullness of the sun. A wine of the four seasons, it provides its spirit in the arbour in the summer and by the fireplace in the winter',
    'rebelle_12_1':
    'Selection of old Carignan vines, Grenache noir & Syrah (40, 40 and 20% respectively)',
    'rebelle_12_2':
    'Over 20 years for the Carignan and the Grenache, and more than 10 years for the Syrah',
    'rebelle_12_3':
    'Blue and red shale hillsides at an altitude of 300m for the Grenache and Carignan. Clay-limestone for the Syrah',
    'rebelle_12_4':
    'On the palate, secondary flavours of hazelnut and red berries associated with promising tannins develop. We find the freshness of shale wines',
    'rebelle_12_5':
    'Grilled meat, vegetable tarts, game, cheese... Serve between 16 and 18 degrees',
    'harmonie': 'Harmonie',
    'harmonie_sub': 'Refined and voluptuous ',
    'harmonie_12': 'Harmonie 2012',
    'harmonie_121': 'A.O.P Fitou',
    'harmonie_desc':
    'The life of the soil and the whims of time can be found in this bottle. This wine is grown in rolled pebble soil, the character of Carignan, the roundness of Grenache and the fruity notes of the Syrah can all be found in harmony in this refined and voluptuous Fitou',
    'harmonie_12_1':
    'Selection of old Carignan vines, Grenache noir & Syrah (35, 25 and 40% respectively)',
    'harmonie_12_2':
    '50 years for the Carignan, 60 years for the Grenache and 20 years for the Syrah',
    'harmonie_12_3':
    'Rolled pebble, clay-limestone soil on south-easterly facing hillsides',
    'harmonie_12_4':
    'The robe, dominated by blue tones, is characteristic of this wine. Produced from fully ripened grapes, it has good tannic structure accompanied by a dense fruity body and, above all, an imposing architecture, sometimes severe',
    'harmonie_12_5':
    'Red meat, grilled or cooked otherwise, game, cheese. Serve between 16 and 18 degrees',
    'harmonie_13': 'Harmonie 2013',
    'harmonie_131': 'A.O.P Fitou',
    'harmonie_13_1':
    'Selection of old Carignan vines, Grenache noir & Syrah (40, 40 and 20% respectively)',
    'harmonie_13_2':
    '50 years for the Carignan, 60 years for the Grenache and 20 years for the Syrah',
    'harmonie_13_3':
    'Rolled pebble, clay-limestone soil on south-easterly facing hillsides',
    'harmonie_13_4':
    'Clear wine with a nice light red disk. Nose of morello cherries. This wine expresses the perfect harmony of our traditional grapes, the Grenache and Carignan, to which the Syrah adds aromas of violets',
    'harmonie_13_5':
    'Red meat, grilled or cooked otherwise, game, cheese. Serve between 16 and 18 degrees',
    'harmonie_13_6':
    'Fitou ambassador for 2016. Selected by the Hachette wine guide 2016',
    'imprevisible': 'L’imprevisible',
    'imprevisible_sub': 'Elegant and generous',
    'imprevisible_09': 'L’imprevisible 2009',
    'imprevisible_091': 'A.O.P Fitou',
    'imprevisible_desc':
    'L’imprévisible embodies the alchemy between the soil, climate and grapes. It is after the vinification that this exceptional wine is revealed, expressing the best fruitiness of the Syrah, the power of the Carignan and sweetness of the Grenache. This elegant and generous Fitou is an exceptional wine for aging',
    'imprevisible_09_1':
    'Selection of old Carignan vines, Grenache noir & Syrah (35, 25 and 40% respectively)',
    'imprevisible_09_2':
    'Over 50 years for the Carignan, over 30 years for the Grenache of which a 100 year old plot and 20 years for the Syrah',
    'imprevisible_09_3':
    'Rolled pebble, clay-limestone soil on hillsides and shale',
    'imprevisible_09_4':
    'Fragrances of ripe fruit that give way to a spicy body creating a very pleasant sensation in the mouth. Floral aromas of the Syrah combine with the sweetness of the Grenache, allowing the Carignan to flourish. This wine is suitable for ageing',
    'imprevisible_09_5':
    'Red meat, grilled or cooked otherwise, game, cheese. Serve between 16 and 18 degrees',
    'imprevisible_09_6': 'Silver award at the Decanter World Wine Awards 2012',
  };

  static Map<String, String> wines_ge = {
    'title_fin': 'éWasion',
    'subtitle_fin':
    'Diese Produktpalette beinhaltet Weine, die zum Aperitif angeboten werden, oder zu einfachen Gerichten, gegrilltem Fleisch oder Fisch',
    'title_exp': 'Expression',
    'subtitle_exp':
    'Diese Produkte bringen unser Terroir zum Ausdruck. Diese 3 AOP (geschützte Herkunftsbezeichnung) Fitou haben ganz unterschiedliche Profile',
    'cepages': 'Rebsorten: ',
    'age': 'Alter der Reben: ',
    'sol': 'Boden: ',
    'degust': 'Verkostung: ',
    'accords': 'Abstimmungen: ',
    'rewards': 'Auszeichnungne: ',
    'muscatsec': 'éWasion blanche',
    'muscatsec_sub': 'Frisch und fruchtig',
    'muscatsec_desc':
    'Muskat wird herkömmlicherweise zu natürlichen süßen Weinen verarbeitet. Zu trockenem Wein verarbeitet geben ihm seine typischen Arome eine angenehme Frische und eine umfangreiche aromatische Ausstrahlung. Der trockene Muskat beinhaltet die Arome des Muskats, aber ohne den Zucker',
    'muscatsec_app': 'IGP (geschützte geografische Angabe) Vallée du Torgan',
    'muscatsec_1': '100% Muskat kleine Trauben',
    'muscatsec_2': '20 Jahre',
    'muscatsec_3': 'Ton- und kalkhaltige Kiesel',
    'muscatsec_4':
    'Helle durchsichtige Farbe. Sehr starke Muskataromen, mit einer leichten Säure, was diesem Wein seine Frische gibt.',
    'muscatsec_5':
    'Salzige Häppchen, gemischte Salate, Gemüsekuchen, Fisch, Geflügel, Obstsalat... Die Weintemperatur beim Servieren sollte zwischen 8 und 10 Grad liegen',
    'muscatriv': 'Muscat de Rivesaltes',
    'muscatriv_sub': 'Süß und fruchtig',
    'muscatriv_desc':
    'Der Muscat de Rivesaltes ist die Allianz zwischen der Sonne und den Früchten. Das starke Aroma dieses Weines erlaubt es, das Knackige der Trauben zu erleben. Seine Süße kommt vom Zucker der Trauben, die  nicht vollständig gegärt sind.',
    'muscatriv_app':
    'Natürlicher SÜßwein, AOP (geschützte Herkunftsbezeichnung)',
    'muscatriv_1': 'Muskat kleine Trauben',
    'muscatriv_2': '20 Jahre',
    'muscatriv_3': 'Ton- und kalkhaltige Kiesel',
    'muscatriv_4':
    'Voller aromatischer Geschmack, mit Aprikosen-, Mango- und Holunderaroma. Ein Süßwein, der nicht so süß ist',
    'muscatriv_5':
    'Aperitif, foie gras, Obstorten, Schokolade... Die Weintemperatur beim Servieren sollte zwischen 8 und 10 Grad liegen',
    'gris': 'Gris de gris',
    'gris_sub': 'Frisch und fruchtig',
    'gris_desc': 'Verfügbar nach der Weinlese 2016',
    'gris_app': 'IGP (geschützte geografische Angabe) Vallée du Torgan',
    'rebelle': 'Rebelle',
    'rebelle_sub': 'Lebendig und fruchtig',
    'rebelle_12': 'Rebelle 2012',
    'rebelle_121': 'A.O.P (geschützte Herkunftsbezeichnung) Fitou',
    'rebelle_desc':
    'Rebelle kommt aus dem Schieferterroir und ist ein Wein der keiner Regel gehorcht. Lebendig und fruchtig beinhaltet er die Frische des Windes und die FÜlle der Sonne. Ein Wein fÜr alle vier Jahreszeiten; er wird sie mitreissen, sei es im Sommer in der Gartenlaube, oder im Winter am Kaminfeuer',
    'rebelle_12_1':
    'Auswahl Carignan alte Reben, Grenache noir & Syrah (jeweils 40, 40 und 20%)',
    'rebelle_12_2':
    'Mehr als 20 Jahre für Carignan und Grenache, mehr als 10 Jahre für Syrah',
    'rebelle_12_3':
    'Blauer und roter Schiefer, am Hang in 300 Meter Höhe für Grenache und Carignan. Ton- und kalkhaltig für Syrah',
    'rebelle_12_4':
    'Fuchsienrote Farbe, leicht ins Violett. Im Mund entwickelt er sekundäre Aromen, von Haselnüssen, roten Beeren, sowie versprechende Tannine. Man empfindet hier die Frische der Schieferweine',
    'rebelle_12_5':
    'Gegrilltes Fleisch, Gemüsekuchen, Wild, Käse. Die Weintemperatur sollte zwischen 16 und 18 Grad liegen',
    'harmonie': 'Harmonie',
    'harmonie_sub': 'Fein und vollmundig',
    'harmonie_12': 'Harmonie 2012',
    'harmonie_121': 'A.O.P (geschützte Herkunftsbezeichnung) Fitou',
    'harmonie_desc':
    'In dieser Flasche findet man das Leben des Bodens und die Launen des Wetters. Dieser Wein, aus dem Kieselterroir, beinhaltet den Charakter des Carignan, die Vollmundigkeit des Grenache und das Fruchtige der Syrah; eine Harmonie in diesem feinen und vollmundigen Fitou',
    'harmonie_12_1':
    'Auswahl an Carignan alten Reben, Grenache noir & Syrah (jeweils 35, 25 und 40%)',
    'harmonie_12_2':
    '50 Jahre für Carignan, 60 ans für Grenache und 20 für Syrah',
    'harmonie_12_3':
    'Ton- und kalkhaltige Kiesel an den Hängen, Ausrichtung SÜd-Ost',
    'harmonie_12_4':
    'Die Farbe, in der Blau dominiert, ist die Eigentümlichkeit dieses Weines. Aus vollgereiften Trauben gepresst hat er ganz bestimmt eine große Zukunft. Sehr gerbstoffhaltig und von hoher Dichte, fruchtig und von imposanter Architektur, manchmal streng',
    'harmonie_12_5':
    'Rotes Fleisch, gekocht oder gegrillt, Wild, Käse. Die Weintemperatur sollte zwischen 16 und 18 Grad liegen',
    'harmonie_13': 'Harmonie 2013',
    'harmonie_131': 'A.O.P (geschützte Herkunftsbezeichnung) Fitou',
    'harmonie_13_1':
    'Auswahl an Carignan alten Reben, Grenache noir & Syrah (jeweils 40, 40 und 20%)',
    'harmonie_13_2':
    '50 Jahre für Carignan, 60 Jahre für Grenache und 20 für Syrah',
    'harmonie_13_3':
    'Ton- und kalkhaltige Kiesel an den Hängen, Ausrichtung Süd-Ost',
    'harmonie_13_4':
    'Ein Klarer Wein mit einer schönen hellroten Färbung. Sauerkirschen als Duftnote. Dieser Wein entspricht der perfekten Harmonie unserer traditionellen Traubensorten, Grenache und Carignan, und Syrah fügt dem ein leichtes Veilchenaroma hinzu',
    'harmonie_13_5':
    'Rotes Fleisch, gekocht oder gegrillt, Wild, Käse. Die Weintemperatur sollte zwischen 16 und 18 Grad liegen',
    'harmonie_13_6':
    'Fitou Botschafter für das Jahr 2016, auserwählt vom Guide Hachette des Vins 2016',
    'imprevisible': 'L’imprevisible',
    'imprevisible_sub': 'Elegant und großzügig',
    'imprevisible_09': 'L’imprevisible 2009',
    'imprevisible_091': 'A.O.P (geschützte Herkunftsbezeichnung) Fitou',
    'imprevisible_desc':
    'L’imprévisible ist die Alchemie zwischen dem Terroir, dem Klima und den Trauben. Nach der Weinbereitung kommt das Beste der Frucht der Syrah zur Geltung, die Stärke des Carignan und die Süße des Grenache. Dieser elegante und großzügige Fitou ist ein außergewöhnlicher Wein zur langen Flaschenlagerung',
    'imprevisible_09_1':
    'Auswahl an Carignan alten Reben, Grenache noir & Syrah (jeweils 35, 25 und 40%)',
    'imprevisible_09_2':
    'Mehr als 50 Jahre für Carignan, mehr als 30 Jahre für Grenache, wovon eine hundertjährige Parzelle, und 20 Jahre für Syrah',
    'imprevisible_09_3':
    'Ton- und kalkhaltige Kiesel an den Hängen und Schiefer in den Hängen',
    'imprevisible_09_4':
    'Die Aromen reifer Früchte lassen dann eine gewürzte Schwere durch, was im Mund sehr angenehm ist. Die blumigen Aromen der Syrah vermischen sich mit der Süße des Grenache und lassen dann dem Carignan die Möglichkeit, sich zu entwickeln. Ein Wein, der gut altert',
    'imprevisible_09_5':
    'Rotes Fleisch, gekocht oder gegrillt, Wild, Käse. Die Weintemperatur sollte zwischen 16 und 18 Grad liegen',
    'imprevisible_09_6': 'Silbermedaille Decanter World Wine Awards 2012',
  };

  static Map<String, String> domain_fr = {
    'domain_cave_title': 'La cave',
    'domain_cave':
    'Logé dans l’ancienne distillerie du village, le chai de vinification est principalement composé de petites cuves béton, permettant des vinifications adaptées à chaque parcelle. Pour élever certains vins, un parc de barriques complète l’outil de vinification.',
    'domain_wine_title': 'Le vignoble',
    'domain_wine':
    'Le vignoble s’étend sur 7,5 ha dont 7 ha en AOC Fitou et une petite parcelle de Muscat de Rivesaltes. Il est situé sur les communes de Tuchan et Paziols dans le Haut Fitou, à l’intérieur des terres et à égale distance de Narbonne et Perpignan. L’une des richesses du domaine est son terroir. Deux principaux îlots sont établis sur des terroirs complémentaires : Galets roulés argilo-calcaires pour les parcelles situées sur des coteaux plein Sud et Schistes pour les parcelles en altitude.',
    'domain_culture_title': 'La culture',
    'domain_culture':
    'La culture de la vigne s’inscrit dans une démarche écologique respectueuse de la plante et de l’environnement:',
    'domain_culture_1': 'Travail de la terre',
    'domain_culture_2': 'Fertilisation organique',
    'domain_culture_3': 'Raisonnement des traitements',
    'domain_culture_4': 'Vendanges manuelles',
    'domain_grow_title': 'La Vinification',
    'domain_grow':
    'Selon le millésime, la Syrah et le Carignan sont élevés en barriques de 400 litres et de 225 litres, chêne exclusivement. Le parc de barriques est renouvelé par quart tous les ans ce qui a pour conséquence d’apporter peu de boisé au vin, qui cependant bénéficie d’une micro-oxygénation naturelle qui arrondit les tanins et fond les arômes. Avant la mise en bouteille les vins sont légèrement filtrés et contiennent très peu de sulfites (< 40 mg)',
    'team': 'L’équipe',
    'team_1':
    'Hubert a débuté son apprentissage dès l’age de 15 ans, puis c’est installé en 2001 sur l’exploitation familiale. Son épouse Catherine elle aussi issue d’une famille vigneronne, exerce le métier de conseillère viticole après avoir obtenu un BSTA Viticulture Œnologie et une licence Agriculture Raisonnée.',
    'team_2':
    'Marie-Caroline à Paris, Benjamin en Suisse, Anne au Québec , Barbara en Allemagne et Cara en Angleterre sont nos relais pour faire connaître les vins au-delà de la région.',
    'bnb': 'Le Gîte',
    'bnb_1': 'Gîte pour 5 personnes à Tuchan situé au cœur des Hautes Corbières, près des Châteaux Cathares, dans un environnement sauvage et préservé.',
    'bnb_2': 'Le gîte, se situe au cœur de notre domaine viticole, il profite d’un grand jardin attenant incluant un coin potager, du mobilier de jardin et un barbecue.<br>Il est composé de 2 chambres spacieuses, d’une belle pièce principale, d’une grande salle d’eau et de WC séparés. Les chambres sont équipées de 2 lits en 160 et d’un lit en 90.<br><br>Sur place vous profiterez des nombreuses promenades pédestres et VTT, le village dispose de plusieurs commerces (superette, boulangeries, pharmacie…), d’un tennis et d’une piscine municipale. Vous trouverez aussi de nombreux coins de baignade dans les rivières proches. La mer est à 45 minutes, la cité de Carcassonne à 1 heure.<br><br>Visite du vignoble, du chai et dégustation de nos vins à la demande.',
    'bnb_link':'Détails et réservation'

  };

  static Map<String, String> domain_en = {
    'domain_cave_title': 'The Cellar',
    'domain_cave':
    'Housed in the village’s former distillery, the vinification cellar is mainly composed of small concrete vats, enabling the vinification to be adapted to every plot. To develop certain wines, barrels complete the vinification tools',
    'domain_wine_title': 'The Vineyard',
    'domain_wine':
    'The vineyard stretches over 7.5 ha, including 7 ha of AOC Fitou and a small plot of Muscat de Rivesaltes. It is located in the communes of Tuchan and Paziols in the Haut Fitou, inland and equidistant between Narbonne and Perpignan. One of the great assets of the domaine is its soil. Two main plots established on complementary soil: rolled pebble, clay-limestone soil on the south facing hillsides and shale for the plots at a higher altitude',
    'domain_culture_title': 'Cultivation',
    'domain_culture':
    'The vines are cultivated using a global approach which is respectful of the plant and the environment:',
    'domain_culture_1': 'Working the land',
    'domain_culture_2': 'organic fertilisation',
    'domain_culture_3': 'sustainable practices',
    'domain_culture_4': 'harvesting by hand',
    'domain_grow_title': 'Vinification',
    'domain_grow':
    'Depending on the vintage, the Syrah and Carignan are aged in 400 and 225 litre barrels, made exclusively of oak. The barrels are renewed by one quarter each year which gives only a light woodiness to the wine. The wine benefits from natural micro-oxygenation which softens the tannins and background aromas. Before bottling the wine is lightly filtered and contains very little sulphite (<40 mg)',
    'team': 'The Team',
    'team_1':
    'Hubert started his apprenticeship at the age of 15, coming to work on his parents’ domaine in 2001. His wife Catherine, also comes from a family of wine-makers and has been a wine advisor since completing her BTSA (Advanced Agricultural Technician Certificate) in viticulture-oenology and her degree in sustainable agriculture',
    'team_2':
    'Marie-Caroline in Paris, Benjamin in Switzerland, Anne in Quebec, Barbara in Germany and Cara in England are our representatives making our wines known beyond the region',
    'bnb': 'Bed and breakfast',
    'bnb_1': 'The cottage is suited for 5 persons, it is located in Tuchan at the heart of the Hautes Corbières, close to the famous Cathars castles.',
    'bnb_2': 'The cottage is right in the middle of our vineyards, the property holds a large garden including a vegetable garden.<br>It consists of 2 spacious bedrooms, a beautiful main room, a large bathroom and separate WC. The rooms are equipped with 2 large beds and a single bed.<br><br>On site you will enjoy the various hiking paths and mountain bike rides, the village has several shops (supermarket, bakery, pharmacy...), a tennis and a public swimming pool. You will also find many swimming corners in nearby rivers. The sea is 45 minutes, the city of Carcassonne 1 hour.<br><br>Tour of the vineyard, the winery and wine tasting on request.',
    'bnb_link':'Details and reservation'
  };

  static Map<String, String> domain_ge = {
    'domain_cave_title': 'Der Keller',
    'domain_cave':
    'In der ehemaligen Schnapsbrennerei des Dorfes untergebracht besteht der Weinkeller hauptsächlich aus kleinen Betontanks. Dies ermöglicht es, die Weinbereitung der Parzelle anzupassen. Der Bestand an Fässern vervollständigt die Ausstattung zur Weinbereitung, und erlaubt somit den Ausbau einiger Weine.',
    'domain_wine_title': 'Das Weinbaugebiet',
    'domain_wine':
    'Das Weinbaugebiet breitet sich über 7,5 ha, wovon 7 ha AOC Fitou und eine kleine Parzelle Muscat de Rivesaltes. Es befindet sich auf den Gemeinden Tuchan und Paziols im Haut Fitou, landeinwärts, genau zwischen Narbonne und Perpignan. Eins der Reichtümer der Domaine ist ihr Terroir. Zwei kleine Hauptinseln befinden sich auf ergänzenden Terroirs: runde ton- und kalkhaltige Kiesel für die Parzellen an den Südhängen, und Schiefer für die höher gelgenen Parzellen.',
    'domain_culture_title': 'Der Anbau',
    'domain_culture':
    'Der Anbau der Weinberge ist umweltfreundlich, sowohl gegenüber den Pflanzen als auch der Umgebung:',
    'domain_culture_1': 'Bearbeitung der Böden',
    'domain_culture_2': 'Organische DÜngung',
    'domain_culture_3': 'Durchdachte Behandlungen',
    'domain_culture_4': 'Weinlese per Hand',
    'domain_grow_title': 'Die Weinherstellung',
    'domain_grow':
    'Je nach Jahrgang werden die Syrah und der Carignan in Weinfässern, nur Eiche, von 400 und 225 Litern. Jedes Jahr wird ein Viertel des Bestands an Fässern erneuert, was dem Wein somit eine verminderte Holznote gibt, aber dennoch eine natürliche mikro-Oxydierung; dies rundet die Tannine ab, und lässt die Arome verschmelzen. Vor dem Abfüllen werden die Weine leicht gefiltert und beinhalten somit sehr wenig  Sulfite (< 40 mg)',
    'team': 'Das Team',
    'team_1':
    'Hubert ist mit 15 Jahren in die Lehre gegangen und hat sich dann 2001 auf dem Familienbetrieb niedergelassen. Seine Frau Catherine stammt auch aus einer Winzerfamilie, und arbeitet als Beraterin im Weinbau, nachdem sie ein BSTA Weinbau und Œnologie sowie eine Licence in bewusster und umweltfreundlicher Landwirtschaft.',
    'team_2':
    'Marie-Caroline in Paris, Benjamin in der Schweiz, Anne in Quebec, Barbara in Deutschland und Cara in England sind unsere Vermittler, die es uns erlauben, dass unsere Weine auch außerhalb der Region gekannt sind.',
    'bnb': 'Fremdenzimmer',
    'bnb_1': 'Ferienhaus  für 5 Personen in Tuchan im Herzen der Hautes Corbières, in der Nähe der Katharer Schlössen, in einer wilden und unberührten Umwelt.',
    'bnb_2': 'Das Haus ist im Herzen unserer Weinberg gelegen, hat einen großen Garten mit einem Gemüsegarten, ist mit schönem Gartenmöbel ausgerichtet und hat auch ein Grill.<br>Es besteht aus zwei geräumige Schlafzimmer, ein schönes Hauptraum, ein großes Bad und separatem WC.  Die Zimmer sind mit 2 160 Betten und einem 90- Bett ausgestattet.<br><br>Vor Ort  sind vielen Wander- und Mountainbike-Touren zu genießen , das Dorf hat mehrere Kleingeschäfte (Supermarkt, Bäcker, Apotheke ...) , einen Tennisplatz und ein öffentliches Schwimmbad. Sie werden auch viele Bade Ecken in der Nähe Flüsse finden . Das Meer ist 45 Minuten, die Stadt Carcassonne 1 Stunde.<br><br>Rundgang durch den Weinberg, das Weingut und Weinprobe sind auf Anfrage möglich .',
    'bnb_link': 'Detail und Reservierungen'
  };

  static Map<String, String> team_fr = {
    'history': 'Une histoire, deux familles',
    'history_1':
    'Depuis son installation sur l’exploitation familiale il y a plus de 15 ans, Hubert a toujours rêvé d’élaborer son propre vin. Une rencontre improbable avec Philippe, passionné par le monde viticole, lui a permis de réaliser ce projet.',
    'history_2':
    'Ensemble, ils ont racheté le Château Wiala en début d’année 2016, un domaine qui appartenait à Wiebke et Alain Voorons',
    'winegrower': 'Le vigneron',
    'hubert': 'Hubert Busquet',
    'hubert_1':
    'Je vis depuis le plus jeune âge au rythme de la vigne et exercer le métier de vigneron a toujours été une évidence. Enfant, j’ai accompagné mes parents dans les vignes et conduire le chenillard a été un de mes jeux favoris.',
    'hubert_2':
    'J’ai choisi d’entrer le plus tôt possible dans la vie active. Mon père m’a transmis son savoir, son expérience et m’a inculqué l’amour du travail bien fait. Il était vigneron coopérateur, j’ai pris sa suite. La coopération permet de disposer d’outils de vinification performants et d’avoir accès à du personnel qualifié. Il me restait encore une dernière étape à franchir : élaborer mes propres produits.',
    'hubert_3':
    'Wiebke et Alain Voroons ont créé Le Château Wiala. J’ai été impressionné par leur implication et le soin qu’ils mettaient à élever leur vin. Prendre leur suite est un challenge. Accompagné de ma famille et de celle de mon associé, Philippe, nous nous engageons résolument dans une démarche de qualité.',
    'hubert_4':
    'Tous les ingrédients sont réunis pour faire des produits d’exception : des terroirs qualitatifs, variés et préservés, des cépages adaptés et un chai de vinification bien équipé.',
    'hubert_5':
    'La petite taille du domaine nous permet de soigner toutes les étapes de la vigne à la bouteille, un travail artisanal qui est la garantie de produits de grande qualité.',
    'hubert_6':
    'Je souhaite que mes vins soient le reflet et l’expression de ma passion pour mon métier et du terroir dans lequel j’ai grandi.'
  };

  static Map<String, String> team_en = {
    'history': 'One story, two families',
    'history_1':
    'Ever since starting working on the family domaine more than 15 years ago, Hubert has dreamed of developing his own wine. An improbable encounter with Philippe, passionate about the world of wine, enabled him to make dreams into reality',
    'history_2':
    'Together, they bought Le Château Wiala at the beginning of 2016, a domaine previously owned by Wiebke and Alain Voorons',
    'winegrower': 'The Wine-grower',
    'hubert': 'Hubert Busquet',
    'hubert_1':
    'Since I was very young I have lived my life at the rhythm of the vines, it was always obvious to me that I should be a wine-grower. As a child I accompanied my parents in the vineyard and driving the crawler tractor was one of my favourite games',
    'hubert_2':
    'I decided to enter into working life as soon as was possible. My father passed his knowledge and experience down to me and instilled in me the love of a good job done.  He worked as part of a cooperation, and I took over from him.  A cooperation enables the use of effective vinification tools and provides access to qualified personnel. However, there was still a final step to take: develop my own products',
    'hubert_3':
    'Wiebke and Alain Voroons created Le Château Wiala. I was impressed by their commitment and diligence in developing their wine. Taking over from them will be a challenge. Alongside my family and that of my partner, Philippe, we are fully committed to a quality approach',
    'hubert_4':
    'We have all the ingredients to make exceptional products: varied and well preserved quality terroirs, adapted grape varieties and a well-equipped vinification cellar',
    'hubert_5':
    'The small size of the domaine enables us to tend to every step from the vine to the bottle; a craftsmanship which guarantees products of excellent quality',
    'hubert_6':
    'I wish for my wines to reflect and express my passion for my work and for the local area in which I grew up'
  };

  static Map<String, String> team_ge = {
    'history': 'Eine Geschichte, zwei Familien',
    'history_1':
    'Seit er sich auf dem Familienbetrieb niedergelassen hat, vor mehr als 15 Jahren, träumt Hubert davon, seinen eigenen Wein zu entwickeln. Eine unwahrscheinliche Begegnung mit Philippe, der sich für die Winzerwelt begeistert, hat es ihm erlaubt, dieses Projekt auszuarbeiten.',
    'history_2':
    'Zusammen haben sie Château Wiala Anfang 2016 gekauft. Dieses Gebiet gehörte Wiebke und Alain Voorons',
    'winegrower': 'Der Winzer',
    'hubert': 'Hubert Busquet',
    'hubert_1':
    'Von frühester Kindheit an lebe ich mit dem Rhythmus der Weinberge, und es war für mich immer schon offensichtlich, dass ich den Winzerberuf ausüben würde. Als Kind habe ich meine Eltern in die Weinberge begleitet, und die Raupe zu fahren war eins meiner Lieblingsspiele.',
    'hubert_2':
    'Ich habe mich entschieden, so früh wie möglich ins Berufsleben zu starten. Mein Vater hat mir sein Wissen und seine Erfahrung vermittelt, und mir beigebracht, gewissenhaft zu arbeiten. Er war Teil einer Winzerkooperation, und ich habe seine Nachfolge angetreten. Die Kooperation erlaubt den Zugang zu leistunsfähigen Geräten zur Weinbereitung und zu qualifiziertem Personal. Es blieb mir nur noch eine letzte Etappe: die Ausarbeitung meiner eigenen Produkte.',
    'hubert_3':
    'Wiebke und Alain Voroons haben Château Wiala gegründet. Ich war sowohl von ihrem Einsatz wie auch von der Sorgfalt beeindruckt, mit der sie ihren Wein ausgebaut haben. Ihre Nachfolge anzutreten ist eine Herausforderung. Begleitet von meiner Familier, aber auch von der meines Teilhabers Philippe, setzten wir uns vor allem für Qualität ein.',
    'hubert_4':
    'Alle Zutaten sind vereint, um außerordentliche Produkte herzustellen: ein qualitatives Terroir, vielfältig und erhalten, angemessene Rebsorten und ein gut ausgestatteter Weinkeller.',
    'hubert_5':
    'Die geringe Größe des Anbaugebiets erlaubt es uns, sorgfältig jede Etappe von der Rebe bis zur Flasche zu begehen; eine handwerkliche Tätigkeit als Garantie für Produkte großer Qualität.',
    'hubert_6':
    'Ich wünsche mir, dass meine Weine der Spiegel und der Ausdruck meiner Leidenschaft für meinen Beruf und für das Anbaugebiet, in dem ich aufgewachsen bin, sind.'
  };

  static Map<String, String> rewards_fr = {
    'guide': 'Nos vins sont régulièrement dans les guides:',
    'guide_1': '1001 vins du Petit Futé',
    'guide_2': 'Guide Gerbelle & Maurange des meilleurs vins à petits prix',
    'guide_3': 'Guide de la Revue des Vins de France',
    'guide_4': 'le magazine Vinum etc...',
    'title_sel': 'Sélection',
    'title_sel_09': '2009',
    'sel_09_1': 'Médaille d’Argent au concours International Decanter 2012',
    'sel_09_2': 'Guide Hachette 2012',
    'title_har': 'Harmonie',
    'title_har_09': '2009',
    'har_09_1':
    'Primé aux concours Decanter et International Wine Challenge 2012',
    'har_09_2':
    'Médaille d’OR au concours général agricole de Paris 2011, Coup de coeur du jury',
    'title_sel_06': '2006',
    'sel_06': 'Coup de coeur et 2 ** au Guide Hachette 2009'
  };

  static Map<String, String> rewards_en = {
    'guide': 'Our wines are regularly included in guides:',
    'guide_1': 'Le Petit Futé 1001 wines',
    'guide_2': 'Guide Gerbelle & Maurange best wines on a budget',
    'guide_3': 'Guide de la Revue des Vins de France',
    'guide_4': 'Vinum magazine etc...',
    'title_sel': 'Selection',
    'title_sel_09': '2009',
    'sel_09_1': 'Silver medal at the International Decanter competition 2012',
    'sel_09_2': 'Guide Hachette 2012',
    'title_har': 'Harmonie',
    'title_har_09': '2009',
    'har_09_1': 'Winner at the Decanter and International Wine Challenge 2012',
    'har_09_2':
    'Gold medal at the General Agricultural Competition in Paris 2011, with special mention by the jury',
    'title_sel_06': '2006',
    'sel_06': 'special mention and 2 ** in the Guide Hachette 2009'
  };

  static Map<String, String> rewards_ge = {
    'guide': 'Unsere Weine stehen regelmäßig in den Ratgebern:',
    'guide_1': '1001 vins du Petit Futé',
    'guide_2': 'Guide Gerbelle & Maurange des meilleurs vins à petits prix',
    'guide_3': 'Guide de la Revue des Vins de France',
    'guide_4': 'le magazine Vinum etc...',
    'title_sel': 'Auswahl',
    'title_sel_09': '2009',
    'sel_09_1': 'Silbermedaille beim Concours International Decanter 2012',
    'sel_09_2': 'Guide Hachette 2012',
    'title_har': 'Harmonie',
    'title_har_09': '2009',
    'har_09_1':
    'Preisgekrönt beim Concours Decanter et International Wine Challenge 2012',
    'har_09_2':
    'Goldmedaille beim Concours général agricole de Paris 2011, Coup de coeur du jury',
    'title_sel_06': '2006',
    'sel_06': 'Coup de coeur und 2 ** im Guide Hachette 2009'
  };

  static Map<String, String> bnb_fr = {'a': 'a'};
  static Map<String, String> bnb_en = {'a': 'a'};
  static Map<String, String> bnb_ge = {'a': 'a'};

  static Map<String, String> location_fr = {'a': 'a'};
  static Map<String, String> location_en = {'a': 'a'};
  static Map<String, String> location_ge = {'a': 'a'};

  static Map<String, String> order_fr = {
    'logout': 'Déconnexion',
    'connect': 'Si vous êtes déjà client:',
    'new': 'Créer un compte client',
    'email': 'E-mail',
    'name': 'Prénom',
    'family': 'Nom de Famille',
    'lang': 'Langue',
    'tel': 'Tel',
    'addr': 'Adresse',
    'cp': 'Code postal',
    'city': 'ville',
    'country': 'Pays',
    'newLine': 'Cliquez pour sélectionner un autre vin',
    'bo': 'Bouteille(s)',
    'ca': 'Carton(s) de 6 bouteilles',
    'ppb': 'Prix à l’unité',
    'fees': 'Frais de port (inclus dans le total)',
    'selection': 'Sélection',
    'unit': 'unité(s)',
    'price': 'Prix',
    'totPrice': 'Prix total de la commande',
    'order': 'Commander',
    'load': 'Chargement des vins...',
    'select': 'Selection des vins',
    'ident': 'Identification',
    'valid': 'Validation de la commande',
    'next': 'Suivant',
    'final': 'Passer commande',
    'cart': 'Votre panier',
    'close': 'fermer',
    'factor6':
    'Les bouteilles sont envoyées emballées dans des cartons de 6.<br> Veillez à sélectionner un nombre de bouteilles multiple de 6:<br> 6, 12, 18, 24...',
    'law':
    'Conformément à la loi Informatique et libertés vous disposez d’un droit d’accès aux données qui vous concernent, ainsi qu’ un droit de modification ou de suppression de celles-ci (articles 39 et 40 de la loi Informatique et Libertés du 6 janvier 1978).<br><br> Pour exercer ce droit il vous suffit de nous adresser un email a <b>info@chateau-wiala.com</b><br><br>Chateau Wiala s’engage à ce que toutes les informations qu’ il recueille soient considérées comme des informations confidentielles et ne seront jamais transmises à des sociétés tierces.',
    'orderExec2':
    'Les données relatives à la commande vont être enregistrées.<br><br> Un mail vous sera envoyé avec les informations nécessaires pour effectuer le paiement de la commande.',
    'offer': '(6ème bouteille gratuite)',
    'accept': 'J’accèpte',
    'notAccept': 'Je n’accèpte pas',
    'ok': 'OK',
    'noEmail': 'Votre email n’a pas été retrouvé dans notre base',
    'identError': 'Nous ne sommes pas en mesure de prendre votre commande',
    'registered': 'Vous êtes identifié',
    'emailCreated': 'Enregistrement des coordonées confirmé',
    'emailUpdated': 'Enregistrement des nouvelles coordonées confirmé',
    'mustSelect':
    'Une sélection de vin doit être effectuée pour passer à l’étape suivante',
    'orderExec': 'La commande a été enregistrée, un mail vous a été envoyé',
    'orderNotExec':
    'La commande n’a pas été enregistrée, veuillez contacter la cave par téléphone. Merci',
    'payment':
    'Les livraisons sont possibles en France et Allemangne uniquement.<br>- Pour la France les paiements par chèque ou virement sont autorisés.<br>- Pour l’Allemagne seulement le paiement par virement est autorisé.<br> Le colis sera expédié dès que le transfert aura été exécuté'
  };

  static Map<String, String> order_en = {
    'logout': 'Logout',
    'connect': 'Already registered:',
    'new': 'Create an account',
    'email': 'E-mail',
    'name': 'Name',
    'family': 'Surname',
    'lang': 'Language',
    'tel': 'Tel',
    'addr': 'Address',
    'cp': 'Post code',
    'city': 'Town',
    'country': 'Country',
    'newLine': 'Click to select a different wine',
    'bo': 'Bottle',
    'ca': '6 bottles',
    'ppb': 'Unit price',
    'fees': 'Shipping (included in the total)',
    'selection': 'Selection',
    'unit': 'unit(s)',
    'price': 'Price',
    'totPrice': 'Total price',
    'order': 'Order',
    'load': 'Wines are being loaded...',
    'select': 'Wine selection',
    'ident': 'Identification',
    'valid': 'Confirm your order',
    'next': 'Next',
    'final': 'Place order',
    'cart': 'Shopping cart',
    'close': 'close',
    'factor6':
    'Bottles are sent by box of 6<br> You must select at least 6 bottles, or 12, 18, 24...',
    'law':
    'Your information will not be shared with third parties.<br><br>To update or delete it, you must send an e-mail to <b>hubert@chateau-wiala.com</b>',
    'orderExec2':
    'The wine will be delivered as soon as the transfer has been processed.<br><br> Transfer information will be sent by e-mail.',
    'offer': '(6th bottle free )',
    'accept': 'Accept',
    'notAccept': 'Refuse',
    'ok': 'OK',
    'noEmail': 'Your email address has not been found',
    'identError': 'We are unable to process your order',
    'registered': 'You are logged in',
    'emailCreated': 'Your details have been saved',
    'emailUpdated': 'Your new details have been saved',
    'mustSelect': 'A wine must be selected before moving to the next step',
    'orderExec': 'Your order has been made',
    'orderNotExec':
    'There was a problem with your order, it has not been made. Please contact the us by telephone',
    'payment':
    'Delivery is only available in France and Germany.<br><br>  - For France all payment by cheque or bank transfer are accepted.<br>  - In Germany only payment by bank transfer is accepted.<br><br> The order will be sent off as soon as the transfer has been made',
    'email1': 'Hello {name}, your order number {orderNr} has been made.',
    'email2': 'Order details',
    'email3':
    'The wine will be delivered as soon as the transfer has been processed'
  };

  static Map<String, String> order_ge = {
    'connect': 'Wenn Sie bereits Kunde sind:',
    'new': 'Ein Kundenkonto anlegen',
    'email': 'E-mail',
    'name': 'Name',
    'family': 'Nachname',
    'lang': 'Sprache',
    'tel': 'Tel',
    'addr': 'Adresse',
    'cp': 'PLZ',
    'city': 'Stadt',
    'country': 'Land',
    'newLine': 'Hier klicken, um einen anderen Wein auszuwählen',
    'bo': 'Flasche',
    'ca': '6er Karton',
    'ppb': 'Stückpreis',
    'fees': 'Portokosten (Im Gesamtpreis enthalten)',
    'selection': 'Auswahl',
    'unit': 'Einheit(en)',
    'price': 'Preis',
    'totPrice': 'Gesamtpreis der Bestellung',
    'order': 'Bestellen',
    'select': 'Weinauswahl',
    'ident': 'Identifizierung',
    'valid': 'Bestellung bestätigen',
    'next': 'Next',
    'final': 'Bestellung aufgeben',
    'logout': 'Logout',
    'load': 'Weine werden geladen...',
    'cart': 'Ihr Einkaufswagen',
    'close': 'Schließen',
    'factor6':
    'Die Flaschen werden im 6er Karton verschickt <br> Sie müssen eine Mindestmenge von 6 Flaschen auswählen, oder   12, 18, 24...',
    'law':
    'Ihre Daten werden nicht an Außenstehende weitergeleitet<br><br>Um sie zu aktualisieren oder zu löschen, schicken Sie bitte eine E-Mail an folgende Adresse: <b>hubert@chateau-wiala.com</b>',
    'orderExec2':
    'Der Wein wird versendet sobald die Überweisung gutgeschrieben ist.<br><br> Die Informationen zur Überweisung werden Ihnen per Mail geschickt.',
    'offer': '(Sechste Flasche umsonst)',
    'accept': 'Annehmen',
    'notAccept': 'Ablehnen',
    'ok': 'OK',
    'noEmail': 'Wir haben Ihre E-Mail in unserer Datenbank nicht finden können',
    'identError': 'Wir können Ihre Bestellung nicht aufnehmen',
    'registered': 'Sir wurden identifiziert',
    'emailCreated': 'Aufnahme der Kontaktdaten bestätigt',
    'emailUpdated': 'Aufnahme der neuen Kontaktdaten bestätigt',
    'mustSelect':
    'Treffen Sie eine Weinauswahl, um zur nächsten Etappe zu kommen',
    'orderExec':
    'Die Bestellung wurde aufgenommen, eine E-Mail wurde Ihnen geschickt',
    'orderNotExec':
    'Ihre Bestellung wurde nicht aufgnommen. Bitte nehmen Sie telefonisch Kontakt auf. Danke',
    'payment':
    'Lieferungen werden nur nach Frankreich und Deutschland gemacht. Für Frankreich ist es möglich, per Scheck oder Banküberweisung zu bezahlen. Für Deutschland kann nur per Banküberweisung bezhalt werden. Die Bestellunng wird versendet, solbald die Überweisung gemacht worden ist.',
    'email1':
    'Guten Tag {name}, Ihre Bestellung Nr {orderNr} ist aufgnommen worden.',
    'email2': 'Angaben zur Bestellung',
    'email3':
    'Sobald die Überweisung auf unserem Konto ist, wird Ihnen der Wein geschickt:'
  };

  static Map<String, String> contact_fr = {
    'addr': 'Adresse:',
    'open_1': 'Horaires',
    'open_2': 'Tous les jours de 16:30 à 19:00',
    'open_3': 'et sur rendez-vous',
    'contact': 'Nous contacter:'
  };

  static Map<String, String> contact_en = {
    'addr': 'Address:',
    'open_1': 'Cellar opening times:',
    'open_2': 'Every day from 4.30 - 7.00 pm',
    'open_3': 'And upon appointment',
    'contact': 'Contact us:'
  };

  static Map<String, String> contact_ge = {
    'addr': 'Adresse:',
    'open_1': 'Öffnungszeiten des Weinkellers:',
    'open_2': 'Jeden Nachmittag von 16.30 bis 19.00 Uhr',
    'open_3': 'und auf Absprache',
    'contact': 'Nehmen Sie Kontakt mit uns auf:'
  };

  static Map<String, String> cepage_en = {
    'grenache_desc':
    'Well adapted to the southern climate, this grape variety brings delicacy and agility to the wine. Best results are seen on dry and stony hillsides',
    'grenache_taste':
    'When produced as a red wine, this variety gives colourful wines with soft, silky tannins. The characteristic aromas are blackcurrant, blackberry, cherry, cocoa, dried figs and spices',
    'carignan_desc':
    'A true hallmark of the Fitou appellation. Extremely drought-resistant, it is best adapted to our dry and thin soils. The old vines, some of which are centuries old, express the typical characteristics of our wines',
    'carignan_taste':
    'This variety combines power and delicacy, it gives structure to our wines. The characteristic aromas are: figs, blackberries and spices',
    'muscat_desc':
    'This variety has been known and cultivated since ancient times. It excels on our poor and stony soils. It can be vinified for either dry or sweet wine.',
    'muscat_taste':
    'A favourite of bees and harvesters, this grape produces very aromatic, fruity and expressive white wines. It is also the only which gives a grape flavour to the wine. The characteristic aromas are grape, apricot, lychee, pomelo and rose',
    'syrah_desc':
    'This grape originally from the Côtes du Rhône complements the aromatic palette of our traditional grapes, while contributing to the structure of the wine. As the vines are grown using wire, cultivation is demanding',
    'syrah_taste':
    'This variety gives very colorful and tannic wines, it combines perfectly with the Grenache and Carignan. The characteristic aromas are violet, pepper, raspberry, blackberry and cocoa'
  };

  static Map<String, String> cepage_fr = {
    'grenache_desc':
    'Dem Klima im Süden gut angepasst bringt diese Rebsorte dem Wein Feinheit und Geschmeidigkeit. Am Besten gedeiht er an trockenen und steinigen Hängen.',
    'grenache_taste':
    'Zu rotem Wein verarbeitet gibt diese Traubensorte farbige Weine mit geschmeidigen und samtigen Tanninen. Die eingentümlichen Aromen sind: Kassis, Brombeere, Kirsche, Kakao, getrocknete Feige, würzig.',
    'carignan_desc':
    'Regelrechtes Markenzeichen der Bezeichnung Fitou. Sehr trockenheitsbeständig kommt dieser Wein in unseren trockenen Gegenden gut zur Geltung. Die alten teilweise hundertjährigen Reben geben unseren Weinen den typischen Geschmack.',
    'carignan_taste':
    'Diese Traubensorte vereint Stärke und Feinheit. Sie gibt unseren Weinen Struktur. Die eigentümlichen Aromen sind : Feige, Brombeere, Heideland und würzig.',
    'muscat_desc':
    'Seit der Antike bekannt und angbebaut, glänzt diese Rebsorte auf unsere trockenen und steinigen Böden. Sie kann zu trockenem oder zu süßem Wein verarbeitet werden.',
    'muscat_taste':
    'Besonders beliebt bei den Bienen und den Weinlesern gibt diese Traubensorte glänzende sehr aromatische Weißweine, die sowohl ausdrucksvoll als auch fruchtig sind. Sie ist übrigens die Einzige, die dem Wein einen Traubengeschmack gibt. Die eigentümlichen Aromen sind: Traube, Aprikose, Litschi, Grapefruit, Rose.',
    'syrah_desc':
    'Diese Traubensorte kommt aus den Rhône-Hängen und vervollständigt die Aroma-Palette unserer traditionnellen Rebsorten. Dabei gibt sie den Weinen Struktur. An Drähten geführt ist deren Anbau anspruchsvoll.',
    'syrah_taste':
    'Diese Rebsorte gibt sehr tanninhaltige und farbige Weine. Sie passt sehr gut zum Grenache und zum Carignan. Die eigentümlichen Aromen sind: Veilchen, Pfeffer, Himbeere, Brombeere, Kakao.'
  };
}
