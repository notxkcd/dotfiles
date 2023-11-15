let mapleader =","
" map <Esc>[B <Down>
" set term=xterm-256color
" if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
" echo "Downloading junegunn/vim-plug to manage plugins..."
" silent !mkdir -p ~/.config/nvim/autoload/
" silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
" " autocmd VimEnter * PlugInstall
" endif

call plug#begin('~/.config/nvim/plugged')
" Compiler
Plug 'ixru/nvim-markdown'
Plug 'smzm/hydrovim'
Plug 'MunifTanjim/nui.nvim'
Plug 'martinsione/darkplus.nvim'
Plug 'sainnhe/sonokai'
Plug 'vv9k/bogster'
Plug 'ojroques/nvim-buildme'
Plug 'luk400/vim-jukit'  " Jupyter Notebook runner
Plug 'Zeioth/compiler.nvim'
Plug 'stevearc/overseer.nvim'
Plug 'krady21/compiler-explorer.nvim'
Plug 'RRethy/vim-illuminate'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'bakpakin/janet.vim'
Plug 'blazkowolf/gruber-darker.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'm4xshen/autoclose.nvim'
" Plug 'stevearc/conform.nvim'
" LSP Support
Plug 'neovim/nvim-lspconfig'
" Autocompletion
Plug 'folke/tokyonight.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}
Plug 'williamboman/mason.nvim'
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
Plug 'dhruvasagar/vim-table-mode'
Plug 'godlygeek/tabular'
Plug 'loctvl842/monokai-pro.nvim'
" Plug 'SirVer/ultisnips'
Plug 'mfussenegger/nvim-dap'
Plug 'vim-pandoc/vim-rmarkdown'
" Formatter
" Plug 'mhartington/formatter.nvim'
" Plug 'stevearc/conform.nvim'

Plug 'mattn/emmet-vim'
Plug 'liuchengxu/vim-which-key'
Plug 'easymotion/vim-easymotion'
" Plug 'unblevable/quick-scope'       " Plug
Plug 'ixru/nvim-markdown'
Plug 'nvim-lua/plenary.nvim'
Plug 'ThePrimeagen/harpoon'
" Plug 'garbas/vim-snipmate'
Plug 'jayli/vim-brainfuck'
Plug 'nvim-telescope/telescope.nvim'
Plug 'fedorenchik/fasm.vim'
Plug 'nvim-tree/nvim-tree.lua'
" Plug 'alexghergh/nvim-tmux-navigation'
" Plug 'alvan/vim-closetag'
Plug 'tjdevries/lua.vim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'brenoprata10/nvim-highlight-colors'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicon'
Plug 'easymotion/vim-easymotion'
Plug 'phaazon/hop.nvim'
Plug 'tpope/vim-fugitive'
Plug 'jesseduffield/lazygit'
Plug 'iberianpig/tig-explorer.vim'
Plug 'justinmk/vim-sneak'
Plug 'luochen1990/rainbow'
Plug 'honza/vim-snippets'
Plug 'dcampos/nvim-snippy'

" Plug 'Yggdroot/indentLine'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'ahmedkhalf/project.nvim'
" Plug 'lewis6991/spellsitter.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'LukasPietzschmann/telescope-tabs'
Plug 'rcarriga/nvim-notify'
" Plug 'vivien/vim-linux-coding-style'
Plug 'junegunn/vim-easy-align'
Plug 'wfxr/minimap.vim'
Plug 'gauteh/vim-cppman'
Plug 'folke/twilight.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'drzel/vim-gui-zoom'
Plug 'Mofiqul/vscode.nvim'
Plug 'sainnhe/gruvbox-material'
Plug 'sheerun/vim-polyglot'
Plug 'ap/vim-css-color'
Plug 'gioele/vim-autoswap'
Plug 'tpope/vim-surround'
Plug 'kovetskiy/sxhkd-vim'
" Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-commentary'
" Plug 'vim-scripts/auto-pairs-gentle'
call plug#end()

	filetype plugin indent on

	if !has('gui_running')
	  set t_Co=256
	endif

" colorscheme Tomorrow-Night

" Pmenu Settings
	highlight Pmenu ctermbg=241 ctermfg=white cterm=bold

