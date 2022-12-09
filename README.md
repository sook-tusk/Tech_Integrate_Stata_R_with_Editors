## README

The files allow you to run Stata and R code from `modern(ish)` external editors, such as Sublime Text 3, Notepad++, and Visual Studio Code.

(I linked Atom to Stata as well, but I don't really recommend Atom. The major drawback is it can be often unresponsive, and technical glitches occur too often).

## Why bother?

I often assign one task to one editor, while another editor opened with the tutorial folder. This workflow works well for me. If someone else shares my view and can be benefitted, that'd be great.

Another advantage is that external editors allow more features. I interpret this as **facilitation of creative work**. The aesthetics and rich functionality motivate me.

Finally, I just need some changes from the *default* editor. The freedom to choose an editor depending on my mood and the need greatly enhances coding experience!

After migrating to a new PC, I didn't bother integrating R and Stata with external editors. As time goes, I increasingly felt the need to re-set up. The information was all scattered around, so I collate here all together.

## What do I offer?

## Stata

### Stata + Sublime Text 3

An excellent resource is here, <https://packagecontrol.io/packages/StataEditor>. So, I won't add anything else.

I used to use a light theme dedicated to run Stata code in Sublime Text 3. My customised light-theme is available in the repository.

### Stata + Notepad++

There is a great guide linking Stata to Notepad++ by <https://huebler.blogspot.com/2008/04/stata.html>. It is great. The only thing that bothered me was the focus being left in Stata (cursor is on Stata window). As such, I tweaked his code to bring the focus back to the editor where code was sent from.

### Stata + Visual Studio Code

I essentially recycled the notepad++ integration procedure by configuring my tweaked rundo and rundolines programmes in the VSCode to run Stata code. See the relevant folder and follow the instructions.

## R

Basically, install anaconda for the general ecosystem and use ipython terminal to run R code. Running rmd files need more explanation. To be updated at some point.
