require 'csv'

merchants = [
  {
    "name":"Flatley-Rowe",
    "email":"info@flatley-rowe.com",
    "cif":"B611111111"
  },
  {
    "name":"Weissnat, Hackett and Purdy",
    "email":"info@weissnat-hackett-and-purdy.com",
    "cif":"B611111112"
  },
  {
    "name":"Streich, Klocko and Marvin",
    "email":"info@streich-klocko-and-marvin.com",
    "cif":"B611111113"
  },
  {
    "name":"Pfeffer, Wiza and Jacobson",
    "email":"info@pfeffer-wiza-and-jacobson.com",
    "cif":"B611111114"
  },
  {
    "name":"Von and Sons",
    "email":"info@von-and-sons.com",
    "cif":"B611111115"
  },
  {
    "name":"Oga Inc",
    "email":"info@oga-inc.com",
    "cif":"B611111116"
  },
  {
    "name":"Mayer, Kemmer and Schumm",
    "email":"info@mayer-kemmer-and-schumm.com",
    "cif":"B611111117"
  },
  {
    "name":"Zulauf-Roberts",
    "email":"info@zulauf-roberts.com",
    "cif":"B611111118"
  },
  {
    "name":"Towne-Waelchi",
    "email":"info@towne-waelchi.com",
    "cif":"B611111119"
  },
  {
    "name":"Schoen Inc",
    "email":"info@schoen-inc.com",
    "cif":"B611111110"
  },
  {
    "name":"Dietrich-Ortiz",
    "email":"info@dietrich-ortiz.com",
    "cif":"B611111111"
  },
  {
    "name":"Lubowitz, Hessel and Berge",
    "email":"info@lubowitz-hessel-and-berge.com",
    "cif":"B611111112"
  },
  {
    "name":"Streich-Koepp",
    "email":"info@streich-koepp.com",
    "cif":"B611111113"
  },
  {
    "name":"Hodkiewicz-Stehr",
    "email":"info@hodkiewicz-stehr.com",
    "cif":"B611111114"
  }
]

