// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:teacher_bahaa_app/screens/screens/grades_screen/first_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Color> _nameColor = [
    Color(0xFFE5E28A),
    Color(0xFFB3EB98),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Image.asset('assets/pexels-photo-839011.jpeg'),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "الأستاذ بهاء أبو هيض",
                      style: Theme.of(context).textTheme.headline5,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "مدرس مادة الكيمياء \n للفرعين العلمي والاقتصاد المنزلي",
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontSize: 17),
                      textAlign: TextAlign.center,
                    ),
                    Divider(),
                    Text(
                      "’’موقع وتد رائع ، دراسة مريحة ، بتوفر الوقت والجهد ، والسعر أوفر بكتير من أي طرق تدريس تانية ، والنتائج كانت واضحة من امتحانات التجريبي ، كنت الأكثر تفوقا بصيفي ، والكل سألني عن السر ، وقلت بكل ثقة ، وتد التعليمي مع كوادره كامل متكامل ، بغنيني ، بكفي وبوفي ...’’",
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Card(
                      color: _nameColor[index],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "المراكز الثقافية",
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: Colors.black,
                                child: Icon(
                                  Icons.arrow_left,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/Untitled-1.png',
                              height: 150,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "علامات الطلاب الأوائل",
                  textDirection: TextDirection.rtl,
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.8,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "محمد صوالحة",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline6!,
                          ),
                          Text(
                            "99.3",
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(
                                    color: Theme.of(context).primaryColor),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: CustomElevatedButton(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    // color: Theme.of(context).colorScheme.secondary,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          "’’فعلا موقع أكثر من رائع ، وفرتوا علينا كل شي ، حتى الضغط النفسي الي كنت اتعرضله لما اسجل بالمركز ، فكنت لازم انظم وقتي بناء على وقت المراكز ، اما وتد هي الي بتنظم وقتها بناء على راحتي .. شكرا وتد بحبكم ..’’",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "سارة طعاني",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Text(
                          "اربد، طالبة ٢٠١٨",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.start,
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                      ],
                    ),
                  );
                }),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                child: CustomElevatedButton(),
                alignment: Alignment.centerLeft,
              ),
            ),
            Image.asset('assets/5945157.png'),
          ],
        ),
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          elevation: MaterialStateProperty.all(10),
          backgroundColor: MaterialStateProperty.all(
              Theme.of(context).colorScheme.secondary),
          fixedSize: MaterialStateProperty.all(Size(120, 40))),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => FirstScreen()));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.arrow_back_ios_new,
            size: 18,
            color: Theme.of(context).primaryColor,
          ),
          Text(
            "تصفح المزيد",
            textDirection: TextDirection.rtl,
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        ],
      ),
    );
  }
}
