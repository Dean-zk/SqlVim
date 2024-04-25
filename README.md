## SqLVim v2

SqLVim is a minimalist Vim configuration, crafted to offer the power of modern IDEs while maintaining the lightweight and fast nature of Vim. The primary focus of this configuration is to eliminate lag, particularly when using the `x` command to delete characters in Neovim. This is a major issue in popular configs, most well known LazyNvim.

What is different from v1? v2 made some aggresive changes to the way how the files were structured, more sensible keybinds, more performant code and easier extendability.
The reason why I did this was because I hated how the first version looked/worked. Especially when it came down to adding pluggins. This should be a lot better to work with than before.

## Why SqLVim?

- **Minimalist**: SqLVim provides a stripped-down Vim configuration, allowing users to add only the features they need, minimizing bloat.
- **Speed**: Designed for speed, SqLVim ensures that Vim and Neovim remain responsive even during intensive editing tasks.
- **Customizable**: Feel free to customize SqLVim according to your preferences with lazy. Add plugins, mappings, or configurations as you see fit.
- **Ease of Use**: With SqLVim it just works. It's simple yet effective.
- **Lazy**: Thanks to the lazy package manager, adding your own functionality is easier than ever!

## How to Use/ Requirements 📖

Before using SqLVim you need these packages:
- **NeoVim**: preferably the latest version.
- **Git**: To pull changes.
- **NerdFont**: to display icons.
- **MinGW**: for snippets to load correctly.

## IMPORTANT ⚠
There are issues when it comes to gitsigns. This error only appears on windows and I have not been able to discover the bug.
You will also get a lot of snippets to fail if you don't have mingw installed. At the moment linux just works a lot better due to
needed software and tools for this project being pre-installed. Please contribute your findings with a quick fix.


## 👨‍💻 Installing SqLVim 

- **Step 1**: 
You want to create a backup file for if this config is not what you are looking for.
To backup you files.

**Windows:**
```bash
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak

# optional but recommended
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
```
**Unix:**
```bash
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

- **step 2**: 📡 Clone the repo by using this command in the CLI:

**Windows:**
```bash
git clone https://github.com/SqLait/SqLVim $env:LOCALAPPDATA\nvim
```
**Unix**
```bash
git clone https://github.com/SqLait/SqLVim ~/.config/nvim
```
- **step 3**: There is no step 3. Enjoy your nvim config!

## What is new?
- Added new options for customization.
- new keymaps for vim split naviagtion.
- new keymaps for terminal navigation.
- new keymaps for indenting and dragging text.
- Theme switcher with telescope(telescope themes, catppuccin, rose-pine, nord, gruvbox). Switching themes is not permanent. This will be fixed in later versions.

## Contributing ❤

Contributions are welcome! If you have any ideas for improvements, bug fixes, or new features, feel free to open an issue or submit a pull request.

## License 💽

This code falls under Appache-2.0. Make sure to read the license terms before using the code (or don't).

## Why are you still reading this?
Get out and start coding! The bossman needs his project done!

Thank you for using SqLVim! Happy Vimming!