" highlight Color
	hi Search cterm=NONE ctermfg=0 ctermbg=222

    let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

" Bullets Defining
	let g:bullets_enabled_file_types = [
	    \ 'markdown',
	    \ 'text',
	    \ 'gitcommit',
	    \ 'scratch',
	    \ 'rmd',
	    \ 'rmarkdown'
	    \]


" Fix indenting visual block
	vmap > >gv
	vmap < <gv

" center the search on the line it's found in.
	nnoremap n nzzzv
	nnoremap N Nzzzv

	" nnoremap <c-c> :ColorizerAttachToBuffer<CR>

" Some basics:
	nnoremap c "_c
	set noruler
	set ic
	set nohlsearch
	set nocompatible
	set wrap
	set mouse=a
	set clipboard+=unnamedplus
	set go=a
	filetype plugin on
	syntax on
	set expandtab
	set encoding=utf-8
	set number relativenumber

" Enable autocompletion
	set wildmode=longest,list,full
	let g:rehash256 = 1
	set t_Co=256
	set laststatus=0
	set noshowcmd

" Xreseources Commentry
	" autocmd FileType  xdefaults setlocal commentstring=!\ %s

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
	red


" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright

	" map <silent><space>e : NvimTreeToggle<CR>
	map <silent><space>e : NvimTreeToggle<CR>
	" map <silent><leader>f :CocCommand explorer --preset floating<cr>

	nnoremap <C-w>h <C-w>s
	" map <C-w>s <C-w>r
	nnoremap <C-q> <C-w>q
	nnoremap <c-w>s <C-w>r

" Enable folding for Python
	set foldenable
	set foldmethod=manual
	set foldlevel=0

	nnoremap S :%s//g<Left><Left>
	vnoremap S :s//g<Left><Left>
	vnoremap L :call Lines() 

" compile document, be it groff/latex/markdown/etc.
hi Green guifg=#00ff00 ctermfg=green

"Compiler Run
	" map <leader>c :make <CR>
  " map <space>c :w! \| !compiler <c-r>%<CR>
  map <silent><space>c :!compiler <c-r>%<CR>
	" map <space><space> :Files $HOME/Kode<CR>

	nnoremap <leader>p :!opout <c-r>%<CR><CR>

  "Clean some trash
	autocmd VimLeave *.tex,*.d,*.cpp,*.ml,*.hs,*.fsx,*.py !mlclear %
	autocmd VimLeave *.tex !texclear %
	autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff

" Run xrdb whenever Xdefaults or Xresources are updated.
	autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
" Update binds when sxhkdrc is updated.
	autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd

	map Y y$
	" nnoremap <silent><S-k> gt
	nnoremap <silent><S-j> gT
	nnoremap <silent><C-j> <C-w>r
	nnoremap <silent><C-k> <C-w>r
  nnoremap <C-l> <C-w>l
  nnoremap <C-h> <C-w>h

" Select all
   map <c-a> ggvG$
   imap <c-a> <ecs>ggvG$

" Insert in a () anywhere on the line (My own Creation)
	map <leader>; /(<CR>ci)

" Replace ex mode with gq
	map Q gq
  set shortmess+=c

nnoremap <silent> <C-b> : call ToggleBar() <CR>


" for command mode
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-Tab> <C-d>

" use alt + hjkl to resize windows
nnoremap <silent> <A-j> :resize -1<CR>
nnoremap <silent> <A-k> :resize +1<CR>
nnoremap <silent> <A-l> :vertical resize -1<CR>
nnoremap <silent> <A-h> :vertical resize +1<CR>

let s:state = 0
function! ToggleDefault()
	if s:state == 0
		" set notermguicolors
		set bg=dark
		colorscheme naysayer88
		let s:state = 1
	else
		" set termguicolors
		set bg=dark
		colorscheme naysayer88
		hi Normal guibg=#042327  
		hi LineNr guibg=#042327  
		highlight CursorLineNr gui=bold guibg=NONE 
    hi SignColumn guibg=none
		let s:state = 0
	endif
endfunction


