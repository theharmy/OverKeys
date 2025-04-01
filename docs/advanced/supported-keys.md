# Supported Keys Reference

This document lists all keys supported by OverKeys for use in custom layouts. Use these key names when defining your keyboard layouts in the configuration file.

## Alphabetic Keys

| Key       | Description                  |
| --------- | ---------------------------- |
| `A` - `Z` | Standard Latin alphabet keys |

## Numeric Keys

| Key | Alias | Shift Symbol |
| --- | ----- | ------------ |
| `0` |       | `)`          |
| `1` |       | `!`          |
| `2` |       | `@`          |
| `3` |       | `#`          |
| `4` |       | `$`          |
| `5` |       | `%`          |
| `6` |       | `^`          |
| `7` |       | `&`          |
| `8` |       | `*`          |
| `9` |       | `(`          |

## Function Keys

| Key          |
| ------------ |
| `F1` - `F12` |

## Navigation Keys

| Key        | Aliases                |
| ---------- | ---------------------- |
| `Left`     | `LEFT`, `←`, `◄`, `◀`  |
| `Right`    | `RIGHT`, `→`, `►`, `▶` |
| `Up`       | `UP`, `↑`, `▲`         |
| `Down`     | `DOWN`, `↓`, `▼`       |
| `Home`     | `HOME`, `⇱`, `⇤`, `↖`  |
| `End`      | `END`, `⇲`, `⇥`, `↘`   |
| `PageUp`   | `PGUP`, `⤒`, `⇞`       |
| `PageDown` | `PGDN`, `⤓`, `⇟`       |

## Editing Keys

| Key         | Aliases                                         |
| ----------- | ----------------------------------------------- |
| `Backspace` | `BSPC`, `BS`, `BKSP`, `BKS`, `⌫`, `␈`           |
| `Enter`     | `ENT`, `RETURN`, `RET`, `⏎`, `↵`, `↩`, `⌤`, `␤` |
| `Tab`       | `TAB`, `⭾`, `↹`                                 |
| `Space`     | ` ` (space character), `␣`, `⎵`, `␠`            |
| `Delete`    | `DEL`, `DELETE`, `⌦`, `␡`                       |
| `Insert`    | `INS`, `INSERT`, `⎀`                            |
| `Escape`    | `ESC`, `⎋`                                      |

## Modifier Keys

| Key        | Aliases                                                             |
| ---------- | ------------------------------------------------------------------- |
| `LShift`   | `Shift`,`SFT`, `SHFT`, `SHIFT`, `⇧`,`LSFT`, `LSHFT`, `LSHIFT`, `‹⇧` |
| `RShift`   | `RSFT`, `RSHFT`, `RSHIFT`, `⇧›`                                     |
| `LControl` | `Control`,`CTL`, `CTRL`, `⌃`, `⎈`,`LCTL`, `LCTRL`, `‹⌃`, `‹⎈`       |
| `RControl` | `RCTL`, `RCTRL`, `⌃›`, `⎈›`                                         |
| `LAlt`     | `Alt`,`ALT`, `⌥`, `⎇`,`LALT`, `‹⎇`, `‹⌥`                            |
| `RAlt`     | `RALT`, `⎇›`, `⌥›`                                                  |
| `Win`      | `WIN`, `⌘`, `⊞`, `◆`, `❖`                                           |

## Lock Keys

| Key          | Aliases                 |
| ------------ | ----------------------- |
| `CapsLock`   | `CAPS`, `⇪`             |
| `NumLock`    | `NLK`, `NLCK`, `⇭`      |
| `ScrollLock` | `SLCK`, `SCRLCK`, `⇳🔒` |

## Numpad Keys

| Key           | Alias  |
| ------------- | ------ |
| `Num0`        | `🔢₀`  |
| `Num1`        | `🔢₁`  |
| `Num2`        | `🔢₂`  |
| `Num3`        | `🔢₃`  |
| `Num4`        | `🔢₄`  |
| `Num5`        | `🔢₅`  |
| `Num6`        | `🔢₆`  |
| `Num7`        | `🔢₇`  |
| `Num8`        | `🔢₈`  |
| `Num9`        | `🔢₉`  |
| `NumMultiply` | `🔢∗`  |
| `NumAdd`      | `🔢₊`  |
| `NumSubtract` | `🔢₋`  |
| `NumDecimal`  | `🔢．` |
| `NumDivide`   | `🔢⁄`  |

## Punctuation and Symbol Keys

| Key     | Shift Symbol |
| ------- | ------------ |
| `,`     | `<`          |
| `.`     | `>`          |
| `;`     | `:`          |
| `/`     | `?`          |
| `[`     | `{`          |
| `]`     | `}`          |
| `\\`    | `\|`         |
| `` ` `` | `~`          |
| `'`     | `"`          |
| `=`     | `+`          |
| `-`     | `_`          |

## Implementation Notes

1. For now, modifier keys default to their left-side versions. For example, using `SHIFT` will only be triggered by the Left Shift key.
2. When using the space character `" "` in your layout, be aware that it will inherit all the properties of the spacebar including its layout name. If you want to avoid this behavior, use one of the alternative aliases like `SPC`, `␣`, `⎵`, etc. instead.
