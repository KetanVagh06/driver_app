import 'package:flutter/material.dart';

class PendingComponent extends StatefulWidget {
  @override
  _PendingComponentState createState() => _PendingComponentState();
}

class _PendingComponentState extends State<PendingComponent> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Booking ID - 11213",style: TextStyle(fontSize: 14),),SizedBox(height: 3,),
                Text("Delivery Date - April 9,2021",style: TextStyle(fontSize: 14),),SizedBox(height: 3,),
                Text("Pickup - M3M Golf estate, Sect 65 ,Gurgoan",style: TextStyle(fontSize: 14),),SizedBox(height: 3,),
                Text("122022",style: TextStyle(fontSize: 14),),SizedBox(height: 3,),
                Text("Drop off - Krishna Street, Savitri Nagar, New Delhi.",style: TextStyle(fontSize: 14),),SizedBox(height: 3,),Text("112001",style: TextStyle(fontSize: 14),),SizedBox(height: 3,),
                SizedBox(height: 5,),
                Row(

                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top:8.0,bottom: 8,right: 20,left: 20),
                        child: Text("Details",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    SizedBox(width: 15,),Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top:8.0,bottom: 8,right: 20,left: 20),
                        child: Text("Accept",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    SizedBox(width: 15,),
                  ],
                )

              ],
            ),
            Icon(Icons.share_sharp)
          ],
        ),
      ),
    );
  }
}
