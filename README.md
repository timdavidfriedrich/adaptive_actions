# adaptive_actions

Lays out action buttons, for example at the bottom of a dialog. The buttons sit next to each other while they fit, and stack full-width (last button on top) when they don't.

```dart
import 'package:adaptive_actions/adaptive_actions.dart';

AdaptiveActions(
  children: [
    OutlinedButton(onPressed: cancel, child: const Text("Cancel")),
    FilledButton(onPressed: confirm, child: const Text("Delete")),
  ],
);
```

- `AdaptiveActions`: buttons keep their natural width and align to the end of the row.
- `AdaptiveActions.stretched`: buttons share the row in equal widths. They stack once the widest one no longer fits its share.

Both stack when the row is too narrow, so long translations never overflow. Right-to-left layouts are mirrored.


## How to use it

Pull it from git and pin a tag:

```yaml
dependencies:
  adaptive_actions:
    git:
      url: https://github.com/timdavidfriedrich/adaptive_actions.git
      ref: v1.0.0
```

```bash
fvm flutter pub add adaptive_actions --git-url=https://github.com/timdavidfriedrich/adaptive_actions.git --git-ref=v1.0.0
```
