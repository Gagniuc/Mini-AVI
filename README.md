# Mini AVI & Oglinda (2004)

<img align="right" src="https://github.com/Gagniuc/Mini-AVI/blob/main/img/screen%20(II).png" alt="Original Mini AVI interface guide">

**Mini AVI** and **Oglinda** form a two-part Visual Basic 6 project created for the way personal movie collections were used in the early 2000s. Mini AVI is the player. Oglinda is the companion mastering tool that prepares a self-contained movie disc around it. The idea was simple: instead of writing a loose `.avi` file to a CD or DVD and asking the user to locate it manually, each disc could carry its own player, title, icon, subtitle, startup settings and `AUTORUN.INF`. Once the generated structure was written to the optical disc, inserting it into a Windows PC could start Mini AVI automatically and begin playback, optionally in full-screen mode. This is not a DVD-Video authoring program and it does not create an ISO image or burn a disc by itself. Oglinda creates the complete directory tree, the “matriță”, that must then be copied unchanged to the root of a CD-R or DVD-R using separate disc-writing software.

## Historical context

I began this project around 2002, when films obtained or exchanged online were commonly stored as AVI/DivX or MPEG files. Personal collections were often distributed across many CD-Rs and, increasingly, DVD-Rs. A disc usually contained only the movie file, perhaps a subtitle, and no consistent interface. Mini AVI and Oglinda were my attempt to make every disc behave like a small, self-contained software product. The surviving source files and binaries were developed and compiled mainly during 2003. In 2004, the project was included on a <a href="https://github.com/Gagniuc/PC-World">PC World România</a> cover CD, a disc that I also assembled. Thus, Mini AVI CD was distributed nationwide on the cover CD of the November 2004 issue of PC World Romania, whose monthly print run was approximately 20,000 copies at the time. The archive retains several names from development. `Paul-Media` is the internal VB6 project title, **Mini AVI** is the player shown to the user, and **Mini AVI - CD Autostart / Oglinda** is the disc-mastering application.

## Origins of Mini AVI CD

Mini AVI CD began as a personal attempt to build a media player in my own style, at a time when AVI movies were commonly collected on CDs and DVDs. The project soon became more than a player. There was also a practical need to prepare complete movie discs that could be stored, exchanged and launched directly from the optical medium. This led to a package built around two modules: Mini AVI, the movie player, and Oglinda, the companion utility used to prepare the contents of a movie CD. The two programs were designed to work together and were presented as a single system for creating self-contained AVI movie collections. Mini AVI CD was later included on the PC World Romania cover CD issued in November 2004, giving the project national distribution through one of the country’s best known computer magazines of that period.

<p align="center"> <img src="https://github.com/Gagniuc/Mini-AVI/blob/main/img/gpt%20(VI).png" alt="PC World Romania cover CD, November 2004"> </p>

While developing the player, I also experimented with adding software VU meters. At the time, Winamp was, in my view, the most impressive media player ever created, and its animated audio meters were particularly fascinating. They seemed to require a deep understanding of how the sound card worked and how a program could obtain the live audio signal being played. This interest also came from my earlier experience with electronics. During the 1990s, I had built LED-based VU meters, so reproducing the same idea inside a software player felt like a natural continuation of that work. However, I was not able to complete this feature in Mini AVI. Around 2001-2003, the implementation of Winamp-style visualizers still appeared almost mysterious. Detailed technical explanations were difficult to find, and little public information existed about how such players intercepted, measured and transformed the audio stream in real time. For me, the VU meter remained one of the unresolved technical ambitions of the project.


## The two applications

| Component | VB6 project | Compiled name | Purpose |
|---|---|---|---|
| Mini AVI | `Paul-Media.vbp` | `Mini_AVI.exe` | Plays the movie and reads the configuration stored on the disc |
| Oglinda | `CD Autostart/MiniAVI_AutoStart.vbp` | `MiniAVI_AutoStart.exe` | Builds the complete, autorunnable movie-disc directory |

The programs were designed to work in tandem. Oglinda asks for the film title, CD icon, video file, subtitle file, destination directory and preferred startup mode. It then generates a ready-to-burn package containing the movie and everything required to launch it through Mini AVI.

