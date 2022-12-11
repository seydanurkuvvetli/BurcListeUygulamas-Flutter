import 'package:burcprojesi/burc_detay.dart';
import 'package:burcprojesi/model/burc.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listenenBurc;
  const BurcItem({required this.listenenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BurcDetay(secilenBurc: listenenBurc),
                ),
              );
            },
            leading: Image.asset(
              //leading baştaki resim
              "images/" + listenenBurc.burcKucukResim,
              //küçük resimlerimiz için height ve width propertylerini kullanmamalıyız pixsel sorunu olabilir çok sıkıntı olursa fit kullanılabilir.
            ),
            title: Text(
              listenenBurc.burcAdi,
              style: myTextStyle.headline5,
            ),
            subtitle: Text(
              listenenBurc.burcTarihi,
              style: myTextStyle.subtitle1,
            ),
            trailing: Icon(Icons.arrow_forward_ios), //trailing :sondaki resim
          ),
        ),
      ),
    );
  }
}
