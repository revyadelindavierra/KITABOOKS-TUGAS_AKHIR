import 'package:flutter/material.dart';
import 'package:kitabooks/Story/stack.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF04424B),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stackkkk(),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
              ),
              child: Text(
                "Sejarah Ka'bah",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25, top: 18),
              child: Text(
                "Pendirian Ka'bah Dalam Kitab Suci Alquran, diceritakan bahwa Ka'bah kali pertama dibangun Nabi Ibrahim AS bersama putranya Nabi Ismail AS atas perintah Allah SWT. ",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25, top: 18),
              child: Text(
                "Kisah ini dimuat di beberapa surat Alquran, yakni: QS Al-Maidah ayat 97: 'Allah telah menjadikan Ka'bah rumah suci tempat manusia berkumpul'",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25, top: 18),
              child: Text(
                "Pendirian Ka'bah Dalam Kitab Suci Alquran, diceritakan bahwa Ka'bah kali pertama dibangun Nabi Ibrahim AS bersama putranya Nabi Ismail AS atas perintah Allah SWT. ",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25, top: 18),
              child: Text(
                "Yang demikian itu agar kamu mengetahui, bahwa Allah mengetahui apa yang ada di langit dan apa yang ada di bumi, dan bahwa Allah Maha Mengetahui segala sesuatu.' QS Al-Baqarah ayat 127: '\n\nDan (ingatlah) ketika Ibrahim meninggikan pondasi Baitullah bersama Ismail, (seraya berdoa), 'Ya Tuhan kami, terimalah (amal) dari kami. Sungguh, Engkaulah Yang Maha Mendengar, Maha Mengetahui.' QS Al-Imran ayat 96: 'Sesungguhnya rumah (ibadah) pertama yang dibangun untuk manusia, ialah (Baitullah) yang di Bakkah (Mekah) yang diberkahi dan menjadi petunjuk bagi seluruh alam.' Pembangunan Ka'bah diperkirakan dimulai pada sekitar tahun 1500 SM. Selain itu, ada pendapat lain yang menyatakan bahwa Ka'bah dibangun sejak zaman Nabi Adam. Para ahli sejarah memperkirakan bahwa bentuk Ka'bah saat kali pertama dibangun memiliki tinggi 30 hingga 31 hasta atau 20 meter dengan lebar 20 hasta atau sekitar 10 meter. Adapun bangunannya berupa susunan batu tanpa semen yang melekatkan.Selain itu, Ka'bah awalnya tidak memiliki atap dan terdapat dua pintu. Setelah berhasil dibangun, Allah memerintahkan Nabi Ibrahim untuk menyeru kepada manusia supaya berziarah ke Ka'bah. Ka'bah sebelum Era Islam Sebelum Islam datang dan disebarkan oleh Nabi Muhammad, Ka'bah merupakan bangunan suci yang dikelilingi oleh berhala. Hingga kini, tidak diketahuisecara pasti sejak kapan Ka'bah menjadi bangunan yang dikelilingi banyak berhala. Namun, ada sebuah riwayat yang menjelaskan bahwa anak Nabi Ibrahim, yakni Nabi Ismail, memiliki banyak pengikut. Akan tetapi, setelah Nabi Ismail meninggal, para pengikutnya dan anak-anaknya secara perlahan mulai meninggalkan kepercayaan kepada Allah dan mulai menyembah berhala. Dari situlah, Ka'bah mulai menjadi tempat pemujaan berhala. Selain itu, banyak orang dari berbagai wilayah datang mengunjungi Ka'bah untuk menyembah berhala-berhala tersebut. Berhala-berhala yang mengelilingi Ka'bah itu kemudian dinamai dengan nama para dewa.  ",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
