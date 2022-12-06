import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  void launchMap(String address) async {
    String query = Uri.encodeComponent(address);
    String googleUrl = "https://www.google.com/maps/search/?api=1&query=$query";

    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Places for you'),
      ),
      body: Container(
          margin: EdgeInsets.all(10),
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.red.withOpacity(0.7)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kavalam Boating\n",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Image(image: AssetImage('assets/sampleimage.jpg')),
                    ElevatedButton(
                      onPressed: (){launchMap("KAVALAM");},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Find this place on Maps",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.red.withOpacity(0.7)),
                          ),
                          Icon(
                            Icons.map,
                            color: Colors.red.withOpacity(0.7),
                          ),
                        ],
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white)),
                    ),
                  ]),
            ),
          )),
    );
  }
}
