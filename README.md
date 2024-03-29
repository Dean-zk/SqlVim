## ⚠ Note regarding SqLVim v1.2.0:
The new SqLVim update should launch soon, however there is a new component library I'm planning on using for this project. Because of that it will probably take a little longer for future updates.
I will do my best releasing this as soon as possible 🙏

## SqLVim

SqLVim is a minimalist Vim configuration, crafted to offer the power of modern IDEs while maintaining the lightweight and fast nature of Vim. The primary focus of this configuration is to eliminate lag, particularly when using the `x` command to delete characters in Neovim. This is a major issue in popular configs, most well known LazyNvim.

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
- **Unix based system**: Windows works aswell but I recently switched to Arch Linux, so it will be more focussed on UNIX.

## IMPORTANT ⚠
If you don't know whether you should use the Windows or Unix version. GO WITH WINDOWS! Windows has less terminal functionality than Unix.
Because of that you are not required to download toals like TMux if you don't feel like it. When following the download steps. Please make sure to remove the folder you don't need


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

## What to expect the next major push 💾
- **Nui.nvim**: 👀.
- **Transparency**: With the click of a button you have a transparent terminal editor.
- **Custom LuaLine**: A more compact and less bulky lualine.
- **Trouble.nvim**: This will add an error window in neovim to show errors in a better way.
- **Custom errors**: Adding a different way of showing errors.
- **Cleaning up files**: To enhance performance and keep it bare bone I will try to clean up the files.
- **Formatting fix**: I hate the way formatting works right now so I will do my best fixing it in the future.

## Contributing ❤

Contributions are welcome! If you have any ideas for improvements, bug fixes, or new features, feel free to open an issue or submit a pull request.

## License 💽

This code falls under Appache-2.0. Make sure to read the license terms before using the code (or don't).

## Why are you still reading this?
Get out and start coding! The bossman needs his project done!

Thank you for using SqLVim! Happy Vimming!
