## Dotfiles management using GNU stow

Usage: stow neovim -t $HOME

## Neovim related errors
If treesitter is echoing errors you could have multiple parsers. Run the command `echo nvim_get_runtime_file('parser',v:true)`. You should only have treesitter as your parser.
