import 'package:flutter/material.dart';

void main() {
  runApp(uygulamam());
}

class uygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Center(
              child: Text('Falcı Ana'),
            ),
          ),
          body: iskelet()),
    );
  }
}

class iskelet extends StatefulWidget {
  iskelet({Key? key}) : super(key: key);

  @override
  State<iskelet> createState() => _iskeletState();
}

class _iskeletState extends State<iskelet> {
  late String color;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 75.0,
            ),
            Image.asset('assets/indir-removebg-preview.png'),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return Ekran2();
                      },
                    ));
                  },
                  child: Text(
                    'Aşk Falı',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return Ekran3();
                        }),
                      );
                    },
                    child: Text(
                      'Para Falı',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Ekran2 extends StatefulWidget {
  const Ekran2({Key? key}) : super(key: key);

  @override
  State<Ekran2> createState() => _Ekran2State();
}

class _Ekran2State extends State<Ekran2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back))
        ],
        backgroundColor: Colors.red,
        title: Center(
          child: Text(
            'Falcı Ana',
          ),
        ),
      ),
      body: iskelet2(),
    ));
  }
}

class iskelet2 extends StatefulWidget {
  const iskelet2({Key? key}) : super(key: key);

  @override
  State<iskelet2> createState() => _iskelet2State();
}

class _iskelet2State extends State<iskelet2> {
  String askfali =
      '\nHoş Geldiniz.\n Aşk Falından birini seçiniz.\n Ne çıkarsa bahtınıza:)';

  ask1() {
    setState(() {
      askfali =
          'AŞK:\n Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.';
    });
  }

  ask2() {
    setState(() {
      askfali =
          'AŞK:\nBugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?';
    });
  }

  ask3() {
    setState(() {
      askfali =
          ' AŞK:\n Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.';
    });
  }

  ask4() {
    setState(() {
      askfali =
          'AŞK:\n Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 18.0, right: 18.0),
      child: Column(
        children: [
          SizedBox(height: 50.0),
          Center(
            child: Text(
              'Aşk Falı',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.red,
              ),
            ),
          ),
          SizedBox(height: 75.0),
          Text(
            askfali,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 50.0),
          RaisedButton(
            onPressed: ask1,
            child: Text(
              'Aşk Falı 1',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.red,
              ),
            ),
          ),
          RaisedButton(
            onPressed: ask2,
            child: Text(
              'Aşk Falı 2',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.red,
              ),
            ),
          ),
          RaisedButton(
            onPressed: ask3,
            child: Text(
              'Aşk Falı 3',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.red,
              ),
            ),
          ),
          RaisedButton(
            onPressed: ask4,
            child: Text(
              'Aşk Falı 4',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Ekran3 extends StatefulWidget {
  const Ekran3({Key? key}) : super(key: key);

  @override
  State<Ekran3> createState() => _Ekran3State();
}

class _Ekran3State extends State<Ekran3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back))
        ],
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'Falcı Ana',
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
      ),
      body: iskelet3(),
    ));
  }
}

class iskelet3 extends StatefulWidget {
  const iskelet3({Key? key}) : super(key: key);

  @override
  State<iskelet3> createState() => _iskelet3State();
}

class _iskelet3State extends State<iskelet3> {
  String parafali =
      '\nHoş Geldin.\n Para Falını çek bakalım.\nNe çıkacak bahtına...';

  para1() {
    setState(() {
      parafali =
          'PARA: \nKafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.';
    });
  }

  para2() {
    setState(() {
      parafali =
          'PARA:\n Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin';
    });
  }

  para3() {
    setState(() {
      parafali =
          'PARA:\n Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz';
    });
  }

  para4() {
    setState(() {
      parafali =
          'PARA:\n Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 18.0, right: 18.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 50.0),
          Center(
            child: Text(
              'Para Falı ',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.green,
              ),
            ),
          ),
          SizedBox(height: 50.0),
          Text(
            parafali,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 50.0),
          RaisedButton(
            onPressed: para1,
            child: Text('Para Falı 1 ',
                style: TextStyle(fontSize: 25.0, color: Colors.green)),
          ),
          RaisedButton(
            onPressed: para2,
            child: Text('Para Falı 2 ',
                style: TextStyle(fontSize: 25.0, color: Colors.green)),
          ),
          RaisedButton(
            onPressed: para3,
            child: Text('Para Falı 3 ',
                style: TextStyle(fontSize: 25.0, color: Colors.green)),
          ),
          RaisedButton(
            onPressed: para4,
            child: Text('Para Falı 4 ',
                style: TextStyle(fontSize: 25.0, color: Colors.green)),
          ),
        ],
      ),
    );
  }
}
