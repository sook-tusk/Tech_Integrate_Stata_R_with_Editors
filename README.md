## Integrate Stata and R with Modern External Editors

Stata integration resources are often out of date and scattered. Here, I bring three `modern(ish)` editors for coding. This will help you run Stata code from `modern(ish)` external editors, such as Sublime Text 3, Notepad++, and Visual Studio Code.

(I linked Atom to Stata as well, but I don't really recommend Atom. The major drawback is it can be often unresponsive, and technical glitches occur too often).

*Future work: R integration to be updated. Due to its complexity, only a brief guidance is provided at the moment.*

Download Sublime Text 3 (32 bit) Build 3211 (<https://www.sublimetext.com/3>), Notepad++(<https://notepad-plus-plus.org/downloads/>), and Visual Studio Code (<https://code.visualstudio.com/>). Sublime Text 3 *needs to be 32 bit* due to various compatibility issues in Windows PC. So it is important to remember. For Notepad++ and Visual Studio Code, any latest version should be fine.

Once installed, play with them by yourself. Simple googling with get you started with basic functionality (opening a folder tree in the editor, using command palette) fairly quickly. There are lots of resources online so I will skip this part. When you are familiar with basic functionality, go ahead and follow the instructions here that walk you through integrating these fabulous tools with Stata.

## Why bother?

I often assign one task to one editor, while another editor opened with the tutorial folder. I usually run Stata from Sublime Text, while learning or testing new Stata code in VScode. In both cases, a whole folder or directory is accessible. This workflow works well for me. If someone else shares my view and can be benefitted, that'd be great.

Another advantage is that external editors allow more features. I interpret this as **facilitation of creative work**. The aesthetics and rich functionality motivate me.

Finally, I just need some changes from the *default* editor. The freedom to choose an editor depending on my mood and the need greatly enhances coding experience!

After migrating to a new PC, I didn't bother integrating R and Stata with external editors. As time goes, I increasingly felt the need to re-set up. The information was all scattered around, so I collate here all together.

## What do I offer?

## Stata

### Stata + Notepad++

There is a great guide linking Stata to Notepad++ by <https://huebler.blogspot.com/2008/04/stata.html>. It is great. The only thing that bothered me was the focus being left in Stata (cursor is on Stata window). As such, I tweaked his code to bring the focus back to the editor where code was sent from.

### Stata + Visual Studio Code

I essentially recycled the notepad++ integration procedure by configuring my tweaked rundolines programmes in the VSCode to run Stata code.

### Stata + Sublime Text 3

Sublime Text (<https://www.sublimetext.com/3>) is stunning and incredibly fast. You'll see Sublime Text just launches in a second. It's beautiful. It's a pure joy!

I have to admit that Sublime Text has *some* learning curve. First-time users may find Sublime Text overwhelming due to its technical aspects to learn. I think this is totally worth it. Allow yourself to learn at your own pace and learn a keyboard shortcut one at a time. Once you get the hang of using menu options and their corresponding shortcuts, code-writing becomes very fast. Sublime Text has become an indispensable tool for me over years (especially during Covid!) and I highly recommend using it.

For integration, there is an excellent resource: <https://packagecontrol.io/packages/StataEditor>.

I have a light theme dedicated to run Stata code in Sublime Text 3. My customised light-theme is available in the repository.

# INSTRUCTIONS BEGINE HERE

In terms of complexity and effort for integration, Visual Studio Code may be the easiest. I assume Stata is already installed in your PC.

# Integration 1: Stata + Notepad++

## Step 1: Install Notepad++

Notepad++ is freely available but only in Windows PC. It is not modern but it is robust. Sometimes, I just quickly edit files here, rather than running the code.

## Step 2: Save "rundolines"

Unzip the rundolines.7z folder. (To unzip, you need 7-zip. Download 7-zip free here <https://www.7-zip.org/>). The folder contains rundolines programmes (As Huebler advises, *rundo* programme is not needed) . These were originally developed by Friedrich Huebler and I tweaked so that the focus is back to the editor.

All files will be placed under: `C:/ado/personal/`

To do so, in C drive, create **ado** and **personal** folders. ![](image/Location.png)

Then, put the unzipped files as shown above. Check your Stata version and path. These settings are defined in the *rundolines.ini* file. Open this *ini* file and customise the settings according to your system settings. For example, in `INI` file, I have Stata 14, MP and the version 14.2 as viewed in Notepad++ .

![](image/rundolines_ini.png)

In my experience, *only* these lines need customising to make it work.

I usually create a backup .ini file by renaming it as `rundolines_raw.ini` for future reference, while keeping the current customised version of .ini file.

## Step 3: Set Notepad++ to run Stata code

The next step is set Notepad++ to add Stata in the programming language list and set a shortcut to run the Stata code.

### A. Install "xml" to highlight Stata syntax.

First of all, Notepad++ should recognise the Stata programming language and highlight the syntax with pre-defined colours. I forgot where I downloaded from, but anyway, I have the user-contributed xml file. I created a zip file with other style files. Unzip `userDefineLang_notepad++.7z` and save it here:

> C:\\Users\\username\\AppData\\Roaming\\Notepad++\\

### B. To run the code, we define the shortcuts.

See Friedrich Huebler's blog <https://huebler.blogspot.com/2008/04/stata.html> for this step.

## Step 4: All done. Test it.

Open any `do` file and test running some Stata code.

# Integration 2: Stata + Visual Studio Code

## Step 1: Install VSCode

VSCode (Download here <https://code.visualstudio.com/>) is open source and freely available across platform (Windows, Mac and Linux). It is modern, compared to notepad++, and boasts aesthetically-pleasing interface. When I first tried years ago, I felt VSCode was lagging. However, VSCode is evolving very fast thanks to many contributors and in constant development. This means ongoing support is available from many fellow users and developers. You can open an entire project and open files side by side, and (with more experience) you can learn to display images right in the editor. So, why not reap the benefit by running Stata code here?

## Step 2: Save "rundolines"

If you have done so already, skip this step. If you haven't, see Integration 1: Stata + Notepad++ above.

## Step 3: Set VSCode to run Stata code

### A. Install "Stata Enhanced" to highlight Stata syntax.

First of all, VSCode should recognise the Stata programming language and highlight the syntax with pre-defined colours. In VSCode, the user-contributed extension, *Stata Enhanced*, does this job.

On the left-hand side, you'll see an icon for Extensions. Search for *Stata Enhanced* and click `install`. Done.

### B. To run the code, we need "Code Runner".

*Stata Enhanced* highlights syntax, but running the code is a separate step. For this, we need to install the extension called *Code Runner*. Click on Extension icon and search for *Code Runner* and click `install`.

### C. Change settings for "Code Runner".

As *Code Runner* can run many programming languages, we need to ensure Stata is included in the settings. To do so, we need to open VSCode settings json file. Press F1. This triggers an empty window. This is called Command Palette. The cursor is waiting for a command. Start typing "Open User Settings (JSON)", and press enter. In settings.json file, along with other VSCode settings, include code-runner configuration as below.

          {
            "workbench.colorTheme": "One Dark Pro",
            "code-runner.executorMap": {
                "stata": "C:\\ado\\personal\\rundolines.exe",
                "autoit": "autoit3",
                "javascript": "node",
            },
            "code-runner.executorMapByFileExtension": {
                ".do": "stata",
            },
            "code-runner.executorMapByGlob": {
                "pom.xml": "cd $dir && mvn clean package"
            },
            "code-runner.saveFileBeforeRun": true,
            "code-runner.showExecutionMessage": false,
          }

As I am not planning on using other programming languages, I simplified the configuration as above.

## Step 4: All done. Test it.

Open any `do` file and type `display 2-3` three times in separate lines. Highlight the line of code and press `Ctrl+Alt+A` (No need to highlight if you run a single line of code). Alternatively, you can right click to bring the menu, `Run Code`. You may change the keyboard shortcut as you wish later.

## Known issues

Stata windows opens up fine, but in VSCode, another Output panel pops up. As we cannot disable this, the best way we can get around the problem is to place that Output panel to the bottom of VSCode.

![](image/Output_Panel_Bottom.png)

# Integration 3: Stata + Sublime Text 3

## Step 1: Install Sublime Text 3

Download Sublime Text 3 (32 bit) Build 3211 (<https://www.sublimetext.com/3>). Sublime Text 3 *needs to be 32 bit* due to various compatibility issues in Windows PC. So it is important to remember. It is not completely free but there are ways to get around. There is no fixed time period until purchase so take your time. Supporting the developers is a great idea, too. Sublime Text 4 is available but I stick with Sublime Text 3, as other languages are all set here to run as well.

## Step 2: Install "Stata Editor" package in Sublime Text 3

Check the excellent resource: <https://packagecontrol.io/packages/StataEditor> to install "Stata Editor" package in Sublime Text 3.

As we did earlier with rundolines.ini file, we ensure Sublime Text recognises your Stata version and path. In Sublime Text menu, go to `Preferences > Package Settings > Stata Editor > Settings - User` to open the user customisation file. Copy below or edit as necessary.

    {
        "ensure_newline_at_eof_on_save": true,

        "stata_path": "C:/Program Files (x86)/Stata14/StataMP-64.exe",
        "stata_version": 14,

        // "stata_path": "C:/Installed_PG/StataIC-64.exe",
        // "stata_version": 16,

        "file_completions": false,
        "function_completions": true,
        "variable_completions": true,
        "waiting_time": 0.7,
        "character_encoding": "windows-1252",
        "command_completions": true,
        "default_path": "project_path",
        "extensions":
        [
            "do",
            "txt"
        ],
        // "color_scheme": "Packages/User/Color Highlighter/themes/SK_Stata_markdown.tmTheme"
    }

There are quite a lot of lines, but the most important thing is the path and the version of Stata. I jump between Stata versions so I disabled Stata 16 and activated Stata 14. The last line concerns colour scheme. See *Optional* stage for more detail. I disabled it for now.

## Step 3: Register in the Stata Automation type library

The final step involving Stata Automation type library <https://www.stata.com/automation/#createmsapp> can be tricky. In essence, we request permission from Stata to run the code externally. I had a colleague stuck at this stage, so some screenshots are included. Here are the detailed steps:

1.  Go to where Stata.exe file is. It's usually here: `C:\Program Files (x86)\Stata14`. Right-click on the `StataMP-64.exe`, then from the drop-down menu, choose **Create shortcut** (If your computer tells you it'll be created on desktop, click on yes, and move the icon to the Stata.exe directory manually). The newly created icon is called `StataMP-64.exe - Shortcut`.

2.  Right-click on `StataMP-64.exe - Shortcut`, choose **Properties**, and notice the **Target** is set as "C:\\Program Files (x86)\\Stata14\\StataMP-64.exe". We'll add `/Register` at the end as below, and click on OK.

    > "C:\\Program Files (x86)\\Stata14\\StataMP-64.exe" /Register

    ![](image/Stata_Automation_Library.png)

3.  Right-click on the `StataMP-64.exe - Shortcut` again then choose **"Run as administrator"**. This completes registration. Well-done.

## Step 4: All done. Test it.

Open any `do` file and test running some Stata code. You should expect something like this. Here, you can see Stata output, the full folder tree, and the code side by side.

![](image/Stata_Sublime.png)

## Optional: Set Colour Scheme

See the sub-folder of the repository to see the Colour Scheme file and follow the instructions.

![](image/Saving_Colour_Scheme.png)

# Using multiple versions of Stata

You can do so! As I have two versions of Stata, I set Sublime Text 3 to run Stata 14, while Visual Studio Code interacting with Stata 16 (by editing ini file accordingly). The benefit is huge as Stata 14 lacks many options (e.g., current line highlighting, gutter-colour options, etc). Sublime Text will take care of all these.

# Reference

Huebler (2011). Friedrich Huebler's blog <https://huebler.blogspot.com/2008/04/stata.html>

## R

Basically, install anaconda for the general ecosystem and use radian-syntax-supported R terminal to run R code. Running rmd files need more explanation. To be updated at some point.

Thank you for reading. Good luck! End.
