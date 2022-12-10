---
editor_options: 
  markdown: 
    wrap: sentence
---

# Why? How?

I had Stata syntax highlighting colour.
So I matched with that in Sublime Text 3, for seamless workflow.

To achieve that, I tweaked Tomorrow.tmTheme file.
Then renamed the file as **SK_Stata_markdown.tmTheme**.

# Where to save?

In Sublime, go to Preferences -\> Browse packages... and this should bring up the File Explorer window.
You're here: \> C:\Users\username\AppData\Roaming\Sublime Text 3\Packages\

From there, navigate further to `User/Color Highlighter/themes`.
So, the full path will be: \> C:\Users\username\AppData\Roaming\Sublime Text 3\Packages\User\Color Highlighter\themes

Save the **SK_Stata_markdown.tmTheme**.

# What's next?

In Sublime Text 3, go to the menu

## Preferences \> Theme...

Set as Default.sublime-theme (already set as default. Leave as it is)

## Preferences \> Colour Scheme

Start typing SK.
It'll bring the file.
Select **SK_Stata_markdown.tmTheme**

![](./image/Saving_Colour_Scheme.png)

# Troubleshoot

What if the file is not found?
Try different locations.

> C:\Users\username\AppData\Roaming\Sublime Text 3\Packages\Colorsublime - Themes\cache\Colorsublime-Themes-master\themes

or,

> C:\Users\username\AppData\Local\Sublime Text 3\Cache\User\ColorScheme

If the file name changes, Sublime will issue an error next time!
Calmly change the `Colour Scheme` in Sublime and restart Sublime.
The changes should take effect now.

<!-- End  -->
