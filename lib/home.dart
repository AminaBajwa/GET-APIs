import 'dart:convert';
import 'package:apis/Models/PostsModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {


  List<PostsModel> postList= [];
  Future<List<PostsModel>> getPostApi ()async{
    final response= await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data= jsonDecode(response.body.toString());
    if(response.statusCode==200)
      {
        postList.clear();
        for(Map i in data){
          postList.add(PostsModel.fromJson(i));
        }
        return postList;
      }else{
      return postList;
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
            child: FutureBuilder(
              future: getPostApi(),
              builder: (context, snapshot){
                if(!snapshot.hasData){
                  return Text("Loading");
                }else{
                  return ListView.builder(
                      itemCount: postList.length,
                      itemBuilder: (context,index){
                    // return Text(index.toString());
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Title', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                                Text(postList[index].title.toString()),
                                SizedBox(height: 5,),
                                Text('Description', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                                SizedBox(height: 5,),
                                Text(postList[index].body.toString())

                              ],
                            ),
                          ),
                        );
                  });
                }

            },),
          )
        ],
      ),
    );
  }
}
