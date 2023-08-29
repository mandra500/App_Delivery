import 'package:app_restaurant/src/colors/colors.dart';
import 'package:app_restaurant/src/features/presentation/commons_widgets/Botones_de_regreso/back_button.dart';
import 'package:app_restaurant/src/features/presentation/commons_widgets/Cards/favoritos_card.dart';
import 'package:app_restaurant/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class CollectionDetailPage extends StatelessWidget {
  const CollectionDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 230,
            backgroundColor: orange,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  const Image(
                      width: double.infinity,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://lh3.googleusercontent.com/fife/AKsag4NE2P-W3tiLBdJMTRx3Y0loK3VLnq74FF8l5z5m4wF_ZXnDa-8tHof6cofWsUKmiXuOxNNlg7BBl07SZsZyOWZepbzpY7A-KPgAuML98zHIPsFcTWTm48OloK83SXP0oDzbpEo9s_JJa_bbo2ioK6v849RTLVtaj60h3nVK446LMo-NynL3mI_bJLFLDMIsrOWUfb_UsQ5NX64IUu-H2LcgUoXG29L_IxahIMCWr0hGNa7DN_kL6GJF6dTzP8DfQFUTOsy6-o958JvdM4_-qvaJ5na0cohj074vWE9EaKRT9S5cJEu2Oc25zjBTmbPbiXr3tbs3e8z2OKfkST-Mfd4AwMLJs14543ADK9TU9W9ZtC3KQXm2rP_jfktmQQHJMvygh7ADkek7nYCFV4Wnc_R8pwxY_D8g7OKcGSVucyaTw3Tb45RJD2ceCsWoCg1C9lqvJXIvvbhTU6NJOkpml0C-Lx5Lld16wUrOSVJw8uABFkpTtVD_2fAaY-vhrc-0INlN1vszfIgpZ6R7Y73w3QY4zQo_c7enQxtu7QV3sVCyutrjBPf5wIVUxEu6ozDDHPPNYXUhuoPzhfD6f6gHsBek7o0BRk5ULwSOiNR1w0iClTM7_AySc5sACD4LaZuQlO7ew72jnbWCDgzPpa-lYtUrqmPjYOdwqQOQaLO62SF_p8g09d2hkFzjSTCXaOvO5ek0t9R-81RX9oHQA4IRNcI2l5GuqXfeCitReQO_SDdbzeTalyPlcHvad9P-WNO8KklD1VFKJ07Z1pA6PhT37eapGZQbTJQGDVaDOdOndSFotXJewACMu0GdMLjX6pZx5h3ExVBJ36aSjkK8AoGa9amm6648RMOjHQicWKwmcrhFUKvqbXDy9LtP45NRwpjekt2OEvjxL_-i5zujCgqYy2uDoeGhzFdBROEH-bjC7gTvz9C9iM32BJWtAxMk6dzPIa3IOLTAT5ofdwWrPx-FX8fs1B7E4fMHKPNOY803-JgkIwQQxq0MimNPciKct5rsJaBYYCim1CHxOz_1uLv1_ioN_0EyuAg8qJ9JEqnrxbu_AOhSNLlXrogQOBX2GMq2r3k0Hm3dU4bRESMSbnnObIBi8wjpIcYI08zDJlkgKPR6wzy4OJJDpE1kd_sX2OuGebwu4VuP77KOqg_KN0OFkZCYKiOUMYE2rGGHTupyIgELowZcv_jCyecU2e49oOkyHO7xkbebNUSgALkFvbjvrQitxmWRIDlwtgD35hI9-gxCev11lv6k3iTrrxtQIDn2dEyBnh1q3aD5GEmNY7sd_mh8RCwbfwNJgnRnhVc-XLWWRJLPPldeGoEjuPqSiur4TKYqVlYc0udjMbJ6GpIX_rwyp6Vv5BQzjexjjz_R9eB9EZifW0N86pJ9sNS8yIbLWxNi-ClX-WacsMBJcnwy_jLg821u-423UUPfIi7saJE3jp7KDibG3UrCJx83N01XZnKpRMybd3MklP5pS14dTmJzm-e2zezFY8-D_E-IoHlA_BwHnKSKldZsiY2mVhzN5e0Tss0-f8xZdbAomBY2BjU94pxVA2tzt2YN0EhEfqV-Xa2xsMGm3mRfdLZ7YKX9UeYlUkvgjOlq-k2cbiUz4OtjYJvCZlh9oe1MDwBM3JtCo-r3yaDyCv8PwrEJWByzoNu28aOxk8a3qUbZTzdoGEu43zmX7i6fOKmRMp0y1g_he3bU1Q=w1200-h768')),
                  Container(
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(0, 0, 0, 1.3),
                          borderRadius: BorderRadius.circular(10)),
                      width: double.infinity,
                      height: double.infinity),
                  Center(
                    child: headerText(
                        fontSize: 35.0,
                        texto: 'Entradas',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        textAlign: TextAlign.center),
                  )
                ],
              ),
            ),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.white);
            }),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.symmetric(vertical: 20.0),
                        child: headerText(
                          texto: '8 entradas',
                          color: const Color.fromRGBO(51, 58, 77, 1.0),
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                      Column(
                        children: [
                          favoritosCard(
                              context: context,
                              image: const NetworkImage(
                                  'https://lh3.googleusercontent.com/fife/APg5EOZCvH8DRyiIOKugJyW9SA9yig94mvGq0oj1TFZomHTNsdAhn-eT31iZs1-g4C_EoUGPOAwrHkmc8eUvOBd5bEghNFxqts5quwNdLptQ_xpHuu-KGcY1Rt4um-h9LzGBWCKhk5c3e_6Z-xhDF68yrOb-7VkjYj_GCviaNEPkduCZd5uWoBVFQ8Owj-k03lZNKkPRlNAwN55gc8NtL5KuuZONTH7PijgJC1biMKqEJRViPHLbgLLOqAucdi88NdiQSDJya7ojcpm7cwI-K3VMeCzr_tabi5pa6pP7GgF4yA5WXJxb12ClbHSCga3J-yYLLGZuadmbs-0AQm8Bb537wVjlO9AoBb_ETP2b9XDrfZy3H5qR178UcybaC0mtL3w7K7yn9B1Ji_4HroaxfJ8bGsza3CYNwaCs2t5tp6Hq9bBwCyWOWDyU_pxP23MvrBJeggYllD8AAYJMrXp3KSvFNU9NXLzglgIYQhaQluDu1ltYQMS4lZDpXvWYErOR0VknCij5K_TRSkDfoVhfXgxm-jYrhp-bXYty59GZXUq6MBBwLrW0-rxT7NRPHYr7oJGc3N_Zhhkm-akg9frvCtk7MGkbovCGr54gsSBOZimDZSClgpS5nOTjGBbiHPsUy77udcGUYZCRPe8-9ea9ax77n0t3rTjGB120p2v-9uz97PfJsbeO3zI9R7lTJFIXUii3dv6J79z6Z1pgJL7mLYlKz9StFGgk37T4sv0fMsSg2H3LuFEc-QKqYlDUmHQGlkTybYeaLPQNl8zbWKm-qxD0Dg6tSqhsTg9yMBAlZrogn4VVjh9Pi31u_Q9-PE-jJjCcGbpQyEhHoe7JRBdlXJrrDw6ejT0JYR3SJ6nAMncsAj1zPzIdlouSFIjCGq_xYtVRFFYpfub5TMuL_j_qR5KNS2UZRgAH-dzbzj6KH2ehovlxaujL_d7IWcTZBwkIPqkWhnsouskn-XmDhYZgnee1_EDR61tB5nHdE9zROL5cp0fzSIfWHj-rsHpjsifhiRiqN8EfbMknTZHe5gxCcgNlfD7vsg-eMPWNnZTx4gx1U4D_Dt5ym0xYDn7wX9fmw4UiYM_Q1TCCMzXuk_5Em66DV43WgPUHrPDe9rcVVKspRELUewMGPq7ms9k8HRLKSYB9fQF8E22YLacO5y7OhL5e9PVypDxUQazk97iQqKHqPQlrE-mxlcB9uXr3XzESjPDYxjZkSttXBgljbL4ODul8wrUd7p50ygH-t11gED0E1OkrBUGezwxMtRThC5n8u8FnwymDbOop3IuKFdfZx7clnF89i1l1am4RrQeH5_f5oTo9LJhxh55zU7KYp0WcMdwYsEzsHUHL1v4fosBceBasR8cE0ctaezP27t1-Jw7EHyEmdvUyCydZ4tQGBlqmJgk8stsNtIGZEC5EuB4SpqcUjUmD1wWibuHJOsJ0xsVEfaxe_BouklL0gyCaVyUYc-NWRsx-rtBo5kTG16VQGeThyL7xvqEhrKJ_o6wnNvs7-wc1Nkgz8OdbnO1v1Ar3JeU5lQ_0MBD-y2UYo0SfmT2tOQUarOZAEGtd_FjdFT0RKFwnhdyWYLhC55oQdaIhKnQ=w1261-h649'),
                              title: 'Leche de Tigre',
                              subtitle: 'a base de pescado y pota',
                              review: '4.8',
                              ratings: "(233 votos)",
                              buttonText: 'Delivery',
                              hasActionButton: true,
                              isFavorito: true),
                          favoritosCard(
                              context: context,
                              image: const NetworkImage(
                                  'https://lh3.googleusercontent.com/fife/APg5EOaOb7mEvUUWj5A6Jqt8FoK8eGM0NPewbYVDoz3qmXkF4rEo8dDX-FpnSrU-wndUS3aZTUYMlIM1X2efDWvuD7lWjckbvBCyrnnyG6FXr8qdrRCmpe5VxluypwLqArsOqeBqP93V_JRTb_SWilN9Uuj53jHHCU9U5c4o2rkUR9h1dERwdk3snQjSl-u-KV3ezrVzopmHDx4lzc52XRnAUcUuTkif85cQ8zcKCQdLJmCB8paYj-ABaroAWIi0JN0_RjUNx8bQJXoD4IMXvhPfEZSxff9gAIWm0xVODWHDgaCtUnXmyE6g1tkHASbhRJhFK56xUBAYbr2b5M8jGvlCmzBCnpVxx0jEXaCwMf35GjVlqwJUq_hCKpE5L9sB_zCzk0BY9wvboriDpB4NFX_ARt3_95w0GIDsWZVpICT5rUMeGoW-6UozIRDU1qnbD6rYSQiEhxSTvBKRIuZ71vTc79wEyq4monaTknRP7TJSkgv65285OPbZznl49SBy_oIZs-p9RsDQToe4oA1wuyKbcc_oRN2oi2aTvViVM7eaHvQGL4llHDDuc7qQaEToIGePM-ar6LBN2-nUjz9GLX1elXqcl_E0f454busZ4RTphMfzAil2ox9LDSHjvEbFLZQFhTZ8RPpZ5bKWwIENeqOdBrv9mjCgK-uzToEG4s7G7yYaWd5cVzvvTVbjVvUrdacbgUbFk4punSUgkFeojb5nPhXJkpYLEiMf10nwlHehzxPpGe-sys6Tn2hXlzLsf04srhH67bzryMrdscHFm7fil54MswHO6WGxzStnIB9j2p1YCU-eSzN7zpSl_D2RX6-_MPaT-NDP5tg9vKoYxm9xJiptr4qXJxwx-z-QNbQHRn5_7Jj0Xx29lOnYjjOovDRKvRMrMkqA7VvPAAUvRLsPz91NtvtnCh5x67rbzPt0UuQ6wkpEqgZKxj8aHupmyywGBe31BHdL504MzyPUJrZLRm4PEYL7msn4IJMbQJ0e_uNDHl1Wo5h_AFdnWEWV_iypRWNbI_nrVJ4GRpa2L2a5gnP6C1r3JgTW8hIflMsHZemO8bE1QohNfwuiMJrQJojh0tM1vAsZaPew9J0EqdJZ-I39vvE8mpZd2p1RvFT6RDuI96X-Prr_o6m1UXsLXtZT-J1Xfd6uL37atsvRHnHoGnBz1dgHz37sGyBoFit3Q85--wrwp-9yAcUfRh1uDpULlUMrOA66mxzL_62IiQnQTubpU2a3BlwbThLBqdHsLfNJ1fND9PZzERhtoHJsGoqR6KgCSNJci1nXS7Y0bPwEXK5PyT2t_wvCRprGZqiOwhBK9oSkGyxs4pIUyTQRmsjivdwBOYgARiXr6DuXVkbYZ5W-pzn4SBm4Z0caVno1BuELEVEec3BI6dnVGHMlhn9u1NcwZSGjmxWfGG4fbdcN1ixNuzuTVLEaB8hSE7qwSupm3x1VjVjbvX5hy3m-LUTpgqxXsnHZGrbELw-aRoY9yiKUrvm6iJpNlhBpkVQIUBSPKp0w98uFSLDr2pCMhvGvQnfT42CTvnBib86Alf7KYIdJnc5fh32r1jKSZ1e7Psqojyk-GsNCsW9I3wzVTfw=w1261-h649'),
                              title: 'Ceviche Mixto',
                              subtitle: 'a base de pescado y mariscos',
                              review: '4.8',
                              ratings: "(233 votos)",
                              buttonText: 'Delivery',
                              hasActionButton: false,
                              isFavorito: false)
                        ],
                      )
                    ],
                  ),
                );
              },
              childCount:
                  1, // Aquí debes ajustar el número de elementos en la lista
            ),
          )
        ],
      ),
    );
  }
}
