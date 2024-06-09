import 'package:flutter/material.dart';
import 'elemanlar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> leftButtonItems = [];
  List<String> rightButtonItems = [];
  bool gameStarted = false;

  void updateLabelAndAddToList(int buttonIndex) {
    if (!gameStarted || Elemanlar.elemanlarBittiMi()) return;
    setState(() {
      if (buttonIndex == 0) {
        leftButtonItems.add(Elemanlar.items[Elemanlar.currentIndex]);
      } else {
        rightButtonItems.add(Elemanlar.items[Elemanlar.currentIndex]);
      }
      Elemanlar.nextItem();
    });

    // Başlat butonuna basıldıktan sonra elemanları ekrana yazdırmak için
    if (gameStarted) {
      Elemanlar.items.forEach((element) {
        // Ortadaki label'a elemanları yazdır
        setState(() {
          Elemanlar.getCurrentItem();
        });
      });
    }
  }

  void startGame() {
    setState(() {
      gameStarted = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Butonlar ve Listeler', style: TextStyle(fontSize: 24)),
          backgroundColor: Colors.yellow,
          centerTitle: true,
        ),
        backgroundColor: Colors.yellow,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              'LİKE-DİSLİKE UYGULAMASI',
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(height: 5),
            Text(
              'Başlat butonuna basın. Sonra ünlü oyuncular çıkacak yazı olarak sevdikleriniz için "LİKE BUTTON" , sevmedikleriniz için "DİSLİKE BUTTON" a basabilirsiniz o kişiler de buttonların altındaki kutulurda birikecek ',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () => updateLabelAndAddToList(0),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      ),
                      child: Text('LİKE BUTTON', style: TextStyle(color: Colors.black)),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 200.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ListView.builder(
                        itemCount: leftButtonItems.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              leftButtonItems[index],
                              style: TextStyle(color: Colors.white),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 200.0,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text('LİKE SAYISI :${leftButtonItems.length} ', style: TextStyle(fontSize: 16)),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: startGame,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      ),
                      child: Text('Başlat', style: TextStyle(color: Colors.black)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      Elemanlar.getCurrentItem(),
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () => updateLabelAndAddToList(1),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      ),
                      child: Text('DİSLİKE BUTTON', style: TextStyle(color: Colors.black)),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 200.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ListView.builder(
                        itemCount: rightButtonItems.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              rightButtonItems[index],
                              style: TextStyle(color: Colors.white),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 200.0,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text('DİSLİKE SAYISI :${rightButtonItems.length} ', style: TextStyle(fontSize: 16)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
