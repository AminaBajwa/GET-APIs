import 'dart:convert';
import 'package:apis/Models/OrderBookingModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class OBitems extends StatefulWidget {
  const OBitems({super.key});

  @override
  State<OBitems> createState() => _OBitemsState();
}

class _OBitemsState extends State<OBitems> {

  List<OrderBookingModel> postList= [];
  Future<OrderBookingModel> getPostApi ()async{
    final response= await http.get(Uri.parse('https://apex.oracle.com/pls/apex/muhammad_usman/testlab/employees'));
    var data= jsonDecode(response.body.toString());
    if(response.statusCode==200)
    {
      return OrderBookingModel.fromJson(data);
      }
    else{
      return OrderBookingModel.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APIs"),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<OrderBookingModel>(
              future: getPostApi(),
              builder: (context, snapshot){
                if(snapshot.hasData){
                  return ListView.builder(
                      itemCount: snapshot.data!.items!.length,
                      itemBuilder: (context,index){
                        // return Text(index.toString());
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("empno: " + snapshot.data!.items![index].empno.toString()),
                                Text("enam: " + snapshot.data!.items![index].ename.toString()),
                                Text("job: " + snapshot.data!.items![index].job.toString()),
                                Text("mgr: " + snapshot.data!.items![index].mgr.toString()),
                                Text("hiredate: " + snapshot.data!.items![index].hiredate.toString()),
                                Text("sal: " + snapshot.data!.items![index].sal.toString()),
                                Text("comm: " + snapshot.data!.items![index].comm.toString()),
                                Text("deptno: " + snapshot.data!.items![index].deptno.toString()),

                              ],
                            ),
                          ),
                        );
                      });
                }else{
                  return Text("Loading");
                }

              },),
          )
        ],
      ),
    );
  }
}
