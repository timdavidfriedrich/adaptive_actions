import 'package:adaptive_actions/adaptive_actions.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: _ExampleScreen()));

class const _ExampleScreen() extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FilledButton(
          onPressed: () => showDialog<void>(
            context: context,
            builder: (dialogContext) => const _ExampleDialog(),
          ),
          child: const Text("Open dialog"),
        ),
      ),
    );
  }
}

class const _ExampleDialog() extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("Delete this word?"),
            const SizedBox(height: 24),
            AdaptiveActions(
              children: [
                OutlinedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("Cancel"),
                ),
                FilledButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("Delete"),
                ),
              ],
            ),
            const SizedBox(height: 24),
            AdaptiveActions.stretched(
              children: [
                OutlinedButton(onPressed: () {}, child: const Text("Hard")),
                OutlinedButton(onPressed: () {}, child: const Text("Good")),
                OutlinedButton(onPressed: () {}, child: const Text("Easy")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
