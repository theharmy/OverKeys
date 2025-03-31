# Custom Layouts

The custom layout feature in OverKeys allows you to use your own keyboard layouts defined in a configuration file. This is particularly useful for users who need:

- Specialized layouts not included in the default options
- Custom symbol or function key arrangements
- Language-specific layouts
- Modified versions of standard layouts

## How It Works

When enabled, OverKeys will load and display your custom layout from the configuration file. Your custom layout can include any arrangement of keys and can be used as your primary input method.

## Setup Instructions

### Turning the setting on

1. Open OverKeys
2. Right-click the OverKeys icon in the system tray
3. Select **Preferences**
4. Go to the **General** tab
5. Check the **Enable advanced settings** option
6. Check the **Use custom layout from config** option
7. Restart OverKeys if needed

### Using Configuration File

For more detailed customization, you can edit the `overkeys_config.json` file directly:

1. Right-click the OverKeys tray icon
2. Select **Preferences**
3. Go to the **General** tab
4. Click **Open Config**
5. In the JSON file, edit the `userLayouts` array and set the `defaultUserLayout` field:

    ```json
    {
        "kanataHost": "127.0.0.1",
        "kanataPort": 4039,
        "userLayouts": [
            {
                "name": "MyCustomLayout",
                "keys": [
                    ["`", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "-", "=", "BSPC"],
                    ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P", "[", "]"],
                    ["A", "S", "D", "F", "G", "H", "J", "K", "L", ";", "'"],
                    ["Z", "X", "C", "V", "B", "N", "M", ",", ".", "/"],
                    [" "]
                ]
            }
        ],
        "defaultUserLayout": "MyCustomLayout",
        "altLayout": "Arabic"
    }
    ```

6. Save the file and restart OverKeys

## Default User Layouts

OverKeys comes with several pre-configured user layouts, including:

- Extend (navigation and editing keys)
- Symbol (special characters and symbols)
- Arabic (Arabic language keyboard)
- Russian (Russian language keyboard)

## Creating Custom Layouts

You can create custom layouts by adding them to the `userLayouts` section in the configuration file. Each layout requires a unique name and a keys array that defines the layout structure:

```json
{
    "name": "MyCustomLayout",
    "keys": [
        // Top row (required)
        ["`", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "-", "=", "BSPC"],
        // Second row
        ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P", "[", "]"],
        // Third row
        ["A", "S", "D", "F", "G", "H", "J", "K", "L", ";", "'"],
        // Fourth row
        ["Z", "X", "C", "V", "B", "N", "M", ",", ".", "/"],
        // Fifth row
        [" "]
    ]
}
```

You can then set this layout as your default by updating the `defaultUserLayout` field:

```json
"defaultUserLayout": "MyCustomLayout"
```

## Format Guidelines

1. **Key Names**: Use standard key symbols or their aliases as defined in the system. For key names and their aliases, see [Supported Keys](../advanced/supported-keys.md).
2. **Layout Structure**: Each row should be defined as an array of keys. At minimum, a layout must have a top row defined.
3. **Language Support**: Unicode characters are supported for international layouts
4. **Flexible Row Lengths**: Your custom layout doesn't need to follow standard row lengths. You can create layouts of any dimension. Here's an example of a compact 4×4 layout:

    ```json
    {
        "name": "Compact4x4",
        "keys": [
            [""], // Mandatory top row, just turn off show top row setting
            ["1", "2", "3", "A"],
            ["4", "5", "6", "B"],
            ["7", "8", "9", "C"],
            ["*", "0", "#", "D"]
        ]
    }
    ```

## Row Length Guidelines

While you have flexibility in defining your layout dimensions, the following row lengths are recommended to ensure compatibility across different key styles and visual presentations:

- Top row: 14 keys (including backspace)
- Second row: 12 keys
- Third row: 11 keys
- Fourth row: 10 keys
- Bottom row: 1 key (space bar)

Following these recommendations will help ensure your custom layout displays correctly with different keymap styles in OverKeys.

## Implementation Notes

- Custom layouts are loaded when OverKeys starts or when you toggle the setting.
- If the Kanata integration is enabled, your custom layout will be used as the base layout/layer, and Kanata will control layer switching.
- Custom layouts can be used simultaneously with the alternative layout feature.
- Custom layouts with names identical to the natively supported layouts will override the native ones.

## Troubleshooting

- If your custom layout doesn't appear after enabling it, try restarting OverKeys.
- If your layout displays incorrectly, verify the JSON format in your configuration file.
- Ensure your layout name in `defaultUserLayout` exactly matches one of the names in your `userLayouts` array.
- If you're using symbols or special characters, make sure they're properly escaped in the JSON.
- You can revert to built-in layouts by disabling the "Use custom layout from config" option.
