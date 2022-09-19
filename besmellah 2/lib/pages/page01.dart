import 'package:flutter/material.dart';
import 'package:besmellah/models/kuwait.dart';
import 'package:besmellah/pages/page02.dart';

class Page01 extends StatelessWidget {
  Page01({super.key});

  var places = [
    Place(
        name: 'أبراج الكويت',
        imgURL:
            'https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg',
        discription:
          'ثلاثة أبراج يم بعض ة'),
    Place(
      name: 'برج التحرير',
      discription: 'برج طويل داخله مكاتب وزارات ',
      imgURL:
          'https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg',
    ),
    Place(
      name: 'المسجد الكبير',
      discription: 'اكبر مسجد بالكويت ',
      imgURL:
          'https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('معالم دولة الكويت'),
        backgroundColor: Color.fromARGB(255, 151, 202, 153),
      ),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Page02(
                      place: places[index],
                    ),
                  ),
                );
              },
              child: Row(
                children: [
                  Image.network(
                    places[index].imgURL,
                    width: 150,
                    height: 150,
                  ),
                  Container(
                    padding: EdgeInsets.all(40),
                    child: Text(
                      places[index].name,
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
