import 'package:app_restaurant/src/colors/colors.dart';
import 'package:app_restaurant/src/features/presentation/commons_widgets/card_vertical.dart';
import 'package:app_restaurant/src/features/presentation/commons_widgets/header_double.dart';
import 'package:app_restaurant/src/features/presentation/commons_widgets/header_text.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.black,
                size: 40.0,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 10.0),
                        alignment: Alignment.centerLeft,
                        child: headerText(
                            texto: 'Buscar',
                            color: Colors.black,
                            fontSize: 30.0)),
                    _searchInput(context),
                    const SizedBox(height: 30.0),
                    headerDoubleText(
                        textHeader: 'Busqueda reciente',
                        textAction: 'Eliminar todo',
                        func: () {}),
                    _sliderRecentSearch(),
                    const SizedBox(height: 20.0),
                    headerDoubleText(
                        textHeader: 'Recomendado para ti',
                        textAction: '',
                        func: () {})
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}

//buscador
Widget _searchInput(BuildContext context) {
  return Container(
    height: 35.0,
    margin: const EdgeInsets.only(top: 20.0),
    padding: const EdgeInsets.only(left: 5.0),
    decoration: BoxDecoration(
        color: bgInputs, borderRadius: BorderRadius.circular(20.0)),
    child: const TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 5.0),
          prefixIcon: Icon(Icons.search, color: gris),
          hintText: 'Buscar',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _sliderRecentSearch() {
  return Container(
    margin: const EdgeInsets.only(top: 5.0),
    height: 190.0,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return cardVertical(
              context: context,
              width: 160.0,
              height: 120.0,
              title: "Ceviche Don Rulo",
              subtitle: "Pescado y conchas negra",
              image: const NetworkImage(
                  'https://lh3.googleusercontent.com/fife/APg5EOa6aRs7v4R2ezSCexiF14hjTFbJajcv3o3qcHHOuNKhm432hyv9wzoq9vkbbqDcel0cn2XxSmMc8v3xrGS75geI2uMsC6m1TMkQTlQ1qx-r90eaarJVFJ_2BBaMXcxe6M58wpcdRHvYg7i46HgNpiwmcN9KwHEplJSWigksGU40OOpbj87ktGkqMb4YDVgGg4Wi4IPVcyGyPTUdoPYHcr8hc0PbAlsJ4iIRk99_hUND7diq7TU4VUPzTiEGlvBI5LY-Xk27crzqYxBp11mySw3EBiHjjGvHv8dPsQDkkRrouqRDVNx26kgcwk7n0Jdn6gLoEWtZfSMC5uCYtao0H8pWJ6fNUkUvMUBYNpZhAFP3H45_UkDmvsb_M_J3DxIR2yS0pXjt6TCxmi6AoYd1I0SnIt7kSP_BUZD6BnPO1nLYHGd12MT4nJrL3O1oPVaqtbiffKrOWNG5nSxlPUnYINItY93FpFZ-6JJKhn6SlOW8viwfTJoluDvio46CRZvyxR44UZaUHpQ_IcQFw0WIIQ9cI3ceFWO5H8_OKhjvTN50XRC1NbsfMBZ0ir2GL9ZXt-aqylDtGW3DAojRE2vfVjszLpHxuf9r452g1pcVm_kV0rMJeeM0WcmWAaQs8YyIlnlq52c4dYB-WJ8ynCVmjchWYGkXnQf6IUipfj4bakaaPv1Av8ph5hrpUZL8okQehqweLAJdUnZwNRB-E89wBrJtnqHMOlwbG0DfWgzr7beZo2oKn8sLsZQxtX_6aCpvhY7dqpmFRZvRFdnunOpyI0TtvepThtl9Rnvu_nnRdhdx5H75Qk40dC-Nz4Sog1BB3sTBY-PDuOXQzxIoT-lZf1syCXcdeYE5qtuT8ksockFmxpsF8Wi74gzyTJDTkrYJpduvxEVmfVfAj7W91VPERzSWeqJOOCY42mG95ZW0n4OPaPLc6dejNDy7wjNCFmBQoNIEG51TPeN4u2eEgFiiQCkwsEhhWZu_e2PTYLTxE__vCCd3CMcbhK7hyy0vLQrlFNqKcT4gMsUboerD7BV5qxUZfUBr8OgYKgwLO6x7rASpsVEGN52u23l0ydmIimKZZxwG-3YFKEsQdgn0aEK3ZIj8VQ3m-5lUjiCewsfPgbwAaIglf_GUXxVEsP1B66LrcxHBp-KpmhJ59DhhUFeVv0bZHf0ppn4vNYSNfr0er4swqhEU4RYvF-6KNzZXRUkYMQp3hTd7TeDIWtXkeTJ9zVZd9UdXNNeq2WAh7dLnaVrjSjA5--WbU7qHC6BeNo94fBSghjIq7q8ByTDuYfwoBMrrlGXUMlcv1VpUIhVfy6Ld0QieaNwuW-A0IBVxIzAG6VnqHDU7eDw9CFvrdaK7yjOmPlplv-LDrjxmZq_EGabkrXbKYCU9jRGZY3d8OmS56anUdB2WaYCMFb4-Bxzg0HpBOgcEd4Yn1t7KkqqP47gUYST09-UqkUGtE-RFxEFWE_5dtujOQzRcVMPzvAPWRod9d9yMOYKkMIbhGux3R7awollz6b672nZ6LGjL2pvKaXHw44zxcCydWuoVbazsOkY_Olgh2VTumw3Q49A2KWfhqldUYbkfjBh0Ff8Qga8=w1261-h649'));
        }),
  );
}
