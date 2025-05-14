import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileCard extends StatelessWidget {
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Tidak dapat membuka URL: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/profile.jpg"),
            ),
            SizedBox(height: 10),
            Text(
              "Aditya Fauzi",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("Desain Grafis"),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.code),
                  onPressed: () => _launchURL("https://github.com/Aditya Fauzi12"),
                  tooltip: "GitHub",
                ),
                IconButton(
                  icon: Icon(Icons.camera_alt),
                  onPressed: () => _launchURL("https://instagram.com/_adityafauzi_"),
                  tooltip: "Instagram",
                ),
                IconButton(
                  icon: Icon(Icons.business),
                  onPressed: () => _launchURL("https://linkedin.com/in/apryanto"),
                  tooltip: "LinkedIn",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}