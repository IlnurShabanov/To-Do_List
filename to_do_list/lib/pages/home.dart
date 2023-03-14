import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String _userToDo;
  List todo_list = [];

  @override
  void initState() {
    super.initState();

    todo_list.addAll(['Помыть Яшку', 'Приготовить индейку', 'Купить картошку']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 218, 58, 58),
      appBar: AppBar(
        title: Text('Список дел'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: todo_list.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key(todo_list[index]),
           child: Card(
            child: ListTile(
              title: Text(todo_list[index]),
            trailing: IconButton(
              icon: Icon(
                Icons.delete_sweep,
                 color: Colors.blue,
                 ),
                 onPressed: () {
                   setState(() {
              todo_list.removeAt(index);
            });
                 }, 
              ),
            ),
           ),
           onDismissed: (direction) {
            setState(() {
              todo_list.removeAt(index);
            });
           },
           );
        }
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed:() {
           showDialog(context: context, builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Добавить Элемент'),
              content: TextField(
                onChanged: (String value) {
                  _userToDo = value;
                },
               ),
               actions: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    todo_list.add(_userToDo);
                  });
                  Navigator.of(context).pop();
                },
                 child: Text('Добавить'))
               ],
              );
           });
        },
        child: Icon(
          Icons.add_box,
          color: Colors.white,
        ),
      ),
    );
  }
}

