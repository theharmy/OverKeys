# Supported Keys Reference

This document lists all keys supported by OverKeys for use in custom layouts. Use these key names when defining your keyboard layouts in the configuration file.

## Alphabetic Keys

| Key | Description |
|-----|-------------|
| `A` - `Z` | Standard Latin alphabet keys |

## Numeric Keys

| Key | Alias | Shift Symbol |
|-----|-------|-------------|
| `0` | | `)` |
| `1` | | `!` |
| `2` | | `@` |
| `3` | | `#` |
| `4` | | `$` |
| `5` | | `%` |
| `6` | | `^` |
| `7` | | `&` |
| `8` | | `*` |
| `9` | | `(` |

## Function Keys

| Key |
|-----|
| `F1` - `F12` |

## Navigation Keys

| Key | Aliases |
|-----|---------|
| `Left` | `LEFT`, `←`, `◄`, `◀` |
| `Right` | `RIGHT`, `→`, `►`, `▶` |
| `Up` | `UP`, `↑`, `▲` |
| `Down` | `DOWN`, `↓`, `▼` |
| `Home` | `HOME`, `⇱`, `⇤`, `↖` |
| `End` | `END`, `⇲`, `⇥`, `↘` |
| `PageUp` | `PGUP`, `⤒`, `⇞` |
| `PageDown` | `PGDN`, `⤓`, `⇟` |

## Editing Keys

| Key | Aliases |
|-----|---------|
| `Backspace` | `BSPC`, `BS`, `BKSP`, `BKS`, `⌫`, `␈` |
| `Enter` | `ENT`, `RETURN`, `RET`, `⏎`, `↵`, `↩`, `⌤`, `␤` |
| `Tab` | `TAB`, `⭾`, `↹` |
| `Space` | ` ` (space character), `␣`, `⎵`, `␠` |
| `Delete` | `DEL`, `DELETE`, `⌦`, `␡` |
| `Insert` | `INS`, `INSERT`, `⎀` |
| `Escape` | `ESC`, `⎋` |

## Modifier Keys

| Key | Aliases |
|-----|---------|
| `Shift` | `SFT`, `SHFT`, `SHIFT`, `⇧` |
| `LShift` | `LSFT`, `LSHFT`, `LSHIFT`, `‹⇧` |
| `RShift` | `RSFT`, `RSHFT`, `RSHIFT`, `⇧›` |
| `Control` | `CTL`, `CTRL`, `⌃`, `⎈` |
| `LControl` | `LCTL`, `LCTRL`, `‹⌃`, `‹⎈` |
| `RControl` | `RCTL`, `RCTRL`, `⌃›`, `⎈›` |
| `Alt` | `ALT`, `⌥`, `⎇` |
| `LAlt` | `LALT`, `‹⎇`, `‹⌥` |
| `RAlt` | `RALT`, `⎇›`, `⌥›` |
| `Win` | `WIN`, `⌘`, `⊞`, `◆`, `❖` |

## Lock Keys

| Key | Aliases |
|-----|---------|
| `CapsLock` | `CAPS`, `⇪` |
| `NumLock` | `NLK`, `NLCK`, `⇭` |
| `ScrollLock` | `SLCK`, `SCRLCK`, `⇳🔒` |

## Numpad Keys

| Key | Alias |
|-----|-------|
| `Num0` | `🔢₀` |
| `Num1` | `🔢₁` |
| `Num2` | `🔢₂` |
| `Num3` | `🔢₃` |
| `Num4` | `🔢₄` |
| `Num5` | `🔢₅` |
| `Num6` | `🔢₆` |
| `Num7` | `🔢₇` |
| `Num8` | `🔢₈` |
| `Num9` | `🔢₉` |
| `NumMultiply` | `🔢∗` |
| `NumAdd` | `🔢₊` |
| `NumSubtract` | `🔢₋` |
| `NumDecimal` | `🔢．` |
| `NumDivide` | `🔢⁄` |

## Punctuation and Symbol Keys

| Key | Shift Symbol |
|-----|-------------|
| `,` | `<` |
| `.` | `>` |
| `;` | `:` |
| `/` | `?` |
| `[` | `{` |
| `]` | `}` |
| `\\` | `\|` |
| `` ` `` | `~` |
| `'` | `"` |
| `=` | `+` |
| `-` | `_` |

## Notes

1. When defining your custom layout, use the key name or any of its valid aliases.
2. The standard format in your layout configuration is:

    ```json
    "keys": [
      ["`", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "-", "=", "BSPC"],
      ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P", "[", "]"],
      ["A", "S", "D", "F", "G", "H", "J", "K", "L", ";", "'"],
      ["Z", "X", "C", "V", "B", "N", "M", ",", ".", "/"],
      [" "]
    ]
    ```

3. Keys are case-sensitive in the configuration. Most key names start with uppercase letters.
4. While Unicode symbols are supported for many keys, it's recommended to use the standard key names for better compatibility and readability.
5. When using the space character `" "` in your layout, be aware that it will inherit all the properties of the spacebar including its layout name. If you want to avoid this behavior, use one of the alternative aliases like `Space`, `␣`, or `⎵` instead.