let s:bar = 0
function! ToggleBar()
	if s:bar == 0
		set laststatus=0
		set noshowmode
		let s:bar = 1
	else
		set laststatus=2
		" set noshowmode
		let s:bar = 0
	endif
endfunction

function Alpha()
	hi normal guibg=None gui=None
  hi linenr guibg=None 
	hi EndOfBuffer guibg=None 
  hi SignColumn guibg=none ctermbg=none
  set fillchars=eob:\  ""
endfunction

nmap <silent> <c-t> : call Alpha() <CR>


" nmap <silent> <C-t> : hi normal guibg=None gui=None \| hi linenr guibg=None \| hi EndOfBuffer guibg=None \|   hi SignColumn guibg=none \| set fillchars=eob:\  ""<CR>

function Lines()
   let i=1 | '<,'>g/^/ s//\=i . " "/ | let i+=1
endfunction

" Current Path
  nnoremap <c-f> :FZF <CR>

	set bg=dark
	set termguicolors
	highlight CursorLineNr gui=bold guibg=NONE
	" hi Normal guibg=NONE ctermbg=None

noremap Q :noautocmd qall!<CR>
au BufRead,BufNewFile *urls set filetype=yacc
nnoremap <silent><c-e> : e $MYVIMRC <CR>

" Tabline Name only
set guitablabel=%t
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
hi LineNr guibg=NONE

let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<C-b>'

" WhiteSpaces Goneee
cabb <silent> ww %s/\n\+\%$//e

" cabb W w
command! -bang -range=% -complete=file -nargs=* W <line1>,<line2>write<bang> <args>
command! -bang Q quit<bang>
cabb Wq wq

" No Swap files
set noswapfile


" nnoremap sv : source $MYVIMRC <bar> :doautocmd BufRead<CR>
nnoremap sv : source $MYVIMRC <CR>
nnoremap si : PlugInstall <CR>
nnoremap su : PlugUpdate <CR>

" Setting Default Colorscheme Keybind
	nnoremap <silent> cd : set notermguicolors <bar> : colorscheme default <bar> : set bg=light <bar> : call Alpha() <bar> : set nocursorline<cr>

" Underline the current line with dashes in insert mode
	" inoremap ,u <Esc>yyp<c-v>$r-A
	inoremap ,u <Esc>yyp<c-v>$r-A

" Get all Checkbox mapping from Markdown
" nnoremap <silent><script><buffer><C-space> :<Plug>Markdown_Checkbox


autocmd FileType haskell setlocal shiftwidth=2 softtabstop=2 expandtab

setlocal shiftwidth=4 softtabstop=4

"Alacritty Problem
" autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"

" par text formatter for gq and gqip
set formatprg=par
set formatprg=par\ -w50

" Clear  Junk Files after compilaiton
nnoremap <silent> <leader>d :!mlclear % <CR>



nmap <silent><c-=> :ZoomIn<CR>
nmap <silent><c--> :ZoomOut<CR>
nmap <silent><A-S-k> :ZoomIn<CR>
nmap <silent><A-S-j> :ZoomOut<CR>

" set guifont=AnonymicePro\ Nerd\ Font\ Mono:h10
" set guifont=Hurmit\ Nerd\ Font\ Mono:h9
" set guifont=Iosevka\ NF:h12
" set guifont=CaskaydiaCove\ Nerd\ Font:h10
set guifont=BlexMono\ Nerd\ Font:h10
" set guifont=Terminess\ Nerd\ Font:h10
" set guifont=iMWritingMono\ Nerd\ Font:h10
" set guifont=GohuFont\ 14\ Nerd\ Font\ Mono:h10




" nmap <silent> <C-o> : call ToggleDefault() \| hi NonText guifg=bg<CR>
nmap <silent> <leader>n : set fillchars=eob:\ <CR>


"Markdown preview 
let g:mkdp_browser = 'chromium'
" let g:nvim_markdown_preview_theme = 'solarized-light'
" nmap <C-p> <plug>(nvim-markdown-preview)

