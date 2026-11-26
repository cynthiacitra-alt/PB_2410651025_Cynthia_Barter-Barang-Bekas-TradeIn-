import 'package:flutter/material.dart';

import '../models/task_item.dart';
import '../services/task_api_service.dart';

class ApiTaskPage extends StatefulWidget {
  const ApiTaskPage({super.key});

  @override
  State<ApiTaskPage> createState() => _ApiTaskPageState();
}

class _ApiTaskPageState extends State<ApiTaskPage> {
  late Future<List<TaskItem>> futureTasks;

  @override
  void initState() {
    super.initState();
    futureTasks = TaskApiService().fetchTasks();
  }

  void reloadData() {
    setState(() {
      futureTasks = TaskApiService().fetchTasks();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data dari API'),
      ),
      body: FutureBuilder<List<TaskItem>>(
        future: futureTasks,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Data gagal dimuat.'),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: reloadData,
                    child: const Text('Coba Lagi'),
                  ),
                ],
              ),
            );
          }

          final tasks = snapshot.data ?? [];

          if (tasks.isEmpty) {
            return const Center(
              child: Text('Belum ada data tersedia.'),
            );
          }

          return ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              final task = tasks[index];

              return ListTile(
                title: Text(task.title),
                subtitle: Text(task.description),
              );
            },
          );
        },
      ),
    );
  }
}