shoppers = [
  { "name":"Vickey Nikolaus",
    "email":"vickey.nikolaus@not_gmail.com",
    "nif":"411111111Z"
    },
  { "name":"Jennefer Murray",
    "email":"jennefer.murray@not_gmail.com",
    "nif":"411111112Z"
    },
  { "name":"Natosha Jacobi",
    "email":"natosha.jacobi@not_gmail.com",
    "nif":"411111113Z"
    },
  { "name":"Delphine Ortiz",
    "email":"delphine.ortiz@not_gmail.com",
    "nif":"411111114Z"
    },
  { "name":"Dawne Watsica",
    "email":"dawne.watsica@not_gmail.com",
    "nif":"411111115Z"
    },
  { "name":"Keena McDermott",
    "email":"keena.mcdermott@not_gmail.com",
    "nif":"411111116Z"
    },
  { "name":"Antone Mitchell",
    "email":"antone.mitchell@not_gmail.com",
    "nif":"411111117Z"
    },
  { "name":"Calista Crooks",
    "email":"calista.crooks@not_gmail.com",
    "nif":"411111118Z"
    },
  { "name":"Lacie Kuphal",
    "email":"lacie.kuphal@not_gmail.com",
    "nif":"411111119Z"
    },
  {  "name":"Trina Greenholt",
    "email":"trina.greenholt@not_gmail.com",
    "nif":"411111110Z"
    },
  {  "name":"Coralie Kilback",
    "email":"coralie.kilback@not_gmail.com",
    "nif":"411111111Z"
    },
  {  "name":"Kimberlie Hills",
    "email":"kimberlie.hills@not_gmail.com",
    "nif":"411111112Z"
    },
  {  "name":"Lucia Friesen",
    "email":"lucia.friesen@not_gmail.com",
    "nif":"411111113Z"
    },
  {  "name":"Douglass Okuneva",
    "email":"douglass.okuneva@not_gmail.com",
    "nif":"411111114Z"
    },
  {  "name":"Eldridge Wiegand",
    "email":"eldridge.wiegand@not_gmail.com",
    "nif":"411111115Z"
    },
  {  "name":"Loriann Anderson",
    "email":"loriann.anderson@not_gmail.com",
    "nif":"411111116Z"
    },
  {  "name":"Arden Stanton",
    "email":"arden.stanton@not_gmail.com",
    "nif":"411111117Z"
    },
  {  "name":"Adriane Zulauf",
    "email":"adriane.zulauf@not_gmail.com",
    "nif":"411111118Z"
    },
  {  "name":"Margarito Kreiger",
    "email":"margarito.kreiger@not_gmail.com",
    "nif":"411111119Z"
    },
  {  "name":"Bernardina Will",
    "email":"bernardina.will@not_gmail.com",
    "nif":"411111120Z"
    },
  {  "name":"Orpha Pouros",
    "email":"orpha.pouros@not_gmail.com",
    "nif":"411111121Z"
    },
  {  "name":"Norberto Murray",
    "email":"norberto.murray@not_gmail.com",
    "nif":"411111122Z"
    },
  {  "name":"Kathlyn Cole",
    "email":"kathlyn.cole@not_gmail.com",
    "nif":"411111123Z"
    },
  {  "name":"Josephine White",
    "email":"josephine.white@not_gmail.com",
    "nif":"411111124Z"
    },
  {  "name":"Sammie Wisoky",
    "email":"sammie.wisoky@not_gmail.com",
    "nif":"411111125Z"
    },
  {  "name":"Archie Schuster",
    "email":"archie.schuster@not_gmail.com",
    "nif":"411111126Z"
    },
  {  "name":"Debbra Rutherford",
    "email":"debbra.rutherford@not_gmail.com",
    "nif":"411111127Z"
    },
  {  "name":"Carter Huels",
    "email":"carter.huels@not_gmail.com",
    "nif":"411111128Z"
    },
  {  "name":"Tamisha Rohan",
    "email":"tamisha.rohan@not_gmail.com",
    "nif":"411111129Z"
    },
  {  "name":"Eva Bauch",
    "email":"eva.bauch@not_gmail.com",
    "nif":"411111130Z"
    },
  {  "name":"Cathleen McLaughlin",
    "email":"cathleen.mclaughlin@not_gmail.com",
    "nif":"411111131Z"
    },
  {  "name":"Daisy Murphy",
    "email":"daisy.murphy@not_gmail.com",
    "nif":"411111132Z"
    },
  {  "name":"Keena Herman",
    "email":"keena.herman@not_gmail.com",
    "nif":"411111133Z"
    },
  {  "name":"Lincoln Kulas",
    "email":"lincoln.kulas@not_gmail.com",
    "nif":"411111134Z"
    },
  {  "name":"Ramiro Bergstrom",
    "email":"ramiro.bergstrom@not_gmail.com",
    "nif":"411111135Z"
    },
  {  "name":"Alica Harris",
    "email":"alica.harris@not_gmail.com",
    "nif":"411111136Z"
    },
  {  "name":"Rebecca Zieme",
    "email":"rebecca.zieme@not_gmail.com",
    "nif":"411111137Z"
    },
  {  "name":"Ute Mitchell",
    "email":"ute.mitchell@not_gmail.com",
    "nif":"411111138Z"
    },
  {  "name":"Ezra Jones",
    "email":"ezra.jones@not_gmail.com",
    "nif":"411111139Z"
    },
  {  "name":"Silas Hudson",
    "email":"silas.hudson@not_gmail.com",
    "nif":"411111140Z"
    },
  {  "name":"Sherlene Morissette",
    "email":"sherlene.morissette@not_gmail.com",
    "nif":"411111141Z"
    },
  {  "name":"Celina Balistreri",
    "email":"celina.balistreri@not_gmail.com",
    "nif":"411111142Z"
    },
  {  "name":"Bill Hills",
    "email":"bill.hills@not_gmail.com",
    "nif":"411111143Z"
    },
  {  "name":"Tarah Renner",
    "email":"tarah.renner@not_gmail.com",
    "nif":"411111144Z"
    },
  {  "name":"Ammie O'Conner",
    "email":"ammie.o'conner@not_gmail.com",
    "nif":"411111145Z"
    },
  {  "name":"Joey Stark",
    "email":"joey.stark@not_gmail.com",
    "nif":"411111146Z"
    },
  {  "name":"Alexia Reynolds",
    "email":"alexia.reynolds@not_gmail.com",
    "nif":"411111147Z"
    },
  {  "name":"Dalton Breitenberg",
    "email":"dalton.breitenberg@not_gmail.com",
    "nif":"411111148Z"
    },
  {  "name":"Treasa Nikolaus",
    "email":"treasa.nikolaus@not_gmail.com",
    "nif":"411111149Z"
    },
  {  "name":"Jeannetta Daugherty",
    "email":"jeannetta.daugherty@not_gmail.com",
    "nif":"411111150Z"
    },
  {  "name":"Michiko Bechtelar",
    "email":"michiko.bechtelar@not_gmail.com",
    "nif":"411111151Z"
    },
  {  "name":"Brett Farrell",
    "email":"brett.farrell@not_gmail.com",
    "nif":"411111152Z"
    },
  {  "name":"Marilu Keebler",
    "email":"marilu.keebler@not_gmail.com",
    "nif":"411111153Z"
    },
  {  "name":"Lowell Lowe",
    "email":"lowell.lowe@not_gmail.com",
    "nif":"411111154Z"
    },
  {  "name":"Erline Flatley",
    "email":"erline.flatley@not_gmail.com",
    "nif":"411111155Z"
    },
  {  "name":"Bryce Greenholt",
    "email":"bryce.greenholt@not_gmail.com",
    "nif":"411111156Z"
    },
  {  "name":"Monika Donnelly",
    "email":"monika.donnelly@not_gmail.com",
    "nif":"411111157Z"
    },
  {  "name":"Keenan Carter",
    "email":"keenan.carter@not_gmail.com",
    "nif":"411111158Z"
    },
  {  "name":"Rafaela Stehr",
    "email":"rafaela.stehr@not_gmail.com",
    "nif":"411111159Z"
    },
  {  "name":"Willia Casper",
    "email":"willia.casper@not_gmail.com",
    "nif":"411111160Z"
    },
  {  "name":"Ernest Steuber",
    "email":"ernest.steuber@not_gmail.com",
    "nif":"411111161Z"
    },
  {  "name":"Hilda Rutherford",
    "email":"hilda.rutherford@not_gmail.com",
    "nif":"411111162Z"
    },
  {  "name":"Ahmed Macejkovic",
    "email":"ahmed.macejkovic@not_gmail.com",
    "nif":"411111163Z"
    },
  {  "name":"Gwen Gleichner",
    "email":"gwen.gleichner@not_gmail.com",
    "nif":"411111164Z"
    },
  {  "name":"Leilani Goodwin",
    "email":"leilani.goodwin@not_gmail.com",
    "nif":"411111165Z"
    },
  {  "name":"Candelaria Upton",
    "email":"candelaria.upton@not_gmail.com",
    "nif":"411111166Z"
    },
  {  "name":"Graciela O'Hara",
    "email":"graciela.o'hara@not_gmail.com",
    "nif":"411111167Z"
    },
  {  "name":"Susana Koss",
    "email":"susana.koss@not_gmail.com",
    "nif":"411111168Z"
    },
  {  "name":"Tyree Von",
    "email":"tyree.von@not_gmail.com",
    "nif":"411111169Z"
    },
  {  "name":"Ilana Renner",
    "email":"ilana.renner@not_gmail.com",
    "nif":"411111170Z"
    },
  {  "name":"Emely Ward",
    "email":"emely.ward@not_gmail.com",
    "nif":"411111171Z"
    },
  {  "name":"Shemika Skiles",
    "email":"shemika.skiles@not_gmail.com",
    "nif":"411111172Z"
    },
  {  "name":"Gwyn Weissnat",
    "email":"gwyn.weissnat@not_gmail.com",
    "nif":"411111173Z"
    },
  {  "name":"Saran Daniel",
    "email":"saran.daniel@not_gmail.com",
    "nif":"411111174Z"
    },
  {  "name":"Sandy Schamberger",
    "email":"sandy.schamberger@not_gmail.com",
    "nif":"411111175Z"
    },
  {  "name":"Vernon Jewess",
    "email":"vernon.jewess@not_gmail.com",
    "nif":"411111176Z"
    },
  {  "name":"Melania Little",
    "email":"melania.little@not_gmail.com",
    "nif":"411111177Z"
    },
  {  "name":"Bruce Kerluke",
    "email":"bruce.kerluke@not_gmail.com",
    "nif":"411111178Z"
    },
  {  "name":"Jenna Renner",
    "email":"jenna.renner@not_gmail.com",
    "nif":"411111179Z"
    },
  {  "name":"Bridgett Hyatt",
    "email":"bridgett.hyatt@not_gmail.com",
    "nif":"411111180Z"
    },
  {  "name":"Tristan Weber",
    "email":"tristan.weber@not_gmail.com",
    "nif":"411111181Z"
    },
  {  "name":"Makeda Zemlak",
    "email":"makeda.zemlak@not_gmail.com",
    "nif":"411111182Z"
    },
  {  "name":"Randi Herzog",
    "email":"randi.herzog@not_gmail.com",
    "nif":"411111183Z"
    },
  {  "name":"Grisel Bahringer",
    "email":"grisel.bahringer@not_gmail.com",
    "nif":"411111184Z"
    },
  {  "name":"Keenan Fahey",
    "email":"keenan.fahey@not_gmail.com",
    "nif":"411111185Z"
    },
  {  "name":"Shirlene Spinka",
    "email":"shirlene.spinka@not_gmail.com",
    "nif":"411111186Z"
    },
  {  "name":"Tiffiny McGlynn",
    "email":"tiffiny.mcglynn@not_gmail.com",
    "nif":"411111187Z"
    },
  {  "name":"Domenic Denesik",
    "email":"domenic.denesik@not_gmail.com",
    "nif":"411111188Z"
    },
  {  "name":"Gail Streich",
    "email":"gail.streich@not_gmail.com",
    "nif":"411111189Z"
    },
  {  "name":"Odell Hackett",
    "email":"odell.hackett@not_gmail.com",
    "nif":"411111190Z"
    },
  {  "name":"Geraldo Langosh",
    "email":"geraldo.langosh@not_gmail.com",
    "nif":"411111191Z"
    },
  {  "name":"Angelo Boyer",
    "email":"angelo.boyer@not_gmail.com",
    "nif":"411111192Z"
    },
  {  "name":"Caroyln Trantow",
    "email":"caroyln.trantow@not_gmail.com",
    "nif":"411111193Z"
    },
  {  "name":"Sharyl Parker",
    "email":"sharyl.parker@not_gmail.com",
    "nif":"411111194Z"
    },
  {  "name":"Andra Lehner",
    "email":"andra.lehner@not_gmail.com",
    "nif":"411111195Z"
    },
  {  "name":"Siu McGlynn",
    "email":"siu.mcglynn@not_gmail.com",
    "nif":"411111196Z"
    },
  {  "name":"Mariela Fahey",
    "email":"mariela.fahey@not_gmail.com",
    "nif":"411111197Z"
    },
  {  "name":"Davis Auer",
    "email":"davis.auer@not_gmail.com",
    "nif":"411111198Z"
    },
  {  "name":"Sanora Mayer",
    "email":"sanora.mayer@not_gmail.com",
    "nif":"411111199Z"
    },
  {
    "name":"Arleen Oga",
    "email":"arleen.oga@not_gmail.com",
    "nif":"411111100Z"
  },
  {
    "name":"Rocco Berge",
    "email":"rocco.berge@not_gmail.com",
    "nif":"411111101Z"
  },
  {
    "name":"Yajaira Schmidt",
    "email":"yajaira.schmidt@not_gmail.com",
    "nif":"411111102Z"
  },
  {
    "name":"Tess Lang",
    "email":"tess.lang@not_gmail.com",
    "nif":"411111103Z"
  },
  {
    "name":"Randell Morissette",
    "email":"randell.morissette@not_gmail.com",
    "nif":"411111104Z"
  },
  {
    "name":"Edra Swaniawski",
    "email":"edra.swaniawski@not_gmail.com",
    "nif":"411111105Z"
  },
  {
    "name":"Caryn Gaylord",
    "email":"caryn.gaylord@not_gmail.com",
    "nif":"411111106Z"
  },
  {
    "name":"Isabella Dicki",
    "email":"isabella.dicki@not_gmail.com",
    "nif":"411111107Z"
  },
  {
    "name":"Adina O'Kon",
    "email":"adina.o'kon@not_gmail.com",
    "nif":"411111108Z"
  },
  {
    "name":"Darby Douglas",
    "email":"darby.douglas@not_gmail.com",
    "nif":"411111109Z"
  },
  {
    "name":"Joaquin Konopelski",
    "email":"joaquin.konopelski@not_gmail.com",
    "nif":"411111110Z"
  },
  {
    "name":"Pura Schuster",
    "email":"pura.schuster@not_gmail.com",
    "nif":"411111111Z"
  },
  {
    "name":"Lourie Bode",
    "email":"lourie.bode@not_gmail.com",
    "nif":"411111112Z"
  },
  {
    "name":"Glinda Koss",
    "email":"glinda.koss@not_gmail.com",
    "nif":"411111113Z"
  },
  {
    "name":"Suzette Kling",
    "email":"suzette.kling@not_gmail.com",
    "nif":"411111114Z"
  },
  {
    "name":"Nick Koch",
    "email":"nick.koch@not_gmail.com",
    "nif":"411111115Z"
  },
  {
    "name":"Neville Beahan",
    "email":"neville.beahan@not_gmail.com",
    "nif":"411111116Z"
  },
  {
    "name":"Darryl Veum",
    "email":"darryl.veum@not_gmail.com",
    "nif":"411111117Z"
  },
  {
    "name":"Noelia Simonis",
    "email":"noelia.simonis@not_gmail.com",
    "nif":"411111118Z"
  },
  {
    "name":"Clementine O'Kon",
    "email":"clementine.o'kon@not_gmail.com",
    "nif":"411111119Z"
  },
  {
    "name":"Pearlene Rosenbaum",
    "email":"pearlene.rosenbaum@not_gmail.com",
    "nif":"411111120Z"
  },
  {
    "name":"Rona Osinski",
    "email":"rona.osinski@not_gmail.com",
    "nif":"411111121Z"
  },
  {
    "name":"Jeannette Walter",
    "email":"jeannette.walter@not_gmail.com",
    "nif":"411111122Z"
  },
  {
    "name":"Sandee Keeling",
    "email":"sandee.keeling@not_gmail.com",
    "nif":"411111123Z"
  },
  {
    "name":"Tory Crooks",
    "email":"tory.crooks@not_gmail.com",
    "nif":"411111124Z"
  },
  {
    "name":"Shanice Bauch",
    "email":"shanice.bauch@not_gmail.com",
    "nif":"411111125Z"
  },
  {
    "name":"Leanora Wolf",
    "email":"leanora.wolf@not_gmail.com",
    "nif":"411111126Z"
  },
  {
    "name":"Ariane Bergnaum",
    "email":"ariane.bergnaum@not_gmail.com",
    "nif":"411111127Z"
  },
  {
    "name":"Leonel Price",
    "email":"leonel.price@not_gmail.com",
    "nif":"411111128Z"
  },
  {
    "name":"Felix Von",
    "email":"felix.von@not_gmail.com",
    "nif":"411111129Z"
  },
  {
    "name":"Wynona Leffler",
    "email":"wynona.leffler@not_gmail.com",
    "nif":"411111130Z"
  },
  {
    "name":"Antonietta Wiza",
    "email":"antonietta.wiza@not_gmail.com",
    "nif":"411111131Z"
  },
  {
    "name":"Ahmed Vandervort",
    "email":"ahmed.vandervort@not_gmail.com",
    "nif":"411111132Z"
  },
  {
    "name":"Lashandra McDermott",
    "email":"lashandra.mcdermott@not_gmail.com",
    "nif":"411111133Z"
  },
  {
    "name":"Dong Grant",
    "email":"dong.grant@not_gmail.com",
    "nif":"411111134Z"
  },
  {
    "name":"Milton Fritsch",
    "email":"milton.fritsch@not_gmail.com",
    "nif":"411111135Z"
  },
  {
    "name":"Fae Jones",
    "email":"fae.jones@not_gmail.com",
    "nif":"411111136Z"
  },
  {
    "name":"Ivy Conroy",
    "email":"ivy.conroy@not_gmail.com",
    "nif":"411111137Z"
  },
  {
    "name":"Kerrie Ernser",
    "email":"kerrie.ernser@not_gmail.com",
    "nif":"411111138Z"
  },
  {
    "name":"Kanisha Langosh",
    "email":"kanisha.langosh@not_gmail.com",
    "nif":"411111139Z"
  },
  {
    "name":"Mikki Schamberger",
    "email":"mikki.schamberger@not_gmail.com",
    "nif":"411111140Z"
  },
  {
    "name":"Pok Baumbach",
    "email":"pok.baumbach@not_gmail.com",
    "nif":"411111141Z"
  },
  {
    "name":"Tijuana Labadie",
    "email":"tijuana.labadie@not_gmail.com",
    "nif":"411111142Z"
  },
  {
    "name":"Genaro Carter",
    "email":"genaro.carter@not_gmail.com",
    "nif":"411111143Z"
  },
  {
    "name":"Helen Goyette",
    "email":"helen.goyette@not_gmail.com",
    "nif":"411111144Z"
  },
  {
    "name":"Daron West",
    "email":"daron.west@not_gmail.com",
    "nif":"411111145Z"
  },
  {
    "name":"Arcelia Cruickshank",
    "email":"arcelia.cruickshank@not_gmail.com",
    "nif":"411111146Z"
  },
  {
    "name":"Colton Marks",
    "email":"colton.marks@not_gmail.com",
    "nif":"411111147Z"
  },
  {
    "name":"Tamala Blanda",
    "email":"tamala.blanda@not_gmail.com",
    "nif":"411111148Z"
  },
  {
    "name":"Danica Hoeger",
    "email":"danica.hoeger@not_gmail.com",
    "nif":"411111149Z"
  },
  {
    "name":"Lizbeth Zemlak",
    "email":"lizbeth.zemlak@not_gmail.com",
    "nif":"411111150Z"
  },
  {
    "name":"Candice Ullrich",
    "email":"candice.ullrich@not_gmail.com",
    "nif":"411111151Z"
  },
  {
    "name":"Erminia Champlin",
    "email":"erminia.champlin@not_gmail.com",
    "nif":"411111152Z"
  },
  {
    "name":"Almeta Ziemann",
    "email":"almeta.ziemann@not_gmail.com",
    "nif":"411111153Z"
  },
  {
    "name":"Holley Kassulke",
    "email":"holley.kassulke@not_gmail.com",
    "nif":"411111154Z"
  },
  {
    "name":"Shiela Feest",
    "email":"shiela.feest@not_gmail.com",
    "nif":"411111155Z"
  },
  {
    "name":"Aliza Lockman",
    "email":"aliza.lockman@not_gmail.com",
    "nif":"411111156Z"
  },
  {
    "name":"Karri Barrows",
    "email":"karri.barrows@not_gmail.com",
    "nif":"411111157Z"
  },
  {
    "name":"Adriana Watsica",
    "email":"adriana.watsica@not_gmail.com",
    "nif":"411111158Z"
  },
  {
    "name":"Vicki Labadie",
    "email":"vicki.labadie@not_gmail.com",
    "nif":"411111159Z"
  },
  {
    "name":"Sunni Lynch",
    "email":"sunni.lynch@not_gmail.com",
    "nif":"411111160Z"
  },
  {
    "name":"Jessenia O'Kon",
    "email":"jessenia.o'kon@not_gmail.com",
    "nif":"411111161Z"
  },
  {
    "name":"Melvina Tillman",
    "email":"melvina.tillman@not_gmail.com",
    "nif":"411111162Z"
  },
  {
    "name":"Sue Mertz",
    "email":"sue.mertz@not_gmail.com",
    "nif":"411111163Z"
  },
  {
    "name":"Ashlie Barton",
    "email":"ashlie.barton@not_gmail.com",
    "nif":"411111164Z"
  },
  {
    "name":"Livia Murphy",
    "email":"livia.murphy@not_gmail.com",
    "nif":"411111165Z"
  },
  {
    "name":"Stacee Marks",
    "email":"stacee.marks@not_gmail.com",
    "nif":"411111166Z"
  },
  {
    "name":"Lazaro Heaney",
    "email":"lazaro.heaney@not_gmail.com",
    "nif":"411111167Z"
  },
  {
    "name":"Kimbery Muller",
    "email":"kimbery.muller@not_gmail.com",
    "nif":"411111168Z"
  },
  {
    "name":"Tish Casper",
    "email":"tish.casper@not_gmail.com",
    "nif":"411111169Z"
  },
  {
    "name":"Ruby Mayert",
    "email":"ruby.mayert@not_gmail.com",
    "nif":"411111170Z"
  },
  {
    "name":"Rosalyn Prosacco",
    "email":"rosalyn.prosacco@not_gmail.com",
    "nif":"411111171Z"
  },
  {
    "name":"Zane Bauch",
    "email":"zane.bauch@not_gmail.com",
    "nif":"411111172Z"
  },
  {
    "name":"Yuriko Mayert",
    "email":"yuriko.mayert@not_gmail.com",
    "nif":"411111173Z"
  },
  {
    "name":"Donetta Bauch",
    "email":"donetta.bauch@not_gmail.com",
    "nif":"411111174Z"
  },
  {
    "name":"Roseanna Breitenberg",
    "email":"roseanna.breitenberg@not_gmail.com",
    "nif":"411111175Z"
  },
  {
    "name":"Jared Schaefer",
    "email":"jared.schaefer@not_gmail.com",
    "nif":"411111176Z"
  },
  {
    "name":"Vannesa Heaney",
    "email":"vannesa.heaney@not_gmail.com",
    "nif":"411111177Z"
  },
  {
    "name":"Mckenzie Windler",
    "email":"mckenzie.windler@not_gmail.com",
    "nif":"411111178Z"
  },
  {
    "name":"Fletcher Welch",
    "email":"fletcher.welch@not_gmail.com",
    "nif":"411111179Z"
  },
  {
    "name":"Claudette O'Conner",
    "email":"claudette.o'conner@not_gmail.com",
    "nif":"411111180Z"
  },
  {
    "name":"Daniell Wilderman",
    "email":"daniell.wilderman@not_gmail.com",
    "nif":"411111181Z"
  },
  {
    "name":"Sibyl Weimann",
    "email":"sibyl.weimann@not_gmail.com",
    "nif":"411111182Z"
  },
  {
    "name":"Dede Waters",
    "email":"dede.waters@not_gmail.com",
    "nif":"411111183Z"
  },
  {
    "name":"Everette Wunsch",
    "email":"everette.wunsch@not_gmail.com",
    "nif":"411111184Z"
  },
  {
    "name":"Willie Bernier",
    "email":"willie.bernier@not_gmail.com",
    "nif":"411111185Z"
  },
  {
    "name":"Vernell Braun",
    "email":"vernell.braun@not_gmail.com",
    "nif":"411111186Z"
  },
  {
    "name":"Reed Carter",
    "email":"reed.carter@not_gmail.com",
    "nif":"411111187Z"
  },
  {
    "name":"Chung Ward",
    "email":"chung.ward@not_gmail.com",
    "nif":"411111188Z"
  },
  {
    "name":"Lester Haag",
    "email":"lester.haag@not_gmail.com",
    "nif":"411111189Z"
  },
  {
    "name":"Rosalie Klein",
    "email":"rosalie.klein@not_gmail.com",
    "nif":"411111190Z"
  },
  {
    "name":"Ellsworth Witting",
    "email":"ellsworth.witting@not_gmail.com",
    "nif":"411111191Z"
  },
  {
    "name":"Kasie Wiegand",
    "email":"kasie.wiegand@not_gmail.com",
    "nif":"411111192Z"
  },
  {
    "name":"Floria Lehner",
    "email":"floria.lehner@not_gmail.com",
    "nif":"411111193Z"
  },
  {
    "name":"Lindsey Huels",
    "email":"lindsey.huels@not_gmail.com",
    "nif":"411111194Z"
  },
  {
    "name":"Jade VonRueden",
    "email":"jade.vonrueden@not_gmail.com",
    "nif":"411111195Z"
  },
  {
    "name":"Sofia Konopelski",
    "email":"sofia.konopelski@not_gmail.com",
    "nif":"411111196Z"
  },
  {
    "name":"Margene Lebsack",
    "email":"margene.lebsack@not_gmail.com",
    "nif":"411111197Z"
  },
  {
    "name":"Brinda Hermiston",
    "email":"brinda.hermiston@not_gmail.com",
    "nif":"411111198Z"
  },
  {
    "name":"Joseph Blick",
    "email":"joseph.blick@not_gmail.com",
    "nif":"411111199Z"
  },
  {
    "name":"Rachal Block",
    "email":"rachal.block@not_gmail.com",
    "nif":"411111200Z"
  },
  {
    "name":"Lucius Cassin",
    "email":"lucius.cassin@not_gmail.com",
    "nif":"411111201Z"
  },
  {
    "name":"Kenisha Kling",
    "email":"kenisha.kling@not_gmail.com",
    "nif":"411111202Z"
  },
  {
    "name":"Sid Nikolaus",
    "email":"sid.nikolaus@not_gmail.com",
    "nif":"411111203Z"
  },
  {
    "name":"Twanda Tremblay",
    "email":"twanda.tremblay@not_gmail.com",
    "nif":"411111204Z"
  },
  {
    "name":"Shanell Jast",
    "email":"shanell.jast@not_gmail.com",
    "nif":"411111205Z"
  },
  {
    "name":"Garland Hirthe",
    "email":"garland.hirthe@not_gmail.com",
    "nif":"411111206Z"
  },
  {
    "name":"Donella Carter",
    "email":"donella.carter@not_gmail.com",
    "nif":"411111207Z"
  },
  {
    "name":"Adrian Rolfson",
    "email":"adrian.rolfson@not_gmail.com",
    "nif":"411111208Z"
  },
  {
    "name":"Carlena Hintz",
    "email":"carlena.hintz@not_gmail.com",
    "nif":"411111209Z"
  },
  {
    "name":"Andrew Brakus",
    "email":"andrew.brakus@not_gmail.com",
    "nif":"411111210Z"
  },
  {
    "name":"Providencia Veum",
    "email":"providencia.veum@not_gmail.com",
    "nif":"411111211Z"
  },
  {
    "name":"Marie Corwin",
    "email":"marie.corwin@not_gmail.com",
    "nif":"411111212Z"
  },
  {
    "name":"Raymonde Hagenes",
    "email":"raymonde.hagenes@not_gmail.com",
    "nif":"411111213Z"
  },
  {
    "name":"Waneta Goyette",
    "email":"waneta.goyette@not_gmail.com",
    "nif":"411111214Z"
  },
  {
    "name":"Jerrie Medhurst",
    "email":"jerrie.medhurst@not_gmail.com",
    "nif":"411111215Z"
  },
  {
    "name":"Nicholas Goyette",
    "email":"nicholas.goyette@not_gmail.com",
    "nif":"411111216Z"
  },
  {
    "name":"Ricky Torp",
    "email":"ricky.torp@not_gmail.com",
    "nif":"411111217Z"
  },
  {
    "name":"Libbie Connelly",
    "email":"libbie.connelly@not_gmail.com",
    "nif":"411111218Z"
  },
  {
    "name":"Mellisa Kassulke",
    "email":"mellisa.kassulke@not_gmail.com",
    "nif":"411111219Z"
  },
  {
    "name":"Ping Mosciski",
    "email":"ping.mosciski@not_gmail.com",
    "nif":"411111220Z"
  },
  {
    "name":"Krishna Jewess",
    "email":"krishna.jewess@not_gmail.com",
    "nif":"411111221Z"
  },
  {
    "name":"Delois Hyatt",
    "email":"delois.hyatt@not_gmail.com",
    "nif":"411111222Z"
  },
  {
    "name":"Debora Haley",
    "email":"debora.haley@not_gmail.com",
    "nif":"411111223Z"
  },
  {
    "name":"Eliz Hammes",
    "email":"eliz.hammes@not_gmail.com",
    "nif":"411111224Z"
  },
  {
    "name":"Laraine Hilpert",
    "email":"laraine.hilpert@not_gmail.com",
    "nif":"411111225Z"
  },
  {
    "name":"Jami Bins",
    "email":"jami.bins@not_gmail.com",
    "nif":"411111226Z"
  },
  {
    "name":"Genesis Lebsack",
    "email":"genesis.lebsack@not_gmail.com",
    "nif":"411111227Z"
  },
  {
    "name":"Russel Ullrich",
    "email":"russel.ullrich@not_gmail.com",
    "nif":"411111228Z"
  },
  {
    "name":"Neal Cormier",
    "email":"neal.cormier@not_gmail.com",
    "nif":"411111229Z"
  },
  {
    "name":"Jannette Huels",
    "email":"jannette.huels@not_gmail.com",
    "nif":"411111230Z"
  },
  {
    "name":"Regine Gislason",
    "email":"regine.gislason@not_gmail.com",
    "nif":"411111231Z"
  },
  {
    "name":"Dedra Barton",
    "email":"dedra.barton@not_gmail.com",
    "nif":"411111232Z"
  },
  {
    "name":"Cyrstal Schamberger",
    "email":"cyrstal.schamberger@not_gmail.com",
    "nif":"411111233Z"
  },
  {
    "name":"Majorie Klocko",
    "email":"majorie.klocko@not_gmail.com",
    "nif":"411111234Z"
  },
  {
    "name":"Zachariah Goodwin",
    "email":"zachariah.goodwin@not_gmail.com",
    "nif":"411111235Z"
  },
  {
    "name":"Zetta Heaney",
    "email":"zetta.heaney@not_gmail.com",
    "nif":"411111236Z"
  },
  {
    "name":"Corina Rosenbaum",
    "email":"corina.rosenbaum@not_gmail.com",
    "nif":"411111237Z"
  },
  {
    "name":"Dorotha Nicolas",
    "email":"dorotha.nicolas@not_gmail.com",
    "nif":"411111238Z"
  },
  {
    "name":"Yer Kerluke",
    "email":"yer.kerluke@not_gmail.com",
    "nif":"411111239Z"
  },
  {
    "name":"Gerda Oberbrunner",
    "email":"gerda.oberbrunner@not_gmail.com",
    "nif":"411111240Z"
  },
  {
    "name":"Raven Cole",
    "email":"raven.cole@not_gmail.com",
    "nif":"411111241Z"
  },
  {
    "name":"Shavonne Predovic",
    "email":"shavonne.predovic@not_gmail.com",
    "nif":"411111242Z"
  },
  {
    "name":"Arie Hettinger",
    "email":"arie.hettinger@not_gmail.com",
    "nif":"411111243Z"
  },
  {
    "name":"Deloise Jewess",
    "email":"deloise.jewess@not_gmail.com",
    "nif":"411111244Z"
  },
  {
    "name":"Gerry Wolff",
    "email":"gerry.wolff@not_gmail.com",
    "nif":"411111245Z"
  },
  {
    "name":"Neomi Greenfelder",
    "email":"neomi.greenfelder@not_gmail.com",
    "nif":"411111246Z"
  },
  {
    "name":"Refugia Abernathy",
    "email":"refugia.abernathy@not_gmail.com",
    "nif":"411111247Z"
  },
  {
    "name":"Larraine Wiegand",
    "email":"larraine.wiegand@not_gmail.com",
    "nif":"411111248Z"
  },
  {
    "name":"Larisa Fisher",
    "email":"larisa.fisher@not_gmail.com",
    "nif":"411111249Z"
  },
  {
    "name":"Freddie Maggio",
    "email":"freddie.maggio@not_gmail.com",
    "nif":"411111250Z"
  },
  {
    "name":"Ivelisse Wisoky",
    "email":"ivelisse.wisoky@not_gmail.com",
    "nif":"411111251Z"
  },
  {
    "name":"Nicolasa Swift",
    "email":"nicolasa.swift@not_gmail.com",
    "nif":"411111252Z"
  },
  {
    "name":"Kalyn Pfannerstill",
    "email":"kalyn.pfannerstill@not_gmail.com",
    "nif":"411111253Z"
  },
  {
    "name":"Laureen Treutel",
    "email":"laureen.treutel@not_gmail.com",
    "nif":"411111254Z"
  },
  {
    "name":"Henry Pfeffer",
    "email":"henry.pfeffer@not_gmail.com",
    "nif":"411111255Z"
  },
  {
    "name":"Blake Gislason",
    "email":"blake.gislason@not_gmail.com",
    "nif":"411111256Z"
  },
  {
    "name":"Migdalia Bergnaum",
    "email":"migdalia.bergnaum@not_gmail.com",
    "nif":"411111257Z"
  },
  {
    "name":"Herbert Ankunding",
    "email":"herbert.ankunding@not_gmail.com",
    "nif":"411111258Z"
  },
  {
    "name":"Norman Streich",
    "email":"norman.streich@not_gmail.com",
    "nif":"411111259Z"
  },
  {
    "name":"Claretta Steuber",
    "email":"claretta.steuber@not_gmail.com",
    "nif":"411111260Z"
  },
  {
    "name":"Gracie Okuneva",
    "email":"gracie.okuneva@not_gmail.com",
    "nif":"411111261Z"
  },
  {
    "name":"Harlan Denesik",
    "email":"harlan.denesik@not_gmail.com",
    "nif":"411111262Z"
  },
  {
    "name":"Ronald Bayer",
    "email":"ronald.bayer@not_gmail.com",
    "nif":"411111263Z"
  },
  {
    "name":"Hanna Hammes",
    "email":"hanna.hammes@not_gmail.com",
    "nif":"411111264Z"
  },
  {
    "name":"Joaquin Hahn",
    "email":"joaquin.hahn@not_gmail.com",
    "nif":"411111265Z"
  },
  {
    "name":"Cheryle Swift",
    "email":"cheryle.swift@not_gmail.com",
    "nif":"411111266Z"
  },
  {
    "name":"Allena White",
    "email":"allena.white@not_gmail.com",
    "nif":"411111267Z"
  },
  {
    "name":"Ardis Stiedemann",
    "email":"ardis.stiedemann@not_gmail.com",
    "nif":"411111268Z"
  },
  {
    "name":"Jed Mueller",
    "email":"jed.mueller@not_gmail.com",
    "nif":"411111269Z"
  },
  {
    "name":"Tracie Koepp",
    "email":"tracie.koepp@not_gmail.com",
    "nif":"411111270Z"
  },
  {
    "name":"Karole Ortiz",
    "email":"karole.ortiz@not_gmail.com",
    "nif":"411111271Z"
  },
  {
    "name":"Joselyn Rogahn",
    "email":"joselyn.rogahn@not_gmail.com",
    "nif":"411111272Z"
  },
  {
    "name":"Kandis Buckridge",
    "email":"kandis.buckridge@not_gmail.com",
    "nif":"411111273Z"
  },
  {
    "name":"Gina Welch",
    "email":"gina.welch@not_gmail.com",
    "nif":"411111274Z"
  },
  {
    "name":"Delfina Welch",
    "email":"delfina.welch@not_gmail.com",
    "nif":"411111275Z"
  },
  {
    "name":"Carlo Heller",
    "email":"carlo.heller@not_gmail.com",
    "nif":"411111276Z"
  },
  {
    "name":"Marsha Mertz",
    "email":"marsha.mertz@not_gmail.com",
    "nif":"411111277Z"
  },
  {
    "name":"Zula Reynolds",
    "email":"zula.reynolds@not_gmail.com",
    "nif":"411111278Z"
  },
  {
    "name":"Antoine Osinski",
    "email":"antoine.osinski@not_gmail.com",
    "nif":"411111279Z"
  },
  {
    "name":"Asuncion Reinger",
    "email":"asuncion.reinger@not_gmail.com",
    "nif":"411111280Z"
  },
  {
    "name":"Misty Padberg",
    "email":"misty.padberg@not_gmail.com",
    "nif":"411111281Z"
  },
  {
    "name":"Edward DuBuque",
    "email":"edward.dubuque@not_gmail.com",
    "nif":"411111282Z"
  },
  {
    "name":"Augustine Weimann",
    "email":"augustine.weimann@not_gmail.com",
    "nif":"411111283Z"
  },
  {
    "name":"Nidia Hirthe",
    "email":"nidia.hirthe@not_gmail.com",
    "nif":"411111284Z"
  },
  {
    "name":"Lanita McLaughlin",
    "email":"lanita.mclaughlin@not_gmail.com",
    "nif":"411111285Z"
  },
  {
    "name":"Deetta Beahan",
    "email":"deetta.beahan@not_gmail.com",
    "nif":"411111286Z"
  },
  {
    "name":"Miesha Koelpin",
    "email":"miesha.koelpin@not_gmail.com",
    "nif":"411111287Z"
  },
  {
    "name":"Dori Hessel",
    "email":"dori.hessel@not_gmail.com",
    "nif":"411111288Z"
  },
  {
    "name":"Elroy Hane",
    "email":"elroy.hane@not_gmail.com",
    "nif":"411111289Z"
  },
  {
    "name":"Marilou Smith",
    "email":"marilou.smith@not_gmail.com",
    "nif":"411111290Z"
  },
  {
    "name":"Larissa Bosco",
    "email":"larissa.bosco@not_gmail.com",
    "nif":"411111291Z"
  },
  {
    "name":"Laurel Connelly",
    "email":"laurel.connelly@not_gmail.com",
    "nif":"411111292Z"
  },
  {
    "name":"Eugenio Cremin",
    "email":"eugenio.cremin@not_gmail.com",
    "nif":"411111293Z"
  },
  {
    "name":"Ocie Runolfsdottir",
    "email":"ocie.runolfsdottir@not_gmail.com",
    "nif":"411111294Z"
  },
  {
    "name":"Davina Turner",
    "email":"davina.turner@not_gmail.com",
    "nif":"411111295Z"
  },
  {
    "name":"Philip Lind",
    "email":"philip.lind@not_gmail.com",
    "nif":"411111296Z"
  },
  {
    "name":"Brianna Hagenes",
    "email":"brianna.hagenes@not_gmail.com",
    "nif":"411111297Z"
  },
  {
    "name":"Wilton McClure",
    "email":"wilton.mcclure@not_gmail.com",
    "nif":"411111298Z"
  },
  {
    "name":"Raylene King",
    "email":"raylene.king@not_gmail.com",
    "nif":"411111299Z"
  },
  {
    "name":"Mora Graham",
    "email":"mora.graham@not_gmail.com",
    "nif":"411111300Z"
  },
  {
    "name":"Merle Bashirian",
    "email":"merle.bashirian@not_gmail.com",
    "nif":"411111301Z"
  },
  {
    "name":"Jeffry Witting",
    "email":"jeffry.witting@not_gmail.com",
    "nif":"411111302Z"
  },
  {
    "name":"Bertha Price",
    "email":"bertha.price@not_gmail.com",
    "nif":"411111303Z"
  },
  {
    "name":"Anglea Dare",
    "email":"anglea.dare@not_gmail.com",
    "nif":"411111304Z"
  },
  {
    "name":"Rolanda Ankunding",
    "email":"rolanda.ankunding@not_gmail.com",
    "nif":"411111305Z"
  },
  {
    "name":"Marc Lindgren",
    "email":"marc.lindgren@not_gmail.com",
    "nif":"411111306Z"
  },
  {
    "name":"Denyse Spencer",
    "email":"denyse.spencer@not_gmail.com",
    "nif":"411111307Z"
  },
  {
    "name":"Lawanna Dare",
    "email":"lawanna.dare@not_gmail.com",
    "nif":"411111308Z"
  },
  {
    "name":"Kaycee Effertz",
    "email":"kaycee.effertz@not_gmail.com",
    "nif":"411111309Z"
  },
  {
    "name":"Ammie Reichert",
    "email":"ammie.reichert@not_gmail.com",
    "nif":"411111310Z"
  },
  {
    "name":"Alexis Parisian",
    "email":"alexis.parisian@not_gmail.com",
    "nif":"411111311Z"
  },
  {
    "name":"Sherman Romaguera",
    "email":"sherman.romaguera@not_gmail.com",
    "nif":"411111312Z"
  },
  {
    "name":"Fleta O'Kon",
    "email":"fleta.o'kon@not_gmail.com",
    "nif":"411111313Z"
  },
  {
    "name":"Brant Borer",
    "email":"brant.borer@not_gmail.com",
    "nif":"411111314Z"
  },
  {
    "name":"Vivien Predovic",
    "email":"vivien.predovic@not_gmail.com",
    "nif":"411111315Z"
  },
  {
    "name":"Errol Wolf",
    "email":"errol.wolf@not_gmail.com",
    "nif":"411111316Z"
  },
  {
    "name":"Jeane Wisoky",
    "email":"jeane.wisoky@not_gmail.com",
    "nif":"411111317Z"
  },
  {
    "name":"Donte Labadie",
    "email":"donte.labadie@not_gmail.com",
    "nif":"411111318Z"
  },
  {
    "name":"Preston Mills",
    "email":"preston.mills@not_gmail.com",
    "nif":"411111319Z"
  },
  {
    "name":"Marry Mills",
    "email":"marry.mills@not_gmail.com",
    "nif":"411111320Z"
  },
  {
    "name":"Bernie Feest",
    "email":"bernie.feest@not_gmail.com",
    "nif":"411111321Z"
  },
  {
    "name":"Marnie Klocko",
    "email":"marnie.klocko@not_gmail.com",
    "nif":"411111322Z"
  },
  {
    "name":"Norman Bins",
    "email":"norman.bins@not_gmail.com",
    "nif":"411111323Z"
  },
  {
    "name":"Elisabeth Streich",
    "email":"elisabeth.streich@not_gmail.com",
    "nif":"411111324Z"
  },
  {
    "name":"Lissette Leffler",
    "email":"lissette.leffler@not_gmail.com",
    "nif":"411111325Z"
  },
  {
    "name":"Ehtel Hansen",
    "email":"ehtel.hansen@not_gmail.com",
    "nif":"411111326Z"
  },
  {
    "name":"Maura Bahringer",
    "email":"maura.bahringer@not_gmail.com",
    "nif":"411111327Z"
  },
  {
    "name":"Elenora Tromp",
    "email":"elenora.tromp@not_gmail.com",
    "nif":"411111328Z"
  },
  {
    "name":"Tashina Kutch",
    "email":"tashina.kutch@not_gmail.com",
    "nif":"411111329Z"
  },
  {
    "name":"Vonda Boehm",
    "email":"vonda.boehm@not_gmail.com",
    "nif":"411111330Z"
  },
  {
    "name":"Parthenia Kub",
    "email":"parthenia.kub@not_gmail.com",
    "nif":"411111331Z"
  },
  {
    "name":"Humberto Herzog",
    "email":"humberto.herzog@not_gmail.com",
    "nif":"411111332Z"
  },
  {
    "name":"Ty Daniel",
    "email":"ty.daniel@not_gmail.com",
    "nif":"411111333Z"
  },
  {
    "name":"Jeanene Romaguera",
    "email":"jeanene.romaguera@not_gmail.com",
    "nif":"411111334Z"
  },
  {
    "name":"Suzann Thiel",
    "email":"suzann.thiel@not_gmail.com",
    "nif":"411111335Z"
  },
  {
    "name":"Danyell O'Kon",
    "email":"danyell.o'kon@not_gmail.com",
    "nif":"411111336Z"
  },
  {
    "name":"Liz Berge",
    "email":"liz.berge@not_gmail.com",
    "nif":"411111337Z"
  },
  {
    "name":"Joya Hoeger",
    "email":"joya.hoeger@not_gmail.com",
    "nif":"411111338Z"
  },
  {
    "name":"Jan Kessler",
    "email":"jan.kessler@not_gmail.com",
    "nif":"411111339Z"
  },
  {
    "name":"Refugio Herzog",
    "email":"refugio.herzog@not_gmail.com",
    "nif":"411111340Z"
  },
  {
    "name":"Daisey Stiedemann",
    "email":"daisey.stiedemann@not_gmail.com",
    "nif":"411111341Z"
  },
  {
    "name":"Chi Christiansen",
    "email":"chi.christiansen@not_gmail.com",
    "nif":"411111342Z"
  },
  {
    "name":"Edwardo Sporer",
    "email":"edwardo.sporer@not_gmail.com",
    "nif":"411111343Z"
  },
  {
    "name":"Stephane Durgan",
    "email":"stephane.durgan@not_gmail.com",
    "nif":"411111344Z"
  },
  {
    "name":"Susy Windler",
    "email":"susy.windler@not_gmail.com",
    "nif":"411111345Z"
  },
  {
    "name":"Jenette McGlynn",
    "email":"jenette.mcglynn@not_gmail.com",
    "nif":"411111346Z"
  },
  {
    "name":"Leroy Hauck",
    "email":"leroy.hauck@not_gmail.com",
    "nif":"411111347Z"
  },
  {
    "name":"Delsie Rohan",
    "email":"delsie.rohan@not_gmail.com",
    "nif":"411111348Z"
  },
  {
    "name":"Dorine Lesch",
    "email":"dorine.lesch@not_gmail.com",
    "nif":"411111349Z"
  },
  {
    "name":"Salina Thiel",
    "email":"salina.thiel@not_gmail.com",
    "nif":"411111350Z"
  },
  {
    "name":"Bethany Schmidt",
    "email":"bethany.schmidt@not_gmail.com",
    "nif":"411111351Z"
  },
  {
    "name":"Vonda Nolan",
    "email":"vonda.nolan@not_gmail.com",
    "nif":"411111352Z"
  },
  {
    "name":"Jeraldine Kerluke",
    "email":"jeraldine.kerluke@not_gmail.com",
    "nif":"411111353Z"
  },
  {
    "name":"Hallie Herman",
    "email":"hallie.herman@not_gmail.com",
    "nif":"411111354Z"
  },
  {
    "name":"Allyn Lubowitz",
    "email":"allyn.lubowitz@not_gmail.com",
    "nif":"411111355Z"
  },
  {
    "name":"Kandis Koss",
    "email":"kandis.koss@not_gmail.com",
    "nif":"411111356Z"
  },
  {
    "name":"Merlyn Block",
    "email":"merlyn.block@not_gmail.com",
    "nif":"411111357Z"
  },
  {
    "name":"Noemi Effertz",
    "email":"noemi.effertz@not_gmail.com",
    "nif":"411111358Z"
  },
  {
    "name":"Felton Walter",
    "email":"felton.walter@not_gmail.com",
    "nif":"411111359Z"
  },
  {
    "name":"Heidy Raynor",
    "email":"heidy.raynor@not_gmail.com",
    "nif":"411111360Z"
  },
  {
    "name":"Byron Jones",
    "email":"byron.jones@not_gmail.com",
    "nif":"411111361Z"
  },
  {
    "name":"Jospeh Spencer",
    "email":"jospeh.spencer@not_gmail.com",
    "nif":"411111362Z"
  },
  {
    "name":"Rozella Cole",
    "email":"rozella.cole@not_gmail.com",
    "nif":"411111363Z"
  },
  {
    "name":"Matha Quitzon",
    "email":"matha.quitzon@not_gmail.com",
    "nif":"411111364Z"
  },
  {
    "name":"Jarrod Hintz",
    "email":"jarrod.hintz@not_gmail.com",
    "nif":"411111365Z"
  },
  {
    "name":"Britt Dietrich",
    "email":"britt.dietrich@not_gmail.com",
    "nif":"411111366Z"
  },
  {
    "name":"Lillie Brown",
    "email":"lillie.brown@not_gmail.com",
    "nif":"411111367Z"
  },
  {
    "name":"Shayne Terry",
    "email":"shayne.terry@not_gmail.com",
    "nif":"411111368Z"
  },
  {
    "name":"Mauricio Hayes",
    "email":"mauricio.hayes@not_gmail.com",
    "nif":"411111369Z"
  },
  {
    "name":"Maryln Shields",
    "email":"maryln.shields@not_gmail.com",
    "nif":"411111370Z"
  },
  {
    "name":"Rhona Altenwerth",
    "email":"rhona.altenwerth@not_gmail.com",
    "nif":"411111371Z"
  },
  {
    "name":"Magen Sauer",
    "email":"magen.sauer@not_gmail.com",
    "nif":"411111372Z"
  },
  {
    "name":"Eleonor Sipes",
    "email":"eleonor.sipes@not_gmail.com",
    "nif":"411111373Z"
  },
  {
    "name":"Roslyn Metz",
    "email":"roslyn.metz@not_gmail.com",
    "nif":"411111374Z"
  },
  {
    "name":"Vella Wuckert",
    "email":"vella.wuckert@not_gmail.com",
    "nif":"411111375Z"
  },
  {
    "name":"Justin Jewess",
    "email":"justin.jewess@not_gmail.com",
    "nif":"411111376Z"
  },
  {
    "name":"Verdie Johns",
    "email":"verdie.johns@not_gmail.com",
    "nif":"411111377Z"
  },
  {
    "name":"Waneta Kohler",
    "email":"waneta.kohler@not_gmail.com",
    "nif":"411111378Z"
  },
  {
    "name":"Kristle Hudson",
    "email":"kristle.hudson@not_gmail.com",
    "nif":"411111379Z"
  },
  {
    "name":"Kellee Macejkovic",
    "email":"kellee.macejkovic@not_gmail.com",
    "nif":"411111380Z"
  },
  {
    "name":"Shyla Cronin",
    "email":"shyla.cronin@not_gmail.com",
    "nif":"411111381Z"
  },
  {
    "name":"Madeleine Konopelski",
    "email":"madeleine.konopelski@not_gmail.com",
    "nif":"411111382Z"
  },
  {
    "name":"Bernardina Bogisich",
    "email":"bernardina.bogisich@not_gmail.com",
    "nif":"411111383Z"
  },
  {
    "name":"Su Pfannerstill",
    "email":"su.pfannerstill@not_gmail.com",
    "nif":"411111384Z"
  },
  {
    "name":"Marcela Grady",
    "email":"marcela.grady@not_gmail.com",
    "nif":"411111385Z"
  },
  {
    "name":"Rayford Hilll",
    "email":"rayford.hilll@not_gmail.com",
    "nif":"411111386Z"
  },
  {
    "name":"Dominique Thompson",
    "email":"dominique.thompson@not_gmail.com",
    "nif":"411111387Z"
  },
  {
    "name":"Marion Koepp",
    "email":"marion.koepp@not_gmail.com",
    "nif":"411111388Z"
  },
  {
    "name":"Willie Barton",
    "email":"willie.barton@not_gmail.com",
    "nif":"411111389Z"
  },
  {
    "name":"Orval Krajcik",
    "email":"orval.krajcik@not_gmail.com",
    "nif":"411111390Z"
  },
  {
    "name":"Keva Thiel",
    "email":"keva.thiel@not_gmail.com",
    "nif":"411111391Z"
  },
  {
    "name":"Sherell Gusikowski",
    "email":"sherell.gusikowski@not_gmail.com",
    "nif":"411111392Z"
  },
  {
    "name":"Wen Smith",
    "email":"wen.smith@not_gmail.com",
    "nif":"411111393Z"
  },
  {
    "name":"Laine Thompson",
    "email":"laine.thompson@not_gmail.com",
    "nif":"411111394Z"
  },
  {
    "name":"Mathew Wiza",
    "email":"mathew.wiza@not_gmail.com",
    "nif":"411111395Z"
  },
  {
    "name":"Cristy Kuphal",
    "email":"cristy.kuphal@not_gmail.com",
    "nif":"411111396Z"
  },
  {
    "name":"Elayne Mante",
    "email":"elayne.mante@not_gmail.com",
    "nif":"411111397Z"
  },
  {
    "name":"Valentine Crona",
    "email":"valentine.crona@not_gmail.com",
    "nif":"411111398Z"
  },
  {
    "name":"Theo Bashirian",
    "email":"theo.bashirian@not_gmail.com",
    "nif":"411111399Z"
  },
  {
    "name":"Tory Lockman",
    "email":"tory.lockman@not_gmail.com",
    "nif":"411111400Z"
  }
]

Merchant.create(merchants)
Shopper.create(shoppers)

file =  File.read("spec/factories/csv/orders.csv")

CSV.parse(file) do |row|
  Order.create(
    external_id: row[0],
    merchant_id: row[1],
    shopper_id: row[2],
    amount: BigDecimal(row[3]),
    created_at: row[4],
    completed_at: row[5]
  )
end