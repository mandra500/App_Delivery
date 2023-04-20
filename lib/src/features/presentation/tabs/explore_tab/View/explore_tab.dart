import 'package:app_restaurant/src/features/presentation/commons_widgets/header_text.dart';
import 'package:flutter/material.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({Key? key})
      : super(key: key); // Fixed the constructor syntax

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: [
                  _topBar(context),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    alignment: Alignment.centerLeft,
                    child: headerText('Descubre nuevos sabores', Colors.black,
                        FontWeight.bold, 25.0),
                  ),
                  _sliderCards(),
                  _headers(context, 'Platillos top', "Mostrar todo"),
                  _populares(context,
                      'https://scontent.flim35-1.fna.fbcdn.net/v/t39.30808-6/329192933_3501061130218477_8189444691542988484_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeF49A_oHAv1xK5rZ-_peS-Tf2SbX91q1Zd_ZJtf3WrVlwuJ1U8vs3i5s_1AIr9xPwg&_nc_ohc=xBcr85wBjEAAX_yz4mD&_nc_ht=scontent.flim35-1.fna&oh=00_AfAE6XplHYPe9Z_1jpo-ZCRTc-xqijqIU0oE6XnSpTdf1Q&oe=643BBC67'),
                  _populares(context,
                      'https://scontent.flim35-1.fna.fbcdn.net/v/t39.30808-6/334972566_1419739312174917_4899886953463785760_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeFGr6uM1OmQnpzB8YR1iqXB_isd0l18Fqn-Kx3SXXwWqdxPD9ugNFf4j2J67JV0XqI&_nc_ohc=NNnZ3feSKMYAX-nwa1v&_nc_ht=scontent.flim35-1.fna&oh=00_AfBZzECVbCQTL8fBFGR6RCqC3J4XZ4himdi6dDfdoGc0Yg&oe=643ADF17'),
                  _populares(context,
                      'https://scontent.flim35-1.fna.fbcdn.net/v/t39.30808-6/329111430_916103636415456_8105932231133602232_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeHI0pabIgrR5XkDiHBcENeUwSWr21hWTg7BJavbWFZODnoxLjpAAXJihsBSlNkCqTU&_nc_ohc=UE0IGtHxkxcAX-dyA66&_nc_ht=scontent.flim35-1.fna&oh=00_AfBEdQCpwPqf9fbDmjR3X6d3FsGp2bUGuvvVryoLBX7_3w&oe=643A623B'),
                ],
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}

Widget _topBar(BuildContext context) {
  return Row(
    children: [
      Container(
        width: 270,
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.only(left: 16.0),
        decoration: BoxDecoration(
            border: Border.all(color: const Color.fromRGBO(234, 236, 239, 1.0)),
            borderRadius: BorderRadius.circular(20.0)),
        child: Row(
          children: [
            const Icon(Icons.search, size: 20.0, color: Colors.grey),
            Container(
              margin: const EdgeInsets.only(left: 5),
              child: const Text(
                'Buscar',
                style: TextStyle(color: Colors.grey, fontSize: 17.0),
              ),
            ),
          ],
        ),
      ),
      Container(
        width: 45.0,
        height: 45.0,
        margin: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(209, 209, 214, 1.0),
            borderRadius: BorderRadius.circular(10)),
        child: IconButton(
          icon: const Icon(
            Icons.filter_list,
            size: 25,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
    ],
  );
}

Widget _sliderCards() {
  return Container(
      height: 285.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _tarjeta(context);
          }));
}

Widget _tarjeta(BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(5),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: const Image(
              width: 230.0,
              height: 200.0,
              fit: BoxFit.cover,
              image: AssetImage(
                  'https://scontent.flim35-1.fna.fbcdn.net/v/t39.30808-6/334953036_887566205847752_8817404505968263124_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeEWl2KWp0AC3ASHuka0_rn6fLMe42xUZEd8sx7jbFRkRzmyxGCitqsJBORduLU1vw8&_nc_ohc=FIb_E0MtePMAX8ncHPO&_nc_ht=scontent.flim35-1.fna&oh=00_AfCS4Pt8uGaa3IVjr8LMOewUmTHOGy4TUa2RS9p25Swylg&oe=643A97C0')),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 200.0,
              height: 20.0,
              margin: const EdgeInsets.only(top: 5),
              child: const Text(
                "Ceviche de Pescado",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Chicharron de Pescado",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0),
              ),
            ),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.yellow, size: 16),
                const Text("4.8",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0)),
                const Text("(233 Calificaciones)",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0)),
                Container(
                  width: 80.0,
                  height: 18.0,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor:
                            Theme.of(context).colorScheme.secondary,
                      ),
                      child: const Text('Delivery',
                          style: TextStyle(fontSize: 11.0))),
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}

Widget _headers(BuildContext context, String textHeader, String textAction) {
  return Row(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: headerText(textHeader, Colors.black, FontWeight.bold, 25.0),
      ),
      const Spacer(),
      GestureDetector(
        child: Row(
          children: [
            Text(textAction,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0)),
            const Icon(Icons.play_arrow)
          ],
        ),
      ),
    ],
  );
}

Widget _populares(BuildContext context, String foto) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.only(left: 10),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                  image: NetworkImage(foto)),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: const EdgeInsets.symmetric(vertical: 7.0),
                      child: headerText(
                          "Duo Marino", Colors.black, FontWeight.bold, 17.0)),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(bottom: 5.0),
                    child: const Text(
                      "Leche de Tigre",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0),
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.yellow, size: 16),
                      const Text("4.8",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0)),
                      Container(
                        margin: const EdgeInsets.only(left: 5.0),
                        child: const Text("(233 votos)",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 13.0)),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 30),
                        width: 80.0,
                        height: 18.0,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              backgroundColor:
                                  Theme.of(context).colorScheme.secondary,
                            ),
                            child: const Text('Delivery',
                                style: TextStyle(fontSize: 11.0))),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )
    ],
  );
}