## What Oglinda generates

A completed package has the following structure:

```text
Oglinda/
├── AUTORUN.INF
└── Mini_AVI/
    ├── Mini_AVI.exe
    ├── msvbvm60.dll
    ├── MiniAVI.khz
    ├── <film-title>.ico
    └── FilmAVI/
        ├── <original-video-file>.avi
        └── <video-base-name>.sub
```

The generated root folder is named `Oglinda` by default. To preserve the startup paths, `AUTORUN.INF` and the `Mini_AVI` directory must be placed directly in the root of the optical disc.

<p align="center">
  <img src="https://github.com/Gagniuc/Mini-AVI/blob/main/img/oglinda.gif" alt="Original Mini AVI interface guide">
</p>

Oglinda does not merely copy the selected movie. It also performs the following preparation:

- writes the disc startup instructions in `AUTORUN.INF`;
- writes the player configuration in `MiniAVI.khz`;
- copies the compiled Mini AVI player;
- copies the Visual Basic 6 runtime beside the player;
- renames the selected subtitle so that it matches the movie base name;
- copies the selected icon under the film title;
- displays separate progress indicators for the package stages and the large video-file copy.

The original package uses two deliberately neutral staging names. `Oglinda.alfa` is an exact copy of `MSVBVM60.DLL`, while `Oglinda.beta` is the compiled Mini AVI executable. During generation they become `msvbvm60.dll` and `Mini_AVI.exe`, respectively.

## Autorun and configuration files

Oglinda creates an `AUTORUN.INF` file similar to the following:

```ini
[AUTORUN]
OPEN=Mini_AVI\Mini_AVI.exe
Icon=Mini_AVI\<film-title>.ico
```

The second file, `MiniAVI.khz`, is a small four-line text configuration read by the player's startup form:

```text
\FilmAVI\
movie.avi
Displayed movie title
Marit
```

Its fields are positional rather than named:

| Line | Meaning |
|---:|---|
| 1 | Relative directory containing the movie |
| 2 | Movie filename |
| 3 | Title displayed by Mini AVI |
| 4 | Startup mode: `Marit` for full screen or `Normal` for normal playback |

At startup, `Intro.frm` looks for `MiniAVI.khz` beside the executable. When the file is present, it constructs the movie path relative to `App.Path`, transfers the title and screen mode to the main form, and opens the film automatically. Without this file, Mini AVI starts as a normal standalone player and allows the user to choose a video manually.


## The `MiniAVI.khz` Configuration File

`MiniAVI.khz` is the configuration file that connects the two main components of the project: **Oglinda**, which prepares the movie-disc structure, and **Mini AVI**, which plays the movie. Despite its custom `.khz` extension, it is not an audio file. It is a plain-text control file generated by Oglinda and placed alongside the Mini AVI player in the resulting CD or DVD structure.

### File Structure

The file stores four configuration values:

```text
Movie directory
Movie filename
Displayed movie title
Startup mode
```

These values provide Mini AVI with the information required to locate, identify and start the movie.

### How It Works

When Oglinda prepares a movie collection, it performs the following operations:

1. Copies the AVI movie into the destination structure.
2. Copies the Mini AVI player and its required files.
3. Generates the disc startup structure.
4. Creates the corresponding `MiniAVI.khz` configuration file.

When the generated CD or DVD is launched, Mini AVI:

1. Opens `MiniAVI.khz`.
2. Reads the stored configuration values.
3. Reconstructs the path to the movie.
4. Displays the configured movie title.
5. Applies the selected startup behavior.
6. Opens the movie for playback.

```text
Oglinda
   |
   |-- Copies the AVI movie
   |-- Copies the Mini AVI player
   |-- Creates the disc structure
   `-- Generates MiniAVI.khz
                 |
                 v
          Mini AVI Player
                 |
                 |-- Reads the configuration
                 |-- Locates the movie
                 |-- Displays its title
                 `-- Starts playback
```

### Purpose

