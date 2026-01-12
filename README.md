# Aegisub Turkish Dictionary Installer

[![License](https://img.shields.io/github/license/KerimDemirkaynak/Aegisub-Turkish-Dictionary)](https://github.com/KerimDemirkaynak/Aegisub-Turkish-Dictionary/blob/main/LICENSE)
[![Build Status](https://img.shields.io/github/actions/workflow/status/KerimDemirkaynak/Aegisub-Turkish-Dictionary/build.yml)](https://github.com/KerimDemirkaynak/Aegisub-Turkish-Dictionary/actions)
[![Platform](https://img.shields.io/badge/platform-Windows%20%7C%20macOS%20%7C%20Linux-blue?style=flat-square)](https://github.com/KerimDemirkaynak/Aegisub-Turkish-Dictionary/releases/latest)

**Turkish Spell Checker installation package for Aegisub Subtitle Editor.**

This repository hosts an automated installer that adds Turkish language support (Hunspell dictionary) to Aegisub. It simplifies the process by automatically detecting the installation directory and placing the required `.aff` and `.dic` files in the correct location.

## ✨ Features

* **Automated Detection:** Automatically finds the Aegisub installation directory.
* **Easy Installation:** Modern and user-friendly setup wizard (Inno Setup) for Windows.
* **Portable Support:** Script-based installation for macOS and Linux users.
* **Open Source:** Built automatically using GitHub Actions.

## 📥 Installation

Go to the **[Releases](https://github.com/KerimDemirkaynak/Aegisub-Turkish-Dictionary/releases/latest)** page and download the file matching your OS:

### For Windows
1.  Download **`Aegisub-3.4.2-dict-tr_TR.exe`**.
2.  Run the installer.
    * *Note: If Windows SmartScreen appears, click "More Info" -> "Run Anyway".*
3.  Open Aegisub, go to **Subtitles** -> **Spell Checker** and select **Turkish**.

### For macOS / Linux
1.  Download **`MAC-LINUX-PORTABLE.zip`**.
2.  Extract the ZIP file.
3.  Run the installer script inside the folder:
    * **macOS:** Right-click `install_mac.command` -> Open.
    * **Linux:** Run `install_linux.sh` (or `sh install_linux.sh` in terminal).

## 🛠️ Building from Source

If you want to build the installer yourself:

**For Windows (.exe):**
1.  Clone this repository.
2.  Install **[Inno Setup 6](https://jrsoftware.org/isdl.php)**.
3.  Open `setup.iss` script with Inno Setup Compiler.
4.  Press **F9** to compile.
5.  The output file will be generated in the `Output` folder.

## 📜 License & Credits

**Project License:**
This project is licensed under the **GNU General Public License v3.0**.

**Credits:**
* **Installer Script:** Copyright © 2025 Kerim Demirkaynak.
* **Dictionary Files (`tr_TR.aff`, `tr_TR.dic`):** Sourced from the [tr-spell project](https://code.google.com/archive/p/tr-spell/downloads) (Google Code Archive). These files are subject to their original licenses (LGPL/MPL/GPL).
