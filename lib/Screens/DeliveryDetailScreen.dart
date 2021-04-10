import 'package:driver_app/Constant/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeliveryDetailScreen extends StatefulWidget {
  @override
  _DeliveryDetailScreenState createState() => _DeliveryDetailScreenState();
}

class _DeliveryDetailScreenState extends State<DeliveryDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon: Icon(Icons.arrow_back_ios_sharp,size: 20.0,color: AppColors.black_color,), onPressed: (){Navigator.pop(context);}),
            Container(
              child: Image.asset("assets/splash.png",height: 260,),
            ),
            IconButton(
                icon: Icon(Icons.more_vert,size: 20.0,color: AppColors.black_color,), onPressed: (){}),
          ],
        ),
        preferredSize: Size.fromHeight(100.0),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Text(
              "Delivery Details",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                            child: Text(
                          "ORDER ID - 210021",
                          style: TextStyle(color: appPrimaryMaterialColor, fontSize: 20),
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(
                              "assets/girl.png",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Center(
                              child: Text(
                            "Muslman Iqbal",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                              size: 16,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "4.7/5",
                              style: TextStyle(color: Colors.yellow[700]),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 15),
                          child: Text(
                            "PICKUP INFO",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 8, top: 8),
                          child: Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text("Name"),
                                    SizedBox(
                                      width: 100,
                                    ),
                                    Flexible(
                                      child: Text("Vanit Gupta"),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: [
                                    Text("Contact"),
                                    SizedBox(
                                      width: 90,
                                    ),
                                    Flexible(
                                      child: Text("+91- 9999999999"),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Pickup Address"),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Flexible(
                                        child: Text(
                                            "M3M Golf estate, Sect 65 ,Gurgoan")),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 15),
                          child: Text(
                            "DROPOFF INFO",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 8, top: 8),
                          child: Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text("Name"),
                                    SizedBox(
                                      width: 100,
                                    ),
                                    Flexible(
                                      child: Text("Vanit Gupta"),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: [
                                    Text("Contact"),
                                    SizedBox(
                                      width: 90,
                                    ),
                                    Flexible(
                                      child: Text("+91- 9999999999"),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Dropoff Address"),
                                    SizedBox(
                                      width: 35,
                                    ),
                                    Flexible(
                                        child: Text(
                                            "M3M Golf estate, Sect 65 ,Gurgoan")),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),    Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 15),
                          child: Text(
                            "DRIVER INFO",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 8, top: 8),
                          child: Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text("Status"),
                                    SizedBox(
                                      width: 100,
                                    ),
                                    Flexible(
                                      child: Text("On Route"),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: [
                                    Text("Driver"),
                                    SizedBox(
                                      width: 102,
                                    ),
                                    Flexible(
                                      child: Text("Vinkesh Krishna"),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Driver Contact"),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Flexible(
                                        child: Text(
                                            "+91- 9999999999")),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        Row(
mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context, '/DeliveryDetailScreen');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top:8.0,bottom: 8,right: 30,left: 30),
                                  child: Text("Deliver",style: TextStyle(color: Colors.white),),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top:8.0,bottom: 8,right: 30,left: 30),
                                child: Text("Route",style: TextStyle(color: Colors.white),),
                              ),
                            ),
                            SizedBox(width: 10,),Container(

                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top:8.0,bottom: 8,right: 25,left: 25),
                                child: Text("Problem",style: TextStyle(color: Colors.white),),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
