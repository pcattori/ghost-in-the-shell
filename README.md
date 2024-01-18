# ghost in the shell

😈 Your friend left their laptop unlocked and now you're feeling like a prankster 😈

**ghost in the shell** is a bash script that takes over the `cd` command.
It will still always perform `cd` as normal, but 1/3 of the time it will also use the `say` text-to-speech command to audibly say "boo".

- MacOS only
- Supports `bash`, `zsh`, and `fish` shells

## Install

```sh
eval $(curl -sSL https://raw.githubusercontent.com/pcattori/ghost-in-the-shell/main/install.sh | sh)
```

## Uninstall

Go to your shell's `rc` file (e.g. `~/.bashrc`) and remove the `cd` alias.
