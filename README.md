<div align="center">

# Universal Converter

<img src="screenshot/s1.png" alt="Universal Converter Dark Mode" width="700"/>

### Secure, Fast, and Modern File Converter

[![Version](https://img.shields.io/badge/Version-3.0.0-blue.svg)](https://github.com/itzabhinav20-crypto/universal-converter)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Python](https://img.shields.io/badge/Python-3.12+-yellow.svg)](https://www.python.org/)

**Your files never leave your device. 100% local, 100% private.**

[English](#-features) • [Türkçe](#-özellikler-tr) • [Deutsch](#-funktionen-de) • [中文](#-功能-zh)

</div>

---

## Features

<table>
<tr>
<td width="50%">

### Core Features

* **65+ Format Support** - Image, Video, Audio, Document, Archive
* **100% Local Processing** - No cloud, no upload, complete privacy
* **GPU Accelerated** - Lightning fast conversion with FFmpeg
* **Modern UI** - Apple-inspired design with Light/Dark mode
* **Batch Processing** - Convert multiple files at once
* **Drag & Drop** - Simply drop files to convert

</td>
<td width="50%">

### Multi-Language

* 🇬🇧 English
* 🇹🇷 Türkçe
* 🇩🇪 Deutsch
* 🇨🇳 中文

### Theme Support

Light & Dark mode with automatic theme detection

</td>
</tr>
</table>

<div align="center">
<img src="screenshot/s2.png" alt="Universal Converter Light Mode" width="700"/>
</div>

---

## Supported Formats

| Category     | Input Formats                                        | Output Formats                           |
| ------------ | ---------------------------------------------------- | ---------------------------------------- |
| **Image**    | JPG, PNG, WEBP, HEIC, SVG, ICO, TIFF, BMP, GIF, AVIF | JPG, PNG, WEBP, GIF, BMP, TIFF, ICO, PDF |
| **Video**    | MP4, MKV, AVI, MOV, WEBM, WMV, FLV, M4V, 3GP         | MP4, MKV, AVI, MOV, WEBM, GIF, MP3, WAV  |
| **Audio**    | MP3, WAV, FLAC, M4A, OGG, AAC, AIFF, OPUS            | MP3, WAV, AAC, OGG, FLAC, M4A            |
| **Document** | PDF, DOCX, PPTX                                      | PDF, DOCX, TXT, HTML, MD, PNG, JPG       |
| **Data**     | CSV, XLSX, JSON, XML, HTML, TXT                      | CSV, XLSX, JSON, XML, HTML, TXT          |
| **Archive**  | ZIP, 7Z, TAR, GZ, TGZ, TAR.GZ, TAR.BZ2               | ZIP, 7Z, TAR                             |

---

## Quick Start

### Prerequisites

* **Python 3.12+** - [Download](https://www.python.org/downloads/)
* **FFmpeg** (for Video/Audio) - [Download](https://ffmpeg.org/download.html)

> **Note:** `pdf2docx` is incompatible with `numpy>=2.0`. It's pinned to `numpy<2.0` in requirements.txt.

### Installation

```bash
git clone https://github.com/itzabhinav20-crypto/universal-converter.git
cd universal-converter

pip install -r requirements.txt

python desktop.py
```

Or simply double-click **`Start_Desktop.bat`** on Windows.

---

## Tech Stack

| Component       | Technology                        |
| --------------- | --------------------------------- |
| **Application** | Python                            |
| **UI**          | Desktop GUI                       |
| **Conversion**  | FFmpeg, Pillow, PyMuPDF, pdf2docx |
| **Archive**     | zipfile, py7zr, tarfile           |

---

## Project Structure

```text
universal-converter/
├── app/
│   ├── utils.py
│   └── converters/
│       ├── images.py
│       ├── video.py
│       ├── pdf.py
│       ├── docx_converter.py
│       ├── pptx_converter.py
│       ├── docs.py
│       └── archive.py
├── desktop.py
├── requirements-desktop.txt
├── Start_Desktop.bat
├── SECURITY_HARDENING.md
├── LICENSE
└── README.md
```

---

## Privacy

Universal Converter processes files locally on your computer.

**Your files are not uploaded to a remote conversion server.**

No account is required and no cloud storage is required for conversion.

---

## Security

Archive extraction includes protections against path traversal attacks.

For security reasons, avoid exposing the application directly to the public internet without additional sandboxing and access controls.

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

<div align="center">

## connect

**Discord:** `abhinavw`

</div>
