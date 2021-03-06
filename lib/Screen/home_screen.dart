import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:ecommerce/assistant/user_info.dart';
// import 'package:ecommerce/screen/profile_screen.dart';
import 'package:ecommerce/Screen/sofa_details.dart';
import 'package:ecommerce/Screen/electronic_devices.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late double displayHeight = MediaQuery.of(context).size.height;
  late double displayWidth = MediaQuery.of(context).size.width;

  String userName = "";

  @override
  void initState() {
    super.initState();
    getSharedPreferenceData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(userName),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('E-Commerce App',
                    style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      // Navigator.push(context,
                      //   MaterialPageRoute(builder: (context) => const ProfileScreen()),
                      // );
                    },
                    child: const CircleAvatar(
                      child: Image(image: AssetImage("assets/nafees.jpeg")),
                      // NetworkImage('https://media.istockphoto.com/photos/modern-living-room-with-orange-couch-picture-id637876746?b=1&k=20&m=637876746&s=170667a&w=0&h=EJax_avgktyLW9mEDgAcot5fULDJcOaD5mF3lsBLviE=')),

                    radius: 20, foregroundColor: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    // height: screenHeight * 0.25,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Categories',
                              style: TextStyle(
                                  fontSize: 20, fontWeight:  FontWeight.bold
                              ),
                            ),
                            IconButton(
                              onPressed: (){},
                              icon: const Icon(Icons.arrow_right_alt, size: 30),
                            )
                          ],
                        ),
                        Container(
                          height: displayHeight * 0.06,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => const ElectronicDevices())
                                  );
                                },
                                child: Container(
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text('Electronic Devices',
                                        style: TextStyle(
                                          fontSize: 15, fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFF4EFEF),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(25),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: displayWidth * 0.01),
                              Container(
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text('TV & Home Appliances',
                                      style: TextStyle(
                                        fontSize: 15, fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                decoration: const BoxDecoration(
                                  color: Color(0xFFF4EFEF),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25),
                                  ),
                                ),
                              ),
                              SizedBox(width: displayWidth * 0.01),
                              Container(
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text('Health & Beauty',
                                      style: TextStyle(
                                        fontSize: 15, fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                decoration: const BoxDecoration(
                                  color: Color(0xFFF4EFEF),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25),
                                  ),
                                ),
                              ),
                              SizedBox(width: displayWidth * 0.01),
                              Container(
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text('Home & Lifestyle',
                                      style: TextStyle(
                                        fontSize: 15, fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                decoration: const BoxDecoration(
                                  color: Color(0xFFF4EFEF),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25),
                                  ),
                                ),
                              ),
                              SizedBox(width: displayWidth * 0.01),
                              Container(
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text('Fashion',
                                      style: TextStyle(
                                        fontSize: 15, fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                decoration: const BoxDecoration(
                                  color: Color(0xFFF4EFEF),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25),
                                  ),
                                ),
                              ),
                              SizedBox(width: displayWidth * 0.01),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: displayHeight * 0.02),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFFF2F5F5),
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const Divider(indent: 200, endIndent: 200, thickness: 5),
                    SizedBox(height: displayHeight * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Most Popular',
                          style: TextStyle(
                            fontSize: 20, fontWeight:  FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.arrow_right_alt, size: 30),
                        )
                      ],
                    ),
                    SizedBox(height: displayHeight * 0.01),
                    Container(
                      height: displayHeight * 0.4,
                      width: displayWidth,
                      child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 5,
                          crossAxisCount: 2,
                          mainAxisSpacing: 5,
                        ),
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return
                            GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => SofaDetails(index:index))
                              );
                            },
                            child: Container(
                              height: displayHeight * 0.15,
                              width:  displayWidth * 0.25,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    child: Image.network(
                                      'https://cdn-images.article.com/products/SKU25A/2890x1500/image74669.jpg?fit=max&w=1370&q=80&fm=webp',
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text('Andes Sofa',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: const [
                                      Text("??? 10000",
                                        style: TextStyle(
                                          decoration: TextDecoration.lineThrough,
                                          color: Colors.red,
                                        ),
                                      ),
                                      Text("??? 9000")
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void getSharedPreferenceData() async{
    UserInfo user = UserInfo();
    await user.getEmail().then((value) {
      setState(() {
        userName = value;
      });
    });
  }
}

