import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Local De INNOVASPORT',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'CdJuarez, Mexico',
                  style: TextStyle(
                    color: Color(0xff3497d9),
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.add_box,
            color: Colors.red[500],
          ),
          Text('76'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.access_time, 'Tiempo'),
          _buildButtonColumn(color, Icons.accessibility, 'ropa'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Este negocio INNOVASPORT es de las mejores tiendas para aquellos'
        'que les gusta hacer deporte y son fanaticos de la moda'
        'encuantras los mejores descuentos en ropa deportiva de marca'
        'accesorios de deportes como balones, bombas de aire, tenis, mochilas'
        'las mejores marcas como Nike, Adidas, Puma, Underaurmour y muchoa mas ',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'INNOVASPORT',
      home: Scaffold(
        appBar: AppBar(
          title: Text('INNOVASPORT'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/localjrz.jpg',
              width: 400,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