The `MiniAVI.khz` file acts as a simple communication contract between Oglinda and Mini AVI. This mechanism allowed the same compiled Mini AVI executable to be reused across many different movie collections. Each CD or DVD required only its own media files and a corresponding `MiniAVI.khz` configuration. The application-specific extension also kept the configuration visually separate from ordinary text, subtitle and multimedia files, while preserving a lightweight format that could be generated and parsed easily in Visual Basic 6.

## Mini AVI player

<img align="right" src="https://github.com/Gagniuc/Mini-AVI/blob/main/img/intro.png" alt="Original Mini AVI interface guide">

Mini AVI is a compact, borderless player with a completely custom bitmap-based interface. The controls, indicators and skins are stored in the accompanying `.frx` resource files rather than being drawn with standard Windows widgets. The interface includes play, pause and stop controls, a seek bar, elapsed and total time, a vertical volume control, mute, percentage-based resizing, full screen, file selection, help and author information. The playback layer is implemented through the Windows Multimedia Control Interface. `Modul-Player.bas` sends textual commands to `winmm.dll` through `mciSendStringA`, using the `MPEGVideo` MCI device for opening and controlling media.

| Function | Implementation in the recovered source |
|---|---|
| Open media | `Open <path> Type MPEGVideo` through MCI |
| Play, pause and stop | MCI `Play`, `Pause` and `Stop` commands |
| Seeking | Position measured in milliseconds, controlled by a custom draggable bar |
| Duration | Queried in both frames and milliseconds |
| Volume | User scale 0-100, converted to the MCI scale 0-1000 |
| Window size | 50% to 300%, in 25% increments |
| Full screen | MCI `Play ... fullscreen` mode |
| Startup sources | File dialog, command-line filename or `MiniAVI.khz` |
| Screen saver | Temporarily disabled while the player is running |

The file-selection filter declares support for:

```text
AVI, ASF, MPG, MPEG and WMV
```

Actual decoding depends on the MCI drivers and codecs installed in Windows. The generator's own video chooser is narrower and accepts AVI, MPG and MPEG files.

## Keyboard controls

Mini AVI registers system hotkeys through `RegisterHotKey` and subclasses its own window to process `WM_HOTKEY` messages. The recovered code defines the following combinations:

| Shortcut | Action |
|---|---|
| `Ctrl` + numeric keypad `+` | Increase playback window size by 25% |
| `Ctrl` + numeric keypad `-` | Decrease playback window size by 25% |
| `Ctrl` + `F7` | Toggle full-screen playback |
| `Ctrl` + `F5` | Toggle play/pause |
| `Ctrl` + `F6` | Return to the beginning and pause |
| `Ctrl` + `Down` | Decrease volume by 10% |
| `Ctrl` + `Up` | Increase volume by 10% |

The original help screen documents the most important full-screen and pause shortcuts, while the source contains the complete set above.

## Subtitle handling

Oglinda accepts `.sub`, `.txt` or `.srt` as the selected subtitle input, but it always copies the result with a `.sub` extension and with the same base name as the movie. Mini AVI automatically looks for this neighboring file. The player contains code for loading the entire subtitle file and parsing lines in a MicroDVD-like form:

```text
{start}{end}Subtitle text|-Second line
```

The parser extracts the two braced values and converts `|-` into a line break. In the recovered source, however, the parsing routine is not connected to the playback timer and no active subtitle-rendering path is visible. The subtitle code should therefore be regarded as an unfinished or experimental subsystem rather than a confirmed complete feature.

## Oglinda workflow

The mastering program validates that a title, icon, movie and subtitle have all been selected. It creates `Mini_AVI` and `Mini_AVI\FilmAVI`, writes the two control files, and then assembles the payload. Large movie files are copied manually in 1,024-byte binary chunks. During the copy, the program repeatedly compares the source size with the destination size and updates a graphical percentage bar. A second bar tracks the six principal package-generation stages. This implementation made the interface remain responsive through `DoEvents` while a CD-sized or DVD-sized movie was being copied. The destination directory must not already exist. If an old `Oglinda` tree is present, the original program stops and asks the user to delete it or choose another location rather than merging with existing files.

## Source structure

