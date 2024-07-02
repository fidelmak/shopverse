import 'package:flutter/material.dart';

class LatextNews extends StatelessWidget {
  const LatextNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Text(
                "Latest News ",
                style: TextStyle(fontSize: 20),
              ),
              Text(""),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Philosophy That Addresses Topics Such As Goodness",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Agar tetap kinclong, bodi motor ten..."),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "13 Jan 2021",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    )
                  ],
                ),
              ),
              Image(image: AssetImage("images/blog3.png"))
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Many Inquiries Outside Of Academia Are Philosophical In The Broad Sense",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text("In one general sense, philosophy is ass..."),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "13 Jan 2021",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    )
                  ],
                ),
              ),
              Image(image: AssetImage("images/blog1.png"))
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tips Merawat Bodi Mobil agar Tidak Terlihat Kusam",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Agar tetap kinclong, bodi motor ten..."),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "13 Jan 2021",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    )
                  ],
                ),
              ),
              Image(image: AssetImage("images/blog2.png"))
            ],
          ),
          SizedBox(
            height: 40,
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
            child: Container(
              width: 380,
              height: 50,
              child: TextButton(
                onPressed: () {},
                child: Text("Read More"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
