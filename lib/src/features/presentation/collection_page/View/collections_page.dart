import 'package:app_restaurant/src/features/presentation/commons_widgets/Botones_de_regreso/back_button.dart';
import 'package:app_restaurant/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            title: headerText(fontSize: 17, texto: 'Nuestra Carta'),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.black);
            }),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              children: [
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _card(BuildContext context) {
  return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'collections-detail');
      },
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: const Image(
                width: 165,
                height: 190,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://lh3.googleusercontent.com/fife/AKsag4NE2P-W3tiLBdJMTRx3Y0loK3VLnq74FF8l5z5m4wF_ZXnDa-8tHof6cofWsUKmiXuOxNNlg7BBl07SZsZyOWZepbzpY7A-KPgAuML98zHIPsFcTWTm48OloK83SXP0oDzbpEo9s_JJa_bbo2ioK6v849RTLVtaj60h3nVK446LMo-NynL3mI_bJLFLDMIsrOWUfb_UsQ5NX64IUu-H2LcgUoXG29L_IxahIMCWr0hGNa7DN_kL6GJF6dTzP8DfQFUTOsy6-o958JvdM4_-qvaJ5na0cohj074vWE9EaKRT9S5cJEu2Oc25zjBTmbPbiXr3tbs3e8z2OKfkST-Mfd4AwMLJs14543ADK9TU9W9ZtC3KQXm2rP_jfktmQQHJMvygh7ADkek7nYCFV4Wnc_R8pwxY_D8g7OKcGSVucyaTw3Tb45RJD2ceCsWoCg1C9lqvJXIvvbhTU6NJOkpml0C-Lx5Lld16wUrOSVJw8uABFkpTtVD_2fAaY-vhrc-0INlN1vszfIgpZ6R7Y73w3QY4zQo_c7enQxtu7QV3sVCyutrjBPf5wIVUxEu6ozDDHPPNYXUhuoPzhfD6f6gHsBek7o0BRk5ULwSOiNR1w0iClTM7_AySc5sACD4LaZuQlO7ew72jnbWCDgzPpa-lYtUrqmPjYOdwqQOQaLO62SF_p8g09d2hkFzjSTCXaOvO5ek0t9R-81RX9oHQA4IRNcI2l5GuqXfeCitReQO_SDdbzeTalyPlcHvad9P-WNO8KklD1VFKJ07Z1pA6PhT37eapGZQbTJQGDVaDOdOndSFotXJewACMu0GdMLjX6pZx5h3ExVBJ36aSjkK8AoGa9amm6648RMOjHQicWKwmcrhFUKvqbXDy9LtP45NRwpjekt2OEvjxL_-i5zujCgqYy2uDoeGhzFdBROEH-bjC7gTvz9C9iM32BJWtAxMk6dzPIa3IOLTAT5ofdwWrPx-FX8fs1B7E4fMHKPNOY803-JgkIwQQxq0MimNPciKct5rsJaBYYCim1CHxOz_1uLv1_ioN_0EyuAg8qJ9JEqnrxbu_AOhSNLlXrogQOBX2GMq2r3k0Hm3dU4bRESMSbnnObIBi8wjpIcYI08zDJlkgKPR6wzy4OJJDpE1kd_sX2OuGebwu4VuP77KOqg_KN0OFkZCYKiOUMYE2rGGHTupyIgELowZcv_jCyecU2e49oOkyHO7xkbebNUSgALkFvbjvrQitxmWRIDlwtgD35hI9-gxCev11lv6k3iTrrxtQIDn2dEyBnh1q3aD5GEmNY7sd_mh8RCwbfwNJgnRnhVc-XLWWRJLPPldeGoEjuPqSiur4TKYqVlYc0udjMbJ6GpIX_rwyp6Vv5BQzjexjjz_R9eB9EZifW0N86pJ9sNS8yIbLWxNi-ClX-WacsMBJcnwy_jLg821u-423UUPfIi7saJE3jp7KDibG3UrCJx83N01XZnKpRMybd3MklP5pS14dTmJzm-e2zezFY8-D_E-IoHlA_BwHnKSKldZsiY2mVhzN5e0Tss0-f8xZdbAomBY2BjU94pxVA2tzt2YN0EhEfqV-Xa2xsMGm3mRfdLZ7YKX9UeYlUkvgjOlq-k2cbiUz4OtjYJvCZlh9oe1MDwBM3JtCo-r3yaDyCv8PwrEJWByzoNu28aOxk8a3qUbZTzdoGEu43zmX7i6fOKmRMp0y1g_he3bU1Q=w1200-h768')),
          ),
          Container(
            width: 165,
            height: 190,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(0, 0, 0, 1.3),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 5, bottom: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                headerText(
                    fontSize: 18,
                    texto: 'Entradas',
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                headerText(
                    fontSize: 15,
                    texto: '8 platillos',
                    color: Colors.white,
                    fontWeight: FontWeight.w300)
              ],
            ),
          )
        ],
      ));
}