autocmd filetype cpp map <space><space> : vsplit input.txt <bar>write<CR>
autocmd filetype c map <space><space> : vsplit input.txt <bar>write<CR>
autocmd filetype python map <space><space> : vsplit input.txt <bar>write <bar> wincmd h<CR>
autocmd BufNewFile,BufRead *.bf      set    filetype=brainfsck
autocmd BufNewFile,BufRead *.nasm    set    filetype=nasm
autocmd BufNewFile,BufRead *.asm     set    filetype=nasm
autocmd BufNewFile,BufRead *.yasm    set    filetype=nasm
autocmd BufNewFile,BufRead *.fasm    set    filetype=fasm
autocmd BufNewFile,BufRead *.love    set    filetype=lua
autocmd BufNewFile,BufRead *.c3      set    filetype=c3
autocmd BufNewFile,BufRead *.c2      set    filetype=c2
autocmd BufNewFile,BufRead *.s      set    filetype=nasm
" autocmd filetype c nmap <space><space> :!tcc -run % <CR>
" autocmd filetype c colorscheme sourcerer

autocmd filetype *.s set ft=asm

" nmap <C-T> : Telescope telescope-tabs list_tabs<CR>

lua require("nvim-tree").setup()
lua require("twilight").setup()
" lua require('spellsitter').setup()

nmap <space>r : Telescope oldfiles <CR>
nmap <space>b : Telescope buffers <CR>
nmap <space>f : Telescope fd <CR>
nmap <space>t : Telescope colorscheme <CR>
nmap <space>m : Telescope man_pages <CR>
nmap <space>k : Telescope keymaps <CR>
nmap <space>s : Telescope current_buffer_fuzzy_find <CR>
nmap <space>v : Telescope vim_options <CR>

"Statusbar
" source ~/.config/nvim/statusline.vim



" call Alpha()
" set spell

" lua require('nvim-ts-autotag').setup()


" lua << EOF
" require("nvim-autopairs").setup {}
" EOF


nmap <silent><c-p> : e#<CR>
" nmap gs <C-w>f
" nmap gv <C-w>vgf
" nmap gt <C-w>gf
" nnoremap gf <C-W>vgf
nnoremap gf <C-W>gf



" require'hop'.setup()
 let g:rainbow_active = 1 



" lua require('feline').setup()


" lua << END
" require('lualine').setup()
" END

lua << END
require('nvim-highlight-colors').setup {}
END

nnoremap <space><S-M> : MonokaiProSelect<CR>

" lua require("monokai-pro").setup()
" lua << END
" require('editorconfig').properties.foo = function(bufnr, val)
"   vim.b[bufnr].foo = val
" end
" END
  

set path+=/usr/include/c++/12.2

" if executable('gcc')
"   let s:expr = 'gcc -Wp,-v -x c++ - -fsyntax-only 2>&1 | grep "^ " | sed "s/^ //"'
"   let s:lines = systemlist(s:expr)
"   for s:line in s:lines
"     execute 'set path+=' . fnameescape(s:line)
"   endfor
" endif

let g:catppuccin_flavour = "macchiato" " , latte, frappe, macchiato, mocha

lua << EOF
require("catppuccin").setup()
EOF

" colorscheme catppuccin
colorscheme vscode

" lua << EOF
" require'nvim-tmux-navigation'.setup {
"     disable_when_zoomed = true -- defaults to false
" }
" EOF
" nnoremap <silent> <C-h> <Cmd>NvimTmuxNavigateLeft<CR>
" nnoremap <silent> <C-j> <Cmd>NvimTmuxNavigateDown<CR>
" nnoremap <silent> <C-k> <Cmd>NvimTmuxNavigateUp<CR>
" nnoremap <silent> <C-l> <Cmd>NvimTmuxNavigateRight<CR>
" nnoremap <silent> <C-\> <Cmd>NvimTmuxNavigateLastActive<CR>
" nnoremap <silent> <C-Space> <Cmd>NvimTmuxNavigateNext<CR>




lua << EOF
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (or "all")
  ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = { "c", "rust" },
    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF


		set laststatus=0
		set noshowmode

nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)


" nmap <leader>ff <Plug>SnipRun
" nmap <leader>f <Plug>SnipRunOperator
" vmap f <Plug>SnipRun


lua << EOF
local map = vim.keymap.set