```text
Paul-Media/
├── Paul-Media.vbp                 # Mini AVI player project
├── Fereastra-Centrala.frm/.frx    # Main skinned interface and player logic
├── Intro.frm/.frx                 # Startup loader for MiniAVI.khz
├── Modul-Player.bas               # MCI playback engine
├── Interfata-Tastatura.bas        # Global hotkeys and window subclassing
├── Fereastra-Secundara.bas        # Win32 helpers and screen-saver control
├── Deschide.cls                   # Win32 file/folder dialog wrapper
├── Ajutor.frm/.frx                # Player help screen
├── DespreYO.frm/.frx              # About window
├── MiniAVI.khz                    # Surviving example configuration
└── CD Autostart/
    ├── MiniAVI_AutoStart.vbp      # Oglinda project
    ├── MiniAVI_AutoStart.frm/.frx # Generator interface and packaging logic
    ├── mBFF.bas                   # Browse-for-folder implementation
    ├── Oglinda.alfa               # Staged VB6 runtime
    ├── Oglinda.beta               # Staged compiled Mini AVI player
    └── Package/                    # VB6 Package and Deployment Wizard output
```

The `.frm` files contain the form layout and event code. Their corresponding `.frx` files hold the original icons, backgrounds, buttons and help illustrations. `.bas` files contain shared modules, while `Deschide.cls` wraps native Windows common-dialog APIs. Workspace files such as `.vbw`, source-control metadata such as `MSSCCPRJ.SCC`, and the `.PDM` deployment file are historical development artifacts and are not required by the application logic.

## Building the projects

The source targets **Microsoft Visual Basic 6.0** and produces 32-bit Windows executables.

To rebuild the player, open `Paul-Media.vbp` in VB6 and compile it as `Mini_AVI.exe`. The project file lists `COMCTL32.OCX` and `COMDLG32.OCX`; no active controls from those libraries are visible in the recovered forms, but VB6 may still require the references to be installed, re-registered or removed before compilation.

To rebuild Oglinda, place the newly compiled player beside the generator source under the staging name `Oglinda.beta`. The VB6 runtime used by the package is stored as `Oglinda.alfa`. Then open `CD Autostart/MiniAVI_AutoStart.vbp` and compile `MiniAVI_AutoStart.exe`.

The `Package` directory preserves the original Visual Basic Package and Deployment Wizard output. Its setup installs the generator and carries the player payload, the VB6 runtime and the legacy support libraries used by the 2004 build.

## Compatibility and limitations

This repository preserves the software in its original form; it is not a modernized media player. Several behaviors depend on the Windows environment in which it is run:

- MCI playback requires suitable system codecs and drivers for the selected file;
- optical-disc AutoRun behavior depends on the Windows version and its security policy;
- the application and installer are unsigned 32-bit VB6 binaries;
- the generator requires a subtitle file even though the player's subtitle renderer appears incomplete;
- film titles are used directly as icon filenames and are not sanitized for invalid path characters;
- the output is a directory tree, not an ISO image and not a DVD-Video structure.

When automatic launch is unavailable, the generated disc can still be opened manually by running `Mini_AVI\Mini_AVI.exe`.

## Preserved third-party and runtime material

`mBFF.bas` identifies itself as derived from the 2002 “Bobo System Treeview Thievery” work by MrBobo / PSST Software and retains that attribution in its source header. The archive also contains Microsoft Visual Basic 6 runtime and deployment files used by the original installer. These binaries are preserved here as historical project material; their redistribution terms should be considered separately from the author's own source code.

## Publication and archival value

<img align="right" src="https://github.com/Gagniuc/Mini-AVI/blob/main/img/mini%20(I).gif" width="272" height="116" alt="Mini AVI 2.1 player interface">

Mini AVI and Oglinda document a specific period of personal computing: optical media, AVI collections, system codecs, magazine cover CDs, `AUTORUN.INF`, custom-skinned VB6 interfaces and software distributed together with its runtime. The project is preserved not as a replacement for a modern media player, but as a complete example of how a self-starting movie disc was designed and packaged at the beginning of the 2000s.

<hr>

<p align="center">
  <img src="https://github.com/Gagniuc/Mini-AVI/blob/main/img/gpt%20(V).png" alt="Original Mini AVI interface guide">
</p>
