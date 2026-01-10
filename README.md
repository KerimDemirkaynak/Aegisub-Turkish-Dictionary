# Aegisub Turkish Dictionary Installer

![License](https://img.shields.io/github/license/KerimDemirkaynak/Aegisub-Turkish-Dictionary)
![Build Status](https://img.shields.io/github/actions/workflow/status/KerimDemirkaynak/Aegisub-Turkish-Dictionary/build.yml)

**Turkish Spell Checker installation package for Aegisub Subtitle Editor.**

This repository hosts an automated installer that adds Turkish language support (Hunspell dictionary) to Aegisub. It simplifies the process by automatically detecting the installation directory and placing the required `.aff` and `.dic` files in the correct location.

## ✨ Features

* **Automated Detection:** Automatically finds the Aegisub installation directory (Support for 64-bit systems).
* **Easy Installation:** Modern and user-friendly setup wizard (Inno Setup).
* **Plug & Play:** Installs standard `tr_TR` Hunspell dictionary files.
* **Open Source:** Built automatically using GitHub Actions.

## 📥 Installation

1.  Go to the **[Releases](https://github.com/KerimDemirkaynak/Aegisub-Turkish-Dictionary/releases/latest)** page.
2.  Download the latest installer (`Aegisub-3.4.2-dict-tr_TR.exe`).
3.  Run the installer.
    * *Note: If Windows SmartScreen appears, click "More Info" -> "Run Anyway".*
4.  Open **Aegisub**.
5.  Navigate to **Subtitles** -> **Spell Checker**.
6.  Select **Turkish** from the language list.

## 🛠️ Building from Source

If you want to build the installer yourself:

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
* **Dictionary Files (`tr_TR.aff`, `tr_TR.dic`):** Sourced from LibreOffice/Hunspell projects. These files are subject to their original licenses (LGPL/MPL/GPL)
