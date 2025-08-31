import 'package:flutter/material.dart';

void main() {
  runApp(const AOKApp());
}

class AOKApp extends StatelessWidget {
  const AOKApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const AOKHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AOKHomePage extends StatelessWidget {
  const AOKHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C3A26), // dunkles Grün
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF1C3A26),
        selectedItemColor: Colors.lightGreenAccent,
        unselectedItemColor: Colors.blueGrey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "startseite"),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_copy),
            label: "Dokumente",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: "Mitgliedschaft",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Konto"),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/aok.png', // du musst das Bild hinzufügen
                      height: 30,
                    ),
                    Row(
                      children: const [
                        Icon(Icons.phone, color: Colors.white),
                        SizedBox(width: 16),
                        Icon(Icons.mail, color: Colors.white),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Hallo Mael",
                  style: TextStyle(color: Colors.greenAccent, fontSize: 20),
                ),
                const Text(
                  "VersichertenNummer:\nW27351563445",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 20),

                // Bonusprogramm
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF2A4E37),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.card_giftcard, color: Colors.white),
                          SizedBox(width: 10),
                          Text(
                            "Sie haben einen Bonus von\n",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "   3,00 €",
                            style: TextStyle(color: Colors.greenAccent),
                          ),
                        ],
                      ),
                      const Text(
                        "Zum Bonus Programm",
                        style: TextStyle(color: Colors.greenAccent),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),

                // Schnell zum Ziel
                const Text(
                  "Schnell zum Ziel",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                const SizedBox(height: 10),
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    zielButton(Icons.upload_file, "Dokumente\neinreichen"),
                    zielButton(Icons.receipt_long, "Bescheinigung\nanforderen"),
                    zielButton(Icons.note_alt, "patienten-\nquittung"),
                    zielButton(Icons.schedule, "Meine\nVorgänge"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget zielButton(IconData icon, String label) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF2A4E37),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.greenAccent, size: 40),
          const SizedBox(height: 10),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
