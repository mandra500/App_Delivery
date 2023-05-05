import 'package:app_restaurant/src/colors/colors.dart';
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
                    child: headerText(
                        texto: 'Descubre nuevos sabores',
                        color: Colors.black,
                        fontSize: 25.0),
                  ),
                  _sliderCards(),
                  _headers(context, 'Platillos top', "Mostrar todo"),
                  _populares(context,
                      'https://lh3.googleusercontent.com/fife/APg5EOZN3plOfmtIxdD3Q2XFX99aCg8WDJ-ccgMUW8cU9t2MVrZAl_1cti-w6iA3JHC1zfHcl2rN2ddK05Gy79qhNhMFvACE64TMDfAobMAfZ18gA3a1b5773jPa7KJgSmT7IJE9hTACMP-NoghXJW9IDYwF4sP6crsk2rXbBM8lk3oAMSpvDnoZeKkd53DL85oGP_dRVfzEAZMUZKEUQ-21C0yWslXkAxXmxVmmkxOBjKeZ7xTTT1MlrGLQh9OUZCn8V9T7lb2W9G-bEWOuUzxRA2pBvv8kaI_GTEJDLid1tkuwPb_CFYOyDz1jxfSlqiomI1RacfmOoFnjeOWAr87N4VwNeFTIZHBsIjP0G5FOOrJf0Wn4iVBEqC_A_QUbWda4JLHNYhcWRREda93pGF0ZIzOjuJnMAPg3a5k2rdkuoGWNmJez4Jfs99Q-dxfeIMCyB8bx6IY7ZbLGReg-IYvPwSUGOAm2OSKE-fS7hIQGtgLs5vqus4KOK1dzsWgaMLP5XCOhlFt0dzLWHyybmUYLIhTdeS9tLUKFAUUJccE6cZjqdd8iiWwdTteDOePn_wLqM259jXY7-Nzwv94eJvZAlnJPb0puRSzogcZIr1OqVUhPAWqSqDnuuc1HFvzD4PM-3vgls7l0Zv17paevPA6Plt8s_Q9NIziJzkZdPKnvXsNz1sRbPHxrJQ_x2Axis5VC0m-fH47kDF4q_kxFkK-ZlGfrhrkg0cEyTFutxNCFo7rIMQOLXUWbnmC1nSKYVLT5yXBeOYyHfmRywAEiq_UYNHAHFzz_0Eq03wX1AQGZvri6ZmueZvkRCDO6J7HeWiHxLlwBE43yn_HUJr8r0WPa1WuPCEwfw80Qg2FWkcH5Wdl7k4OIBmCAthJ3oNCoJgmbmN3TF_oMfWZha4-i4PT27d9DnGmwDUmT44fwaj9M69Jnh4YyKsh2ABrczjkaJXXxJ8hK28GADnHp1YjRiwOAol4o8qusyDpXD8hD4Lh6znSdOqJNo2N1AlHq-rJu6iHkZj7gMQgPqzQc85ACN706EmPnzrzttCwVc_D190Fvm9aHQJgI1L_EBrfVIWHjnjGAXQbOXZJ1o5bNcHeqQu-P2QRFqoFG7X3Jwab1ijja3PHByFahKGVBpxo25p_rYJ8W7tTVVZV-jHkyncF5k4CIAq-y7GSoCC4MC185PODasjJSeAajVbkSg2tkhZwPUceVQdY3ibGj6M-FVdPsLrQanT90sc5JUQChFKb5_aO4GS3TEYeeS8DUt5xqOBGoGeeW6TDXo3onD6VcMnEMsgQjeJN4sGR9LlO7UmvlDOkuXhcVqB47jOkzSCOsxXWBCohwb9j37qKPCIVCzghykbFsyQFxq_l4zHIn12dUMDspnPIGs4eRo6uIkL8W0MqZ4PTmZbf6tkPSaxs3Id7jUbd0CUGbm9Nj5CPLppst0YEgLYjBiwcbiISbljHZVGGG8ONzXII-bXtaNx_e8lWfLomMgWDolvh9VKO5VBUBaVg67TKynlewGpodL808FZsqxF2TwvcbMEjiTdFDiSnvJquL6_nQce_rU-AN989WM7A50074onPhwNlr8zD7LeSI-3A=w1261-h649'),
                  _populares(context,
                      'https://lh3.googleusercontent.com/fife/APg5EOZCvH8DRyiIOKugJyW9SA9yig94mvGq0oj1TFZomHTNsdAhn-eT31iZs1-g4C_EoUGPOAwrHkmc8eUvOBd5bEghNFxqts5quwNdLptQ_xpHuu-KGcY1Rt4um-h9LzGBWCKhk5c3e_6Z-xhDF68yrOb-7VkjYj_GCviaNEPkduCZd5uWoBVFQ8Owj-k03lZNKkPRlNAwN55gc8NtL5KuuZONTH7PijgJC1biMKqEJRViPHLbgLLOqAucdi88NdiQSDJya7ojcpm7cwI-K3VMeCzr_tabi5pa6pP7GgF4yA5WXJxb12ClbHSCga3J-yYLLGZuadmbs-0AQm8Bb537wVjlO9AoBb_ETP2b9XDrfZy3H5qR178UcybaC0mtL3w7K7yn9B1Ji_4HroaxfJ8bGsza3CYNwaCs2t5tp6Hq9bBwCyWOWDyU_pxP23MvrBJeggYllD8AAYJMrXp3KSvFNU9NXLzglgIYQhaQluDu1ltYQMS4lZDpXvWYErOR0VknCij5K_TRSkDfoVhfXgxm-jYrhp-bXYty59GZXUq6MBBwLrW0-rxT7NRPHYr7oJGc3N_Zhhkm-akg9frvCtk7MGkbovCGr54gsSBOZimDZSClgpS5nOTjGBbiHPsUy77udcGUYZCRPe8-9ea9ax77n0t3rTjGB120p2v-9uz97PfJsbeO3zI9R7lTJFIXUii3dv6J79z6Z1pgJL7mLYlKz9StFGgk37T4sv0fMsSg2H3LuFEc-QKqYlDUmHQGlkTybYeaLPQNl8zbWKm-qxD0Dg6tSqhsTg9yMBAlZrogn4VVjh9Pi31u_Q9-PE-jJjCcGbpQyEhHoe7JRBdlXJrrDw6ejT0JYR3SJ6nAMncsAj1zPzIdlouSFIjCGq_xYtVRFFYpfub5TMuL_j_qR5KNS2UZRgAH-dzbzj6KH2ehovlxaujL_d7IWcTZBwkIPqkWhnsouskn-XmDhYZgnee1_EDR61tB5nHdE9zROL5cp0fzSIfWHj-rsHpjsifhiRiqN8EfbMknTZHe5gxCcgNlfD7vsg-eMPWNnZTx4gx1U4D_Dt5ym0xYDn7wX9fmw4UiYM_Q1TCCMzXuk_5Em66DV43WgPUHrPDe9rcVVKspRELUewMGPq7ms9k8HRLKSYB9fQF8E22YLacO5y7OhL5e9PVypDxUQazk97iQqKHqPQlrE-mxlcB9uXr3XzESjPDYxjZkSttXBgljbL4ODul8wrUd7p50ygH-t11gED0E1OkrBUGezwxMtRThC5n8u8FnwymDbOop3IuKFdfZx7clnF89i1l1am4RrQeH5_f5oTo9LJhxh55zU7KYp0WcMdwYsEzsHUHL1v4fosBceBasR8cE0ctaezP27t1-Jw7EHyEmdvUyCydZ4tQGBlqmJgk8stsNtIGZEC5EuB4SpqcUjUmD1wWibuHJOsJ0xsVEfaxe_BouklL0gyCaVyUYc-NWRsx-rtBo5kTG16VQGeThyL7xvqEhrKJ_o6wnNvs7-wc1Nkgz8OdbnO1v1Ar3JeU5lQ_0MBD-y2UYo0SfmT2tOQUarOZAEGtd_FjdFT0RKFwnhdyWYLhC55oQdaIhKnQ=w1261-h649'),
                  _populares(context,
                      'https://lh3.googleusercontent.com/fife/APg5EOaOb7mEvUUWj5A6Jqt8FoK8eGM0NPewbYVDoz3qmXkF4rEo8dDX-FpnSrU-wndUS3aZTUYMlIM1X2efDWvuD7lWjckbvBCyrnnyG6FXr8qdrRCmpe5VxluypwLqArsOqeBqP93V_JRTb_SWilN9Uuj53jHHCU9U5c4o2rkUR9h1dERwdk3snQjSl-u-KV3ezrVzopmHDx4lzc52XRnAUcUuTkif85cQ8zcKCQdLJmCB8paYj-ABaroAWIi0JN0_RjUNx8bQJXoD4IMXvhPfEZSxff9gAIWm0xVODWHDgaCtUnXmyE6g1tkHASbhRJhFK56xUBAYbr2b5M8jGvlCmzBCnpVxx0jEXaCwMf35GjVlqwJUq_hCKpE5L9sB_zCzk0BY9wvboriDpB4NFX_ARt3_95w0GIDsWZVpICT5rUMeGoW-6UozIRDU1qnbD6rYSQiEhxSTvBKRIuZ71vTc79wEyq4monaTknRP7TJSkgv65285OPbZznl49SBy_oIZs-p9RsDQToe4oA1wuyKbcc_oRN2oi2aTvViVM7eaHvQGL4llHDDuc7qQaEToIGePM-ar6LBN2-nUjz9GLX1elXqcl_E0f454busZ4RTphMfzAil2ox9LDSHjvEbFLZQFhTZ8RPpZ5bKWwIENeqOdBrv9mjCgK-uzToEG4s7G7yYaWd5cVzvvTVbjVvUrdacbgUbFk4punSUgkFeojb5nPhXJkpYLEiMf10nwlHehzxPpGe-sys6Tn2hXlzLsf04srhH67bzryMrdscHFm7fil54MswHO6WGxzStnIB9j2p1YCU-eSzN7zpSl_D2RX6-_MPaT-NDP5tg9vKoYxm9xJiptr4qXJxwx-z-QNbQHRn5_7Jj0Xx29lOnYjjOovDRKvRMrMkqA7VvPAAUvRLsPz91NtvtnCh5x67rbzPt0UuQ6wkpEqgZKxj8aHupmyywGBe31BHdL504MzyPUJrZLRm4PEYL7msn4IJMbQJ0e_uNDHl1Wo5h_AFdnWEWV_iypRWNbI_nrVJ4GRpa2L2a5gnP6C1r3JgTW8hIflMsHZemO8bE1QohNfwuiMJrQJojh0tM1vAsZaPew9J0EqdJZ-I39vvE8mpZd2p1RvFT6RDuI96X-Prr_o6m1UXsLXtZT-J1Xfd6uL37atsvRHnHoGnBz1dgHz37sGyBoFit3Q85--wrwp-9yAcUfRh1uDpULlUMrOA66mxzL_62IiQnQTubpU2a3BlwbThLBqdHsLfNJ1fND9PZzERhtoHJsGoqR6KgCSNJci1nXS7Y0bPwEXK5PyT2t_wvCRprGZqiOwhBK9oSkGyxs4pIUyTQRmsjivdwBOYgARiXr6DuXVkbYZ5W-pzn4SBm4Z0caVno1BuELEVEec3BI6dnVGHMlhn9u1NcwZSGjmxWfGG4fbdcN1ixNuzuTVLEaB8hSE7qwSupm3x1VjVjbvX5hy3m-LUTpgqxXsnHZGrbELw-aRoY9yiKUrvm6iJpNlhBpkVQIUBSPKp0w98uFSLDr2pCMhvGvQnfT42CTvnBib86Alf7KYIdJnc5fh32r1jKSZ1e7Psqojyk-GsNCsW9I3wzVTfw=w1261-h649'),
                  const SizedBox(
                    height: 10.0,
                  ),
                  _headers(context, 'Lo más Pedido', "Mostrar todo"),
                  _sliderCollections()
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
      GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'search'),
        child: Container(
          width: 270,
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.only(left: 16.0),
          decoration: BoxDecoration(
              border:
                  Border.all(color: const Color.fromRGBO(234, 236, 239, 1.0)),
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
  return SizedBox(
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
              image: NetworkImage(
                  'https://lh3.googleusercontent.com/fife/APg5EOa6aRs7v4R2ezSCexiF14hjTFbJajcv3o3qcHHOuNKhm432hyv9wzoq9vkbbqDcel0cn2XxSmMc8v3xrGS75geI2uMsC6m1TMkQTlQ1qx-r90eaarJVFJ_2BBaMXcxe6M58wpcdRHvYg7i46HgNpiwmcN9KwHEplJSWigksGU40OOpbj87ktGkqMb4YDVgGg4Wi4IPVcyGyPTUdoPYHcr8hc0PbAlsJ4iIRk99_hUND7diq7TU4VUPzTiEGlvBI5LY-Xk27crzqYxBp11mySw3EBiHjjGvHv8dPsQDkkRrouqRDVNx26kgcwk7n0Jdn6gLoEWtZfSMC5uCYtao0H8pWJ6fNUkUvMUBYNpZhAFP3H45_UkDmvsb_M_J3DxIR2yS0pXjt6TCxmi6AoYd1I0SnIt7kSP_BUZD6BnPO1nLYHGd12MT4nJrL3O1oPVaqtbiffKrOWNG5nSxlPUnYINItY93FpFZ-6JJKhn6SlOW8viwfTJoluDvio46CRZvyxR44UZaUHpQ_IcQFw0WIIQ9cI3ceFWO5H8_OKhjvTN50XRC1NbsfMBZ0ir2GL9ZXt-aqylDtGW3DAojRE2vfVjszLpHxuf9r452g1pcVm_kV0rMJeeM0WcmWAaQs8YyIlnlq52c4dYB-WJ8ynCVmjchWYGkXnQf6IUipfj4bakaaPv1Av8ph5hrpUZL8okQehqweLAJdUnZwNRB-E89wBrJtnqHMOlwbG0DfWgzr7beZo2oKn8sLsZQxtX_6aCpvhY7dqpmFRZvRFdnunOpyI0TtvepThtl9Rnvu_nnRdhdx5H75Qk40dC-Nz4Sog1BB3sTBY-PDuOXQzxIoT-lZf1syCXcdeYE5qtuT8ksockFmxpsF8Wi74gzyTJDTkrYJpduvxEVmfVfAj7W91VPERzSWeqJOOCY42mG95ZW0n4OPaPLc6dejNDy7wjNCFmBQoNIEG51TPeN4u2eEgFiiQCkwsEhhWZu_e2PTYLTxE__vCCd3CMcbhK7hyy0vLQrlFNqKcT4gMsUboerD7BV5qxUZfUBr8OgYKgwLO6x7rASpsVEGN52u23l0ydmIimKZZxwG-3YFKEsQdgn0aEK3ZIj8VQ3m-5lUjiCewsfPgbwAaIglf_GUXxVEsP1B66LrcxHBp-KpmhJ59DhhUFeVv0bZHf0ppn4vNYSNfr0er4swqhEU4RYvF-6KNzZXRUkYMQp3hTd7TeDIWtXkeTJ9zVZd9UdXNNeq2WAh7dLnaVrjSjA5--WbU7qHC6BeNo94fBSghjIq7q8ByTDuYfwoBMrrlGXUMlcv1VpUIhVfy6Ld0QieaNwuW-A0IBVxIzAG6VnqHDU7eDw9CFvrdaK7yjOmPlplv-LDrjxmZq_EGabkrXbKYCU9jRGZY3d8OmS56anUdB2WaYCMFb4-Bxzg0HpBOgcEd4Yn1t7KkqqP47gUYST09-UqkUGtE-RFxEFWE_5dtujOQzRcVMPzvAPWRod9d9yMOYKkMIbhGux3R7awollz6b672nZ6LGjL2pvKaXHw44zxcCydWuoVbazsOkY_Olgh2VTumw3Q49A2KWfhqldUYbkfjBh0Ff8Qga8=w1261-h649')),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 200.0,
              height: 20.0,
              margin: const EdgeInsets.only(top: 5),
              child: const Text(
                "Papa a la huancaina",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "base de papa y crema huancaina",
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
                SizedBox(
                  width: 80.0,
                  height: 18.0,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: orange,
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
        child: headerText(texto: textHeader, fontSize: 25.0),
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
                          texto: "Ceviche de Pescado",
                          color: Colors.black,
                          fontSize: 17.0)),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(bottom: 5.0),
                    child: const Text(
                      "Base de pescado",
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

Widget _sliderCollections() {
  return SizedBox(
      height: 300.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _tarjetaCollection(context);
          }));
}

Widget _tarjetaCollection(BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: const Image(
            width: 250,
            height: 280,
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://lh3.googleusercontent.com/fife/APg5EObxhPXFKp8cX-jPSeoZM4JbimjrpKb9rd5cdN3TxDKQtzlmZIDBceLgYGNuixGVQnBW8tFc_T7ONlbh23epdwiF7UHwvxQ__S0-adnJmsSKiuAkmvK7wrF36VfXZAL3tohnKPYBSEENFyStLpiAaiagyAuqvV_RTNeYOAXMQud4Q-9vlHFvX-bjWsdrLnYYsSbfHqoGTSF_62CnIkyVe7GkpzzzUFBb5MKii-nxtkybctNarZCTt7Bf60yi9TBNgwfngiDzbnXXrqz7NPMNZldYBSsP3kJwEEBduIL1qGO8p4W0IUH8qsp2g9RLjoTtaDCjtC2sQwg4zppl8pOGATJdv8O96xlTUTHBKE1eY4nPJnoToKkWyRI8fAt9jVvKNN7xpJxQzKRwzG-yh66hmGlEZDWW1ctpMvfLV6ZZQ61OK6SFoHgbGIZKeyvJun53D7p-pf8yAODSvifxYO1f9FrCokynuLTfHNnv0TKsPIerlcqeF1Q2uyIzA_j9SXaXMukInlDd7HR65kQbUIf_p3wQWTyedcbEsMuBJR5xiZb1N26WkdFOnD2sl07mCCchWCde2A1LPpIAIyVR6bSzkERLd6Qcqd53l2V9gKw4VXS8PpsR4mxB6T2ZUPPPrEI7JmkyhtSBaxmP15mXFUOO_DpqEp2CFWYpNwvBjc2CSEFIVce9IvJkyurZAF2-eW_teEcT734LM2QqY4s0vKji-ZrapVxhhftgcZ5wt2nyeoxP8XsxhOIOWe8KdT7vcYHkJzm_QKRE60wRgXJvwyKR16fVtGzyIr3RUmXfiRcwCJkIdGr_VhanjCD6dgYH0weFT2a7iqLpcoKVDRfIvgLs1KkQPwg6O0sy7MfKNXqUxajbv1VjuY7EBsK_lf5mMROXmyMuFneUUH6bkLauJ3rbuH1MN-GRbCyRxAGjLRTV-nMKrilDW1rF-2rfnVyrbOe3v5p2Eh70ONgf3YoVWorumwKrfJOoUhzhZ_UU3cPtDSfr8TouSR2FgEyIUouThEqmY-s_G05kLcmER99fpT2cPs83GnQlOTj03KGE3kX0apCxgKbU5d3FQ7fmDKzHtasDWeoOLlqtChp8PRuBo9Dcv2weoeUdiU1PQ3VQbuqtUfIVmjNTmpruRZBU53cZjMejpxU83AH8UBPaMCho7ZIbgGZ3qvFEj_YmOF7hoGCgCA7uN6XavBy6eyQbHFXnfy9cFP0rXZTbWROAt5eTIi2HEzwV_qFz7rT6ePHh8_R9bqON0jrGBijZum3LzF_fC65L98IsYondJj1EEAKEAy98xZir_6xlALphplo5GWiLoU9jPdMrL3-dmtNfx0ROwULj-ens7X2I1LBHY-1Q_iscxpFTWkcelEZVLiu83fLO9x-EqqDVTQknTfE3FBscf5YRujTZkLyMl3iueclwXvwIjqD5lUW5ifP6Ns6pshPnRV0_ouv5l-4ksxLvLGHUyQq4Eqagc_xoRS9miucL81-0h9_xDMf0z72Oub9kY_xx6UQxYyC1e4fb9jU5pHLx75Hg5AChwCnGPgYwXVxQdLHu8qESvqj23wZf3Q47w8bgYKAr5ikyj6gnJQRIkB68-94=w1261-h649'),
          ),
        )
      ],
    ),
  );
}
