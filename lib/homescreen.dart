import 'package:flutter/material.dart';
import 'package:praktikum_flutter_hero/detailscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double screenWidth = 0;
  double screenHeight = 0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth / 20,
          ),
          child: Column(
            children: [
              // Text Widget with Shadow
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: Text(
                  "FLOWER COMPANY!",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 36,
                    color: const Color.fromARGB(255, 207, 74, 118),
                    shadows: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 20,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 207, 74, 118),
                width: screenWidth,
                height: 5,
                margin: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    item(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWshSUgqHeDBs1daZel9sQAaZkyoVVrAnb11UoRj9HVwX9kQTY", 
                      "Gypsophila",
                      "Buket Gypsophila kami adalah simbol dari keanggunan dan kesederhanaan yang memikat, dengan bunga-bunga kecil yang ringan dan lembut.",
                      "Buket Bunga Gypsophila Pelangi adalah perpaduan warna-warni yang memikat dari bunga-bunga gypsophila yang lembut dan indah. Dipenuhi dengan bunga-bunga kecil berwarna pelangi yang cerah dan menyegarkan, buket ini membawa kesan keceriaan dan kebahagiaan yang memikat."
                    ),
                    item(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPLuhPNwzpia7aZiXRnuuCs5SULCV_7pArPrZCvHX6wjMB7Cce", 
                      "Tulip",
                      "Buket tulip kami adalah perwujudan dari keindahan yang elegan dan kesegaran alam yang memikat.",
                      "Buket Bunga Tulip Elegan adalah perpaduan keindahan dan keanggunan yang terwujud dalam kelopak-kelopak tulip yang menakjubkan. Dipenuhi dengan tulip-tulip yang lembut dan indah, buket ini membawa sentuhan romantis dan kemewahan yang memikat."
                    ),
                    item(
                      "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRbtqD5SyTMn3jFtvRIv9H5mxQCghv8iQImlRs7ja6vLE2-IZbj", 
                      "Matahari",
                      "Dengan bunga-bunga matahari yang cerah dan bersemangat, setiap buket bunga ini membawa sinar terang dan kebahagiaan ke dalam ruangan.",
                      "Buket Bunga Matahari Cerah adalah simbol kehangatan dan keceriaan yang menginspirasi seperti matahari sendiri. Dipenuhi dengan bunga-bunga matahari yang besar dan cerah, buket ini membawa kesegaran alam dan kegembiraan yang menyenangkan ke dalam ruangan."
                    ),
                    item(
                      "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQbAOj9-Yj7uJAyXwGs54TRUzsGLTl7zafCOwnj0yufUY2d9tUF", 
                      "Daisy",
                      "Dengan sentuhan hangat alam, buket bunga kami memberikan pesan kelembutan dan keindahan.",
                      "Buket Bunga Daisy Ceria adalah perwujudan dari kesegaran dan keceriaan alam yang mengagumkan. Dipenuhi dengan kelopak bunga daisy yang khas dengan mahkota kuning yang cerah dan daun hijau segar, buket ini membawa suasana bahagia dan optimisme yang menyenangkan ke dalam ruangan."
                    ),
                    item(
                      "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSRKws0HVLRYzTHcMSO4dr0qjhw9PxmdsrOg8GwFSyEf_tBUHgs", 
                      "Mawar",
                      "Bunga-bunga mawar yang mempesona hingga kombinasi harmonis bunga-bunga liar.",
                      "Buket Mawar Romantis adalah simbol cinta dan keanggunan yang timeless. Dengan kelopak mawar yang indah dan aroma harumnya yang memikat, buket ini adalah ungkapan yang sempurna untuk perasaan yang mendalam dan romansa yang abadi."
                    ),
                    item(
                      "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT-8t4GZJCOFRBHadRjQT3l-Awp3xEdCiIaJDj_3zTNxHdQBvBK", 
                      "Aster",
                      "Bunga Aster adalah simbol dari kegembiraan dan keindahan alam yang tahan lama, dengan bunga-bunga yang bervariasi dalam warna dan bentuk.",
                      "Setiap tangkai Aster dipilih dengan teliti untuk memastikan kelopak bunga yang sempurna dan warna yang cerah. Aster yang dipilih dengan teliti ini ditata secara indah dalam buket yang dirancang dengan penuh keahlian, menambahkan sentuhan elegan dan keanggunan alami ke setiap ruangan."
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget item(String imageUrl, String title, String desc, String fullDesc) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              asset: imageUrl,
              tag: title,
              fullDesc: fullDesc,
            ),
          ),
        );
      },
      child: Container(
        height: screenWidth / 2.8,
        width: screenWidth,
        margin: EdgeInsets.only(
          bottom: screenWidth / 20,
        ),
        child: Row(
          children: [
            Hero(
              tag: title,
              child: Container(
                width: screenWidth / 2.8,
                height: screenWidth / 2.8,
                margin: EdgeInsets.only(
                  right: screenWidth / 20,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network( 
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.black87,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    desc,
                    style: const TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(221, 30, 29, 29),
                      fontSize: 14,
                    ),
                  ),
                  const Text(
                    "In-Stock",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 215, 35, 110),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
