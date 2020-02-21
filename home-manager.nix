{ pkgs }:

{

  programs.vim = {
    enable = true;
    plugins = [ "vim-airline" "vim-fugitive" ];
    extraConfig = ''
      filetype plugin indent on
      set nocompatible
      set modelines=0
      set nocompatible
      
      set modelines=0
      
      set encoding=utf-8
      set scrolloff=3
      set autoindent
      set showmode
      set showcmd
      set hidden
      set wildmenu
      set wildmode=list:longest
      set visualbell
      set cursorline
      set ttyfast
      set ruler
      set backspace=indent,eol,start
      set laststatus=2
      set relativenumber
      set undofile
      
      set ignorecase
      set smartcase
      
      set wrap
      set textwidth=0
      set formatoptions=qrn1
      set colorcolumn=80
      set linebreak
      
      set makeprg=make
      
      set tabstop=2 softtabstop=0 expandtab shiftwidth=2
      
      nnoremap <leader><space> :noh<cr>
      nnoremap <tab> %
      vnoremap <tab> %
      
      noremap <up> <nop>
      noremap <down> <nop>
      noremap <left> <nop>
      noremap <right> <nop>
      noremap j gj
      noremap k gk
      
      syntax on

      "set statusline+=%{FugitiveStatusline()}"
    '';
  };

  programs.git = {
    enable = true;
    userName = "Dylan Tisdall";
    userEmail = "mtisdall@pennmedicine.upenn.edu";
    extraConfig.core.editor = "vim";
    extraConfig.diff.tool = "vimdiff";
    extraConfig.difftool.prompt = "false";
  };

  programs.tmux = {
    enable = true;
  };

  programs.home-manager.enable = true;
}
