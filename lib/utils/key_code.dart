// Map of (keyLabel, isShiftPressed) to display string for shifted keys
final Map<(String, bool), String> _keyLabelShiftMap = {
  ('0', false): '0',
  ('0', true): ')',
  ('1', false): '1',
  ('1', true): '!',
  ('2', false): '2',
  ('2', true): '@',
  ('3', false): '3',
  ('3', true): '#',
  ('4', false): '4',
  ('4', true): '\$',
  ('5', false): '5',
  ('5', true): '%',
  ('6', false): '6',
  ('6', true): '^',
  ('7', false): '7',
  ('7', true): '&',
  ('8', false): '8',
  ('8', true): '*',
  ('9', false): '9',
  ('9', true): '(',
  (',', false): ',',
  (',', true): '<',
  ('.', false): '.',
  ('.', true): '>',
  (';', false): ';',
  (';', true): ':',
  ('/', false): '/',
  ('/', true): '?',
  ('[', false): '[',
  ('[', true): '{',
  (']', false): ']',
  (']', true): '}',
  ('\\', false): '\\',
  ('\\', true): '|',
  ('`', false): '`',
  ('`', true): '~',
  ("\"", false): "'",
  ("\"'", true): '"',
  ('=', false): '=',
  ('=', true): '+',
  ('-', false): '-',
  ('-', true): '_',
};

const shiftedSymbols = {
  '!',
  '@',
  '#',
  '\$',
  '%',
  '^',
  '&',
  '*',
  '(',
  ')',
  '_',
  '+',
  '{',
  '}',
  '|',
  ':',
  '"',
  '<',
  '>',
  '?',
  '~'
};

String getKeyFromKeyLabelShift(String keyLabel, bool isShiftPressed) {
  final shiftKey = _keyLabelShiftMap[(keyLabel, isShiftPressed)];
  if (shiftKey != null) return shiftKey;
  return keyLabel;
}

bool isShiftedSymbol(String key) {
  return shiftedSymbols.contains(key);
}

String? getUnshiftedSymbol(String shiftedKey) {
  for (var entry in _keyLabelShiftMap.entries) {
    if (entry.key.$2 && entry.value == shiftedKey) {
      return _keyLabelShiftMap[(entry.key.$1, false)];
    }
  }
  return null;
}
