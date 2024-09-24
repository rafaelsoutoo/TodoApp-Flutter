import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  final int index;
  final Map<dynamic, dynamic> item; 
  final Function(Map <String, dynamic>) navigateEdit;
  final Function(String) deleteById;
  const TodoCard({
    super.key,
    required this.index,
    required this.item,
    required this.navigateEdit,
    required this.deleteById,
  });

  @override
  Widget build(BuildContext context) {
    final id = item['_id'] as String;
    return Card(
      color: const Color.fromARGB(255, 54, 54, 54),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.black,
          child: Text('${index + 1}'),
        ),
        title: Text(item['title']),
        subtitle: Text(item['description']),
        trailing: PopupMenuButton<String>(
          onSelected: (value) {
            if (value == 'edit') {
              navigateEdit(item as Map<String, dynamic>);
            } else if (value == 'delete') {
              deleteById(id);
            }
          },
          itemBuilder: (context) {
            return [
              PopupMenuItem<String>(
                child: Text('Edit'),
                value: 'edit',
              ),
              PopupMenuItem<String>(
                child: Text('Delete'),
                value: 'delete',
              ),
            ];
          },
        ),
      ),
    );
  }
}