map( { 'i', 's' }, '<tab>', function()
    return require('snippy').can_expand_or_advance() and '<plug>(snippy-expand-or-advance)' or '<tab>'
end, { expr = true } )
map( { 'i', 's' }, '<s-tab>', function()
    return require('snippy').can_jump(-1) and '<plug>(snippy-previous)' or '<s-tab>'
end, { expr = true } )
map('x', '<Tab>', '<plug>(snippy-cut-text)')
map( 'n', 'g<Tab>', '<plug>(snippy-cut-text)')

EOF

""Snippets"
"imap <expr> <Tab> snippy#can_expand_or_advance() ? '<Plug>(snippy-expand-or-advance)' : '<Tab>'
"imap <expr> <S-Tab> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<S-Tab>'
"smap <expr> <Tab> snippy#can_jump(1) ? '<Plug>(snippy-next)' : '<Tab>'
"smap <expr> <S-Tab> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<S-Tab>'
"xmap <Tab> <Plug>(snippy-cut-text)




"Markdown"
let g:vim_markdown_math = 1


"Disable Mapping"
imap <Plug> <Plug>Markdown_Jump

set conceallevel=0
colorscheme gruvbox-material

set laststatus=0
" hi normal guibg=None"

nnoremap va ggVG

autocmd Filetype markdown inoremap <C-o>:.!cmd=`schedule.sh`; echo "$cmd"<CR>

" nnoremap <silent> <leader>f :Format<CR>
" nnoremap <silent> <leader>F :FormatWrite<CR>



set conceallevel=0
hi Normal guibg=none
hi NormalFloat guibg=none
hi NormalNC guibg=none


lua <<EOF
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)
EOF

lua << EOF
require('lspconfig').lua_ls.setup({})
EOF

lua << EOF
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp_zero.default_setup,
  },
})
EOF


autocmd Filetype markdown map <C-space> <Plug>Markdown_Checkbox



lua << EOF
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),

    -- Scroll up and down in the completion documentation
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
  })
})
EOF



lua << EOF
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
EOF


lua << EOF
  require("project_nvim").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF


lua << EOF
require("ibl").setup()
EOF

" lua << EOF
" require('lualine').setup {
"   options = {
"     theme = 'tokyonight',
"   }
" }
" EOF

colorscheme tokyonight-storm

map <leader>n : Twilight <CR>

lua << EOF
require("compiler").setup{}
require('overseer').setup()
EOF


"treat esc even in term
tnoremap <Esc> <C-\><C-n>

" tnoremap <C-w>h <C-\><C-n><C-w>h
" tnoremap <C-w>j <C-\><C-n><C-w>j
" tnoremap <C-w>k <C-\><C-n><C-w>k
" tnoremap <C-w>l <C-\><C-n><C-w>l



lua require("toggleterm").setup()

" lua << EOF
" -- default configuration
" require('illuminate').configure({
"     -- providers: provider used to get references in the buffer, ordered by priority
"     providers = {
"         'lsp',
"         'treesitter',
"         'regex',
"     },
"     -- delay: delay in milliseconds
"     delay = 100,
"     -- filetype_overrides: filetype specific overrides.
"     -- The keys are strings to represent the filetype while the values are tables that
"     -- supports the same keys passed to .configure except for filetypes_denylist and filetypes_allowlist
"     filetype_overrides = {},
"     -- filetypes_denylist: filetypes to not illuminate, this overrides filetypes_allowlist
"     filetypes_denylist = {
"         'dirbuf',
"         'dirvish',
"         'fugitive',
"     },
"     -- filetypes_allowlist: filetypes to illuminate, this is overridden by filetypes_denylist
"     -- You must set filetypes_denylist = {} to override the defaults to allow filetypes_allowlist to take effect
"     filetypes_allowlist = {},
"     -- modes_denylist: modes to not illuminate, this overrides modes_allowlist
"     -- See `:help mode()` for possible values
"     modes_denylist = {},
"     -- modes_allowlist: modes to illuminate, this is overridden by modes_denylist
"     -- See `:help mode()` for possible values
"     modes_allowlist = {},
"     -- providers_regex_syntax_denylist: syntax to not illuminate, this overrides providers_regex_syntax_allowlist
"     -- Only applies to the 'regex' provider
"     -- Use :echom synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')
"     providers_regex_syntax_denylist = {},
"     -- providers_regex_syntax_allowlist: syntax to illuminate, this is overridden by providers_regex_syntax_denylist
"     -- Only applies to the 'regex' provider
"     -- Use :echom synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')
"     providers_regex_syntax_allowlist = {},
"     -- under_cursor: whether or not to illuminate under the cursor
"     under_cursor = true,
"     -- large_file_cutoff: number of lines at which to use large_file_config
"     -- The `under_cursor` option is disabled when this cutoff is hit
"     large_file_cutoff = nil,
"     -- large_file_config: config to use for large files (based on large_file_cutoff).
"     -- Supports the same keys passed to .configure
"     -- If nil, vim-illuminate will be disabled for large files.
"     large_file_overrides = nil,
"     -- min_count_to_highlight: minimum number of matches required to perform highlighting
"     min_count_to_highlight = 1,
"     -- should_enable: a callback that overrides all other settings to
"     -- enable/disable illumination. This will be called a lot so don't do
"     -- anything expensive in it.
"     should_enable = function(bufnr) return true end,
"     -- case_insensitive_regex: sets regex case sensitivity
"     case_insensitive_regex = false,
" })
" EOF


