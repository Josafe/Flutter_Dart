import 'package:dart_vero/src/TFG_CFGS_JOSAFE/src/pages/menuLateral.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:searchfield/searchfield.dart';


class DashboardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [

            //Header
           Row(
            children: [
              Text(
                "Dashboard",
                style: Theme.of(context).textTheme.headline6,),
            ],
           ),
            Spacer(),


            //Buscador
            Expanded(
              child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.red,
                filled: true,
                border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                suffixIcon: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(8.0 * 0.75),
                    margin: EdgeInsets.symmetric(horizontal: 8.0 / 2),
                    decoration: BoxDecoration(color: Colors.blueAccent,
                      borderRadius:
                      const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: SvgPicture.asset("ruta Icono buscar",color: Colors.red, height: 8),
                  ),
                ),
                ),
              ),
            ),

            //Tarjeta perfil
            Container(
              margin: EdgeInsets.only(left: 8.0),
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0 / 2),
              decoration: BoxDecoration(color: Colors.green,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.black54),
              ),
                child: Row(
                children: [
                  Image.asset("FotoPerfil aqui!!", height: 38,),
                  Padding(padding: const EdgeInsets.symmetric(
                    horizontal: 8.0 / 2
                  ),
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}

class TarjetaPerfil extends StatelessWidget {

  const TarjetaPerfil ({
    Key? key,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Tarjeta",
        fillColor: Colors.yellow,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),

        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.symmetric(horizontal: 8.0 / 2),
            decoration: BoxDecoration(
              color: Colors.pink,
            ),
          ),
        )
      ),

    );
  }
  }

  class SearchField extends StatelessWidget {
  const SearchField({
    Key? key
  }) : super(key: key);

  @override
    Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Buscar",
        fillColor: Colors.purple,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        suffixIcon: InkWell(
          onTap: (){

          },
          child: Container(

            padding: EdgeInsets.all(8* 0.75),
            margin: EdgeInsets.symmetric(horizontal: 8.0 / 2),
            decoration: BoxDecoration(
              color: Colors.green,
            ),
          ),
        )
      ),
    );
  }
  }






