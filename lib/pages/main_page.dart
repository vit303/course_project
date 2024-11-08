import 'package:course_project/data_base/read_from_json.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Используем FutureBuilder для асинхронного получения данных
    return Scaffold(
      appBar: AppBar(
        title: Text("Apartments"),
      ),
      body: FutureBuilder<List<Map>>(
        future: readJsonFile("lib/data_base/apartments.json"),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Пока ждем данные, показываем индикатор загрузки
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            // Если возникла ошибка, выводим сообщение об ошибке
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            // Когда данные успешно получены
            final List<Map> apartments = snapshot.data!;
            return Row(
              children: apartments.map((apartment) {
                return Expanded(
                  child: Text(
                    apartment["apart"] ?? "No data", // Значение 'apart' или сообщение по умолчанию
                    textAlign: TextAlign.center,
                  ),
                );
              }).toList(),
            );
          }
        },
      ),
    );
  }
}