
import 'package:flutter/material.dart';
import '../Static/importfiles.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
      body:  Container(
        //height: MediaQuery.of(context).size.height * 0.75,
        child: DefaultTabController(
          length: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Material(
                  child: TabBar(
                    //physics: NeverScrollableScrollPhysics(),
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: Colors.white,
                    labelColor: Colors.white,
                    indicatorWeight: 2,
                    indicatorColor: appPrimaryMaterialColor,
                    tabs: [
                      Tab(
                        child: Text("ONGOING",style: TextStyle(color: appPrimaryMaterialColor,fontSize: 16),),
                      ),
                      Tab(
                        child: Text("PENDING",style: TextStyle(color: Colors.black,fontSize: 20),),
                      ),
                      Tab(
                        child: Text("HISTORY",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 16),),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      //margin: EdgeInsets.only(top: 100.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              padding: EdgeInsets.all(0),
                              itemCount: 15,
                              itemBuilder: (context, index) {
                                return OngoingComponent();
                              },
                            ),
                          )
                        ],
                      ),
                    ),  Container(
                      //margin: EdgeInsets.only(top: 100.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              padding: EdgeInsets.all(0),
                              itemCount: 15,
                              itemBuilder: (context, index) {
                                return PendingComponent();
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      //margin: EdgeInsets.only(top: 100.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              padding: EdgeInsets.all(0),
                              itemCount: 15,
                              itemBuilder: (context, index) {
                                return HistoryScreen();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
