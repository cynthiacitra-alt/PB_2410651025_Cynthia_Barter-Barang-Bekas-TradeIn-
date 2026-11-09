import 'package:flutter/material.dart';
import '../models/task.dart';
import '../widgets/task_card.dart';

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

  void _showMessage(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

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
    _showMessage('Data berhasil ditambahkan');
  }

  void _updateTask(int index) {
    setState(() {
      _tasks[index].title = '${_tasks[index].title} (diubah)';
      _tasks[index].description = 'Data ini sudah diperbarui';
    });
    _showMessage('Data berhasil diperbarui');
  }

  void _deleteTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
    _showMessage('Data berhasil dihapus');
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
                return TaskCard(
                  task: _tasks[index],
                  onEdit: () => _updateTask(index),
                  onDelete: () => _deleteTask(index),
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
