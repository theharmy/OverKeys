<a id="readme-top"></a>

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <img src="assets/images/OK.png" alt="OverKeys Logo" width="160" height="160">
  <h1 align="center">OverKeys</h1>
  <p align="center">
    A customizable, open-source on-screen keyboard visualizer for alternative layouts!
    <br />
    <br />
    <a href="https://github.com/conventoangelo/OverKeys/releases">Download Release</a>
    ·
    <a href="https://github.com/conventoangelo/OverKeys/issues/new?template=bug_report.md">Report Bug</a>
    ·
    <a href="https://github.com/conventoangelo/OverKeys/issues/new?template=feature_request.md">Request a Feature</a>
    ·
    <a href="https://github.com/conventoangelo/OverKeys/discussions/new?category=q-a">Ask a Question</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#about-the-project">About The Project</a></li>
    <li><a href="#features">Features</a></li>
    <li><a href="#getting-started">Getting Started</a></li>
    <li><a href="#configuration">Configuration</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->

## About The Project

![OverKeys Demo](https://github.com/conventoangelo/OverKeys/blob/main/assets/images/OverKeysDemo.gif)

<https://github.com/user-attachments/assets/c687a448-52b0-41bc-9b6b-07e61c2d3b31>

OverKeys is an open-source on-screen keyboard designed for users to practice alternative keyboard layouts, such as **Canary**, **Colemak**, **Dvorak**, and many more. Built in [**Flutter**](https://flutter.dev/), it allows full customizability, making it perfect for users learning or working with non-traditional layouts.

This project was initially developed to help with system-wide practice of the **Canary layout**, but has since evolved to support multiple layouts and customization options.

### Samples

<table>
  <tr>
    <td>
      <img src="assets/images/aurora1.png" alt="aurora dark background">
      <p align="center">Aurora (On Dark Background)</p>
    </td>
    <td>
      <img src="assets/images/aurora2.png" alt="aurora light background">
      <p align="center">Aurora (On Light Background)</p>
    </td>
  </tr>
  <tr>
    <td>
      <img src="assets/images/eyco1.png" alt="custom dark background">
      <p align="center">Custom (On Dark Background)</p>
    </td>
    <td>
      <img src="assets/images/eyco2.png" alt="custom light background">
      <p align="center">Custom (On Light Background)</p>
    </td>
  </tr>
  <tr>
    <td>
      <img src="assets/images/catpuccin.png" alt="catpuccin">
      <p align="center">Catppuccin</p>
    </td>
    <td>
      <img src="assets/images/redsamurai.png" alt="split matrix">
      <p align="center">Red Samurai</p>
    </td>
    </tr>
    <tr>
    <td>
      <img src="assets/images/splitmatrix.png" alt="red samurai">
      <p align="center">Split Matrix Style</p>
    </td>
    <td>
      <img src="assets/images/matrix.png" alt="matrix">
      <p align="center">Matrix Style</p>
    </td>
  </tr>
</table>
<sub>Note: The themes are not provided by default and were instead manually configured. Colors were based on the MonkeyType themes of the same name.</sub>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Features

- **Multi-layout support**: The following layouts are currently natively supported.
  <details>
  <summary>Layouts</summary>
    <ul>
      <li>QWERTY</li>
      <li>Colemak</li>
      <li>Dvorak</li>
      <li>Canaria</li>
      <li>Canary</li>
      <li>Canary Matrix</li>
      <li>Colemak DH</li>
      <li>Colemak DH Matrix</li>
      <li>Engram</li>
      <li>Focal</li>
      <li>Gallium (Col-Stag)</li>
      <li>Gallium V2 (Row-Stag)</li>
      <li>Graphite</li>
      <li>Halmak</li>
      <li>Hands Down</li>
      <li>NERPS</li>
      <li>Norman</li>
      <li>Sturdy</li>
      <li>Sturdy Angle (Staggered)</li>
      <li>Workman</li>
    </ul>
  </details>
- **Customizable styles**: Change colors, fonts, sizes, offsets, and key styles to fit your preference.
- **Always on top**: Keep the keyboard on top of all windows for constant access.
- **Auto-hide**: The keyboard hides automatically when not in use.
- **Keymap layouts**: Supports keymap layouts such as staggered, matrix, and split matrix.
- [**Layer switching (Kanata)**](#layer-switching-through-kanata-tcp): Connect to [Kanata](https://github.com/jtroo/kanata) through TCP to dynamically display the active layer.
- **User configurations**: Easily add and use custom keyboard layouts through `overkeys_config.json`.
- **Side-by-side layouts**: Display alternative layouts alongside the default layout, which is useful for showing multiple languages at once. Note that key press highlighting is determined by the `defaultLayout`.
- **Top row/Number row**: Optional row above the main keyboard that can show numbers or other user-configurated keys.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Getting Started

Follow these instructions to set up OverKeys on your local machine.

### Prerequisites

- Windows OS

### Installation

1. Download the latest [EXE installer](https://github.com/conventoangelo/OverKeys/releases).
2. Run the installer and follow the on-screen instructions.
3. Once installed, OverKeys will be available for use.

## Configuration

To change the app settings, right-click the OverKeys icon in the system tray and select **Preferences**. A separate window will open, displaying the available settings.

### Loading Your Own Layout

To load your own keyboard layout, follow these steps:

1. **Access Configuration**:

   - Right-click the OverKeys icon in the system tray
   - Select **Preferences**
   - Go to the **General** tab
   - Click **Open Config** option

2. **Edit Configuration**:

   - Edit the `overkeys_config.json` file that opens in your default text editor
   - Add your custom layouts as needed in the `userLayouts` section. Use the key symbols found in [mappings.dart](lib/models/mappings.dart) and [key_code.dart](lib/utils/key_code.dart) as reference for key names and special characters that OverKeys recognize.
   - Set the `defaultUserLayout` property to specify which layout to use (can be one of your custom layouts or any supported layout)
   - Save the file
     - It is recommended to make a backup copy of `overkeys_config.json`, as testing has shown that it may occasionally revert to the default configuration unexpectedly

3. **Apply Changes**:

   - Restart OverKeys
   - Return to **Preferences** > **General** tab
   - Toggle on **Use custom layout from config**
   - Your custom layout should now be active

### Layer Switching through Kanata TCP

> **Note**: Since OverKeys uses Windows LLHOOK for key detection, this feature is only guaranteed to work with Kanata implementations that also use Windows LLHOOK. Integration has been tested and confirmed working with kanata_gui.exe.

Demos:

<details>
  <summary>With Kanata Debug</summary>
  
<https://github.com/user-attachments/assets/5e7878d8-b51d-447d-946d-6ffeb063701c>
  
</details>

<details>
  <summary>With Kanata Shortcut</summary>
  
<https://github.com/user-attachments/assets/ab50455d-52e4-44b5-a409-c90f1e07c15b>
  
</details>

1. **Access Configuration**:

   - Right-click the OverKeys icon in the system tray
   - Select **Preferences**
   - Go to the **General** tab
   - Click **Open Config** option

2. **Edit Configuration**:

   - Edit the `overkeys_config.json` file that opens in your default text editor
   - Add your kanata layers as needed in the `userLayouts` section. Use the key symbols found in [mappings.dart](lib/models/mappings.dart) and [key_code.dart](lib/utils/key_code.dart) as reference for key names and special characters that OverKeys recognize.
     - You may also add unsupported keys (e.g., COPY, PASTE). They would appear on the keyboard upon layer switching but won't be triggered due to not being supported (yet?)
   - Define the default layer you use in `defaultUserLayout`
   - Define the TCP address you want to use in `kanataHost` and `kanataPort` (defaults are `127.0.0.1` and `4039`)
   - Save the file
     - It is recommended to make a backup copy of `overkeys_config.json`, as testing has shown that it may occasionally revert to the default configuration unexpectedly
   - Restart OverKeys

3. **Kanata Configuration**

   - When running Kanata, (assuming that the `kanata.kbd` is in the same directory as the kanata executable so no more `-c` flag needed) use the `-p` flag with the same address and port:

     ```pwsh
     kanata.exe -p ${kanataHost}:${kanataPort}
     ```

   - Tip: Create a shortcut for `kanata_gui.exe` and place it in the Windows Startup folder (`C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`). This allows Kanata to launch after OverKeys on system boot. Add the parameter `-p 127.0.0.1:4039` (or your custom `kanataHost:kanataPort`) to the shortcut's target field in Properties. When your PC starts, both applications will open automatically and connect.

4. **Apply Changes**:

   - Return to **Preferences** > **General** tab
   - Toggle on **Connect to Kanata**
   - OverKeys should now be connected to Kanata
   - When you switch to any layer other than your `defaultUserLayout`, OverKeys will temporarily disable its auto-hide feature until you return to the default layer

> **Note**: If you've previously enabled "Connect to Kanata" in a session, OverKeys will automatically attempt to connect the next time it opens. It's recommended to open OverKeys first, then launch Kanata, to avoid detecting double key presses (as OverKeys would otherwise detect both the `defsrc` layer key and the injected kanata key press).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Contributing

Contributions are what make the open-source community such an amazing place to learn and collaborate. Any contributions to **OverKeys** are greatly appreciated.

1. Fork the Project.
2. Create your Feature Branch (`git checkout -b feat/amazing-feature`).
3. Commit your Changes (`git commit -m 'feat: add some amazing feature'`).
4. Push to the Branch (`git push origin feat/amazing-feature`).
5. Open a Pull Request.

### Building

1. **Install Flutter**:

   - Follow the official [Flutter installation guide](https://flutter.dev/docs/get-started/install) to set up Flutter on your machine.

2. **Install Git**:

   - Download and install using the installer from the [Git website](https://git-scm.com/downloads/win).
   - Alternatively, if you have `winget` installed, you can use the following command in your terminal:

     ```sh
     winget install --id Git.Git -e --source winget
     ```

3. **Clone the Repository**:

   - Open a terminal and navigate to the folder where you want to clone the repository using the `cd` command. For example:

     ```sh
     cd path/to/your/folder
     ```

   - With Git installed, use the following command in your terminal:

     ```sh
     git clone https://github.com/conventoangelo/OverKeys.git
     ```

4. **Build the Project Locally**:

   - Open a terminal and navigate to the root directory of the project.
   - Run the following command to get the Flutter dependencies:

     ```sh
     flutter pub get
     ```

   - Run the app with the terminal open:

     ```sh
     flutter run -d windows
     ```

   - Alternatively, build the project by running:

     ```sh
     flutter build windows
     ```

   - Once the build is complete, you can find the executable file in `..\OverKeys\build\windows\x64\runner\Release`.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## License

Distributed under the GPL-3.0 License. See `LICENSE` file for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Contact

### Angelo Convento

GitHub: [conventoangelo](https://github.com/conventoangelo)  
Email: <convento.angelo@gmail.com>

Project Link: [https://github.com/conventoangelo/OverKeys](https://github.com/conventoangelo/OverKeys)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Acknowledgments

- [win32](https://win32.pub/) - Access common Win32 APIs directly from Dart using FFI — no C required!
- [leanflutter.dev](https://leanflutter.dev/our-packages/)
  - [window_manager](https://pub.dev/packages/window_manager) - A plugin that allows Flutter desktop apps to resizing and repositioning the window.
  - [tray_manager](https://pub.dev/packages/tray_manager) - A plugin that allows Flutter desktop apps to defines system tray.
  - [launch_at_startup](https://pub.dev/packages/launch_at_startup) - A plugin that allows Flutter desktop apps to Auto launch on startup / login.
- [desktop_multi_window](https://pub.dev/packages/desktop_multi_window) - A flutter plugin that create and manager multi window in desktop.
- [flex_color_picker](https://github.com/rydmike/flex_color_picker) - A highly customizable Flutter color picker.
- [Best-README-Template](https://github.com/othneildrew/Best-README-Template) - An awesome README template to jumpstart your projects!
- Alaine - for creating the beautiful OverKeys logo with love and care.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
