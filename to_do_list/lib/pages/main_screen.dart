import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 218, 58, 58),
      appBar: AppBar(
        title: Text('Список дел'),
        centerTitle: true,
      ),
      body: Column(
        children: [
        Text('Main Screen', style: TextStyle(color: Colors.white),),
        ElevatedButton(onPressed: () {
          // Переход между страницами можно осуществлять 
          // с помощью метода Navigator и его функций
          // с помощью функции pushNamed мы накладываем один слой на другой
          // и дополнительно создается кнопка перехода назад
          Navigator.pushNamed(context, '/to_do_list');
          // также есть функция pushNamedAndRemoveUntil, которая
          // может стереть предыдущий слой( предыдущую страницу приложения)
          // pushReplacementNamed не оставляет способа вернуться назад
          // можно только создать новую кнопку
        }, child: Text('Перейти далее'))
      ],
      )
       );
  }
}