" set shiftwidth=4


lua << EOF
    require'lspconfig'.ocamllsp.setup{}
EOF

" lua << EOF
"  vim.keymap.set('n', '<Leader>f', ':vim.lsp.buf.format()')
" EOF

" colorscheme monokai-pro-default




lua << EOF
function show_ascii_values_line_by_line()
    local ascii_buffer = {}
    local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
    for _, line in ipairs(lines) do
        local ascii_line = {}
        for char in line:gmatch('.') do
            local char_code = string.byte(char)
            if char_code == 10 then
                table.insert(ascii_line, '\\n')
            else
                table.insert(ascii_line, char_code)
            end
        end
        local ascii_string = table.concat(ascii_line, ' ')
        table.insert(ascii_buffer, line .. ' --> ' .. ascii_string)
    end

    local ascii_content = table.concat(ascii_buffer, '\n')

    local bufnr = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, vim.split(ascii_content, '\n'))

    local win_id = vim.api.nvim_open_win(bufnr, true, {
        relative = 'win',
        width = 40,
        height = vim.o.lines,
        col = vim.o.columns - 40,
        row = 0,
        style = 'minimal'
    })
end
EOF


command! ShowAsciiValuesLineByLine lua  show_ascii_values_line_by_line()

" Automatically save changes when focus is lost
" autocmd FocusLost * :wa

set undofile
set ul=10000
" Use curly braces on their own lines for C and C++


" HARPOON
lua << EOF
require("autoclose").setup()
EOF


" lua << EOF
" require("conform").formatters.c_cpp = {
"   command = "astyle",
" }
" EOF
" nnoremap <leader>f: !astyle %<CR>
autocmd FileType c nnoremap  <leader>f :!astyle --style=allman % <CR><CR>
autocmd FileType cpp nnoremap  <leader>f :!astyle --style=linux % <CR><CR>
" autocmd FileType c,cpp nnoremap  <leader>F :!astyle --style=linux % <CR><CR>

noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

nnoremap <C-CR> : call jukit#send#line()<cr>


lua << EOF
local term = vim.fn.getenv("TERM")

-- if term == "xterm-256color" then
--     vim.cmd('colorscheme gruvbox-material')
-- end

if term == "xterm-kitty" then
    vim.cmd('colorscheme gruber-darker')
end

if term == "xterm-256color" then
    vim.cmd('colorscheme tokyonight-night')
end
EOF


lua << EOF
vim.api.nvim_set_keymap('n', '<Leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
EOF

nnoremap <space>f : LspZeroFormat<CR>
nnoremap <leader>e : !cpeditor % &<CR>


lua << EOF
function ExecuteVimCommands()
    vim.cmd('Lxplore')
    vim.cmd('vertical resize 30')
end

vim.api.nvim_set_keymap('n', '<leader>n', ':lua ExecuteVimCommands()<CR>', { noremap = true, silent = true })
EOF
