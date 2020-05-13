import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

String lorem =
    '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ex leo, finibus ac sem sit amet, placerat commodo arcu. Cras quam felis, maximus ac mollis ornare, auctor a ligula. Curabitur in justo viverra, malesuada odio eget, elementum felis. Nulla iaculis tincidunt augue, et fermentum tortor commodo at. Donec posuere augue leo, quis blandit nunc facilisis at. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis sollicitudin sagittis elit, nec feugiat enim tempor ac. Ut ultricies aliquet ante, quis maximus nisi laoreet at. Cras augue purus, egestas porta congue eget, porta tempor magna. Etiam ac vulputate metus, sed interdum orci. Praesent ultrices odio magna, vel ultricies nulla congue vitae. Ut ut purus sagittis, commodo metus consectetur, finibus nisi.

Curabitur a venenatis nisi. Praesent a aliquet nulla. Etiam dignissim eu lorem in tempus. Nunc vulputate diam quis massa facilisis vestibulum. Suspendisse id nibh eget massa porta mollis. Sed vestibulum vehicula malesuada. Mauris fringilla purus et lobortis commodo. Curabitur tincidunt magna eu turpis pretium volutpat. Pellentesque fringilla tellus ex. Pellentesque in leo et arcu facilisis placerat.

Fusce at gravida mauris. Vestibulum nibh magna, ullamcorper quis sem vel, fringilla luctus magna. Aenean nec augue lectus. Fusce vel imperdiet metus, et congue purus. Curabitur dignissim, tortor ut facilisis vestibulum, ligula orci porttitor ipsum, commodo rutrum eros nunc a nunc. In venenatis, lorem non efficitur sagittis, ante felis mollis massa, ac condimentum nunc magna sit amet felis. Donec suscipit dictum risus in egestas. Mauris tristique est elit, eget gravida ligula condimentum sed. Morbi at vestibulum velit. Vestibulum at molestie velit, ut eleifend tortor. Nulla dapibus porta accumsan. Nulla ultrices posuere mi. Curabitur vel ligula interdum, condimentum libero quis, cursus urna. Sed vestibulum enim neque, a ultrices est cursus nec. Quisque mollis condimentum elit ut congue. Cras eu turpis et mi convallis egestas.

Suspendisse ullamcorper, ex sed aliquet molestie, lectus ex convallis enim, scelerisque faucibus ipsum nunc vitae quam. Duis pulvinar ullamcorper libero. Praesent hendrerit metus ac ultrices tempus. Nunc cursus nibh ultricies tristique molestie. Vivamus a ligula et nunc condimentum faucibus. Duis commodo massa vitae mattis dapibus. Quisque tincidunt tristique volutpat. Aliquam sed sapien leo. In neque ligula, pretium sit amet metus commodo, placerat fringilla elit. Donec mollis risus ante, id cursus turpis laoreet id. In commodo sem enim, ac porttitor ligula fringilla a. Suspendisse eleifend quam a ex tincidunt, eget blandit nibh porta. Curabitur enim dui, tempus et convallis mattis, hendrerit eget elit.

Integer vehicula nisl et venenatis congue. Quisque dapibus tortor diam, at ultricies sapien ultricies ac. Etiam porta eros et lectus lacinia laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent pharetra ut purus at sagittis. Praesent tincidunt sagittis neque, blandit sodales erat egestas in. Integer nunc dolor, venenatis id libero id, consequat aliquam eros. Maecenas ultricies erat quis lectus maximus, vitae consequat eros eleifend. Etiam sit amet lectus volutpat, facilisis elit id, pellentesque sapien. Maecenas et enim ut ligula placerat gravida vitae a mauris. Mauris dignissim ultrices rhoncus. Proin leo quam, faucibus quis ligula vel, euismod placerat justo. Praesent id ligula id enim vestibulum lobortis. Duis et diam nisi. Donec vitae nibh a leo interdum fermentum vel non tellus. Maecenas vitae magna ut tellus imperdiet maximus vitae in velit.''';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Stack and Align")),
        body: Stack(
          children: <Widget>[
            // Background
            Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.white),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.black12),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.black12),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //ListView
            ListView(
              children: <Widget>[
                Container(
                  child: Text(
                    "Lorem Ipsum",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Text(
                    lorem,
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),

            //Button di tengah bawah
            Align(
              alignment: Alignment(0 , 0.90), // Scalled from 0 to 1 or 0 to -1
              child: RaisedButton(
                onPressed: () {},
                child: Text("My Button"),
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
