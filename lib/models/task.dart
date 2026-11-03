import 'package:flutter/material.dart';

class Task {
  final int id;
  String title;
  String description;

  Task({
    required this.id,
    required this.title,
    required this.description,
  });
}

class DataPage extends StatefulWidget {
  const DataPage({super.key});

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  final List<Task> _tasks = [
    Task(
      id: 1,
      title: 'Belajar Flutter',
      description: 'Membuat CRUD sederhana',
    ),
  ];

  int _nextId = 2;

  void _addTask() {
    setState(() {
      _tasks.add(
        Task(
          id: _nextId,
          title: 'Tugas $_nextId',
          description: 'Deskripsi tugas $_nextId',
        ),
      );
      _nextId++;
    });

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Data berhasil ditambahkan'),
        ),
      );
    }
  }

  void _updateTask(int index) {
    setState(() {
      _tasks[index].title = '${_tasks[index].title} (diubah)';
      _tasks[index].description = 'Data ini sudah diperbarui';
    });

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Data berhasil diperbarui'),
        ),
      );
    }
  }

  void _deleteTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Data berhasil dihapus'),
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Module v0.3'),
      ),
      body: _tasks.isEmpty
          ? const Center(
              child: Text('Belum ada data. Silakan tambahkan data baru.'),
            )
          : ListView.builder(
              itemCount: _tasks.length,
              itemBuilder: (context, index) {
                final task = _tasks[index];

                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  child: ListTile(
                    title: Text(task.title),
                    subtitle: Text(task.description),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () => _updateTask(index),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () => _deleteTask(index),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTask,
        child: const Icon(Icons.add),
      ),
    );
  }
}
