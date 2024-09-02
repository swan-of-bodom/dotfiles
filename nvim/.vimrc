" ──────────────────────────────────────── Basic Settings ─────────────────────────────────────────

syntax on
set ts=2                   " Number of spaces in <Tab>
set shiftwidth=2           " Number of spaces to use for each step of (auto)indent
set softtabstop=2          " Number of spaces a <Tab> counts for
set number                 " Show line numbers
set expandtab              " Use spaces instead of tabs
set termguicolors          " Enable true colors for supported terminals
set noswapfile             " Don't create swap files
set nobackup               " Don't create backups before overwriting a file
set nocompatible           " In case of opening file with -u flag
set cursorline             " Highlight the screen line of the cursor
set hlsearch               " Highlight all search matches
set incsearch              " Do incremental searching
set smartindent            " Automatically insert indentation in some cases
set mouse=a                " Enable mouse usage in all modes
set ttyfast                " Use fast terminal scrolling
set wildmenu               " Shows a menu when tab completing
set wildmode=longest,list  " Sets the behavior for tab completion
set updatetime=750         " reduce updatetime
set cmdheight=1            " Command line height
set foldenable             " Enables folding of code regions
set foldmethod=manual      " Sets the fold method to manual, which means folds are created manually
set signcolumn=number      " Sign column on the numbers
filetype plugin indent on
filetype plugin on

" ──────────────────────────────────────── Auto-Commands ──────────────────────────────────────────

"autocmd FileType solidity call SolcRemappings()

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
" Close NERDTree last window (https://stackoverflow.com/questions/2066590). Edited to also close with quickfix
autocmd bufenter * if (winnr("$") == 1 && (exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1 || &buftype == 'quickfix')) | q | endif

" ──────────────────────────────────────── Key Mappings ───────────────────────────────────────────

" VIM

" Moving lines (https://vim.fandom.com/wiki/Moving_lines_up_or_down)
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
noremap <C-l> :silent :make <cr>

" Open a file from path in vim (https://stackoverflow.com/questions/1843266)
nnoremap gf :vert winc f<cr>

" Copy current file path and absolute path
nnoremap <silent> yf :let @+=expand('%:p')<CR>
nnoremap <silent> yd :let @+=expand('%:p:h')<CR>

" Custom Plugins
nnoremap LL :call ToggleLimelight()<CR>
nmap <C-y> :Neoformat <CR>
nmap <C-n> :TagbarJumpPrev <CR>
nmap <C-b> :TagbarJumpNext <CR>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" ────────────────────────────────────────── Plugins ──────────────────────────────────────────────

call plug#begin()
  Plug 'jparise/vim-graphql'
  Plug 'dense-analysis/ale'
  Plug 'TovarishFin/vim-solidity'
  Plug 'junegunn/vim-easy-align'
  Plug 'ryanoasis/vim-devicons'
  Plug 'sbdchd/neoformat'
  Plug 'preservim/nerdtree'
  Plug 'tiagovla/tokyodark.nvim'
  Plug 'ghifarit53/tokyonight-vim'
  Plug 'rust-lang/rust.vim'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'pangloss/vim-javascript'
  Plug 'mattn/emmet-vim'
  Plug 'glepnir/spaceline.vim'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'junegunn/limelight.vim'
  Plug 'preservim/tagbar'
  "Plug 'ervandew/supertab'
  Plug 'jiangmiao/auto-pairs'
  Plug 'leafgarland/typescript-vim' 
  Plug 'jparise/vim-graphql'        
  Plug 'maxmx03/dracula.nvim'
  Plug 'olimorris/onedarkpro.nvim'
  Plug 'vim-ruby/vim-ruby'
  "Plug 'sheerun/vim-polyglot'
  "Plug 'airblade/vim-rooter'
  Plug 'neovim/nvim-lspconfig'
call plug#end()

" -------------------------------------------------------------------------------------------------
"   Nerdtree 
" -------------------------------------------------------------------------------------------------

let g:NERDTreeWinSize=35
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

" -------------------------------------------------------------------------------------------------
"   Spaceline 
" -------------------------------------------------------------------------------------------------

let g:spaceline_seperate_style = 'arrow'
let g:spaceline_colorscheme = 'one'

" -------------------------------------------------------------------------------------------------
"   Ale 
" -------------------------------------------------------------------------------------------------

highlight link ALEVirtualTextError ErrorMsg
highlight link ALEVirtualTextWarning WarningMsg
highlight ALEWarningSign guifg=LightGoldenrod1

let g:ale_enabled = 1
" For solidity we use forge or solc
let g:ale_linters = {'rust': ['cargo', 'rls'], 'solidity': ['solc']}
let g:ale_linters_ignore = {'html': ['eslint']}

let g:ale_cache_executable_check_failures = v:null
let g:ale_command_wrapper = ''
let g:ale_completion_delay = v:null
let g:ale_echo_cursor = 1
let g:ale_echo_msg_error_str = '■'
let g:ale_echo_msg_format = "[%linter%] %s (%code%)"
let g:ale_echo_msg_info_str = '💡'
let g:ale_echo_msg_warning_str = '■'
let g:ale_lint_on_enter = 1
let g:ale_lint_on_insert_leave = 1
let g:ale_list_window_size = 10
let g:ale_loclist_msg_format = '[%linter%] %s (%code%)'
let g:ale_max_buffer_history_size = 20
let g:ale_max_signs = -1
let g:ale_maximum_file_size = v:null
let g:ale_open_list = 1
let g:ale_pattern_options = v:null
let g:ale_pattern_options_enabled = v:null
let g:ale_set_balloons = 1
let g:ale_set_highlights = 1
let g:ale_set_quickfix = 0
let g:ale_set_loclist = 1
let g:ale_set_signs = 1
let g:ale_sign_column_always = 1
let g:ale_sign_offset = 1000000
let g:ale_sign_error = '■'
let g:ale_sign_info = '💡'
let g:ale_sign_warning = '■'
let g:ale_rust_rls_toolchain = 'stable'
let g:ale_lint_on_text_changed = 1
let g:ale_lint_on_insert_leave = 1
let g:ale_javascript_eslint_executable = 'eslint'
let g:ale_javascript_eslint_use_global = 1
let g:ale_virtualtext_cursor = 1
let g:ale_warn_about_trailing_blank_lines = 1
let g:ale_warn_about_trailing_whitespace = 1
let g:ale_sign_highlight_linenrs = 1

" -------------------------------------------------------------------------------------------------
"   VIM Rooter 
" -------------------------------------------------------------------------------------------------

" Just ended up creating forge.vim, probs ignore this

"let g:rooter_patterns = ['.git/', 'package.json', 'node_modules/']

" Solc Remappings for both js and foundry projects on Ethereum

" function! SolcRemappings()
"     let l:project_root = FindRootDirectory()
"     if !empty(l:project_root)
"         let l:base_path = '--base-path=' . l:project_root
"         let l:include_path_node_modules = ' --include-path=' . l:project_root . '/node_modules'
"         let l:include_path_lib = ' --include-path=' . l:project_root . '/lib'
"         let g:ale_solidity_solc_options = l:base_path . l:include_path_node_modules . l:include_path_lib
"     else
"         let g:ale_solidity_solc_options = ''
"     endif
" endfunction

" -------------------------------------------------------------------------------------------------
"   Neoformat
" -------------------------------------------------------------------------------------------------

let g:neoformat_run_all_formatters = 1
let g:neoformat_enabled_javascript = ['prettier']
let g:neoformat_enabled_ruby = ['rubocop']
let g:neoformat_enabled_html = ['prettier']
let g:neoformat_enabled_eruby = ['htmlbeautifier']
let g:neoformat_enabled_solidity = ['prettier']
let g:neoformat_try_node_exe = 1

" for Debugging
"let g:neoformat_verbose = 1

" -------------------------------------------------------------------------------------------------
"   Tagbar
" -------------------------------------------------------------------------------------------------

let g:tagbar_sort = 0
let g:tagbar_width=35

" -------------------------------------------------------------------------------------------------
"   Emmet
" -------------------------------------------------------------------------------------------------

let g:user_emmet_leader_key='<C-e>'
let g:user_emmet_settings = {
\  'variables': {'lang': 'en'},
\  'js' : {
\    'block_all_childless' : 1,
\    'quote_char': "'",
\  },
\  'html': {
\    'block_all_childless' : 1,
\    'quote_char': "'",
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."\t<head>\n"
\              ."\t\t<meta charset=\"${charset}\">\n"
\              ."\t\t<title></title>\n"
\              ."\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."\t\t<meta name=\"description\" content=\"Description of my website\">\n"
\              ."\n"
\              ."\t\t<meta property=\"og:title\" content=\"\">\n"
\              ."\t\t<meta property=\"og:type\" content=\"\">\n"
\              ."\t\t<meta property=\"og:url\" content=\"\">\n"
\              ."\t\t<meta property=\"og:image\" content=\"\">\n"
\              ."\n"
\              ."\t\t<link rel=\"stylesheet\" href=\"\">\n"
\              ."\t\t<script type=\"text/javascript\" src=\"\" defer></script>\n"
\              ."\t</head>\n"
\              ."\t<body>\n\t${child}|\n\t</body>\n"
\              ."</html>",
\    },
\  },
\}


" -------------------------------------------------------------------------------------------------
"   Devicons
" -------------------------------------------------------------------------------------------------

let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sol'] = ''

" -------------------------------------------------------------------------------------------------
"   Limelight
" -------------------------------------------------------------------------------------------------

let g:limelight_state = 0
function! ToggleLimelight()
    if g:limelight_state == 1
        let g:limelight_state = 0
        :Limelight!
    else
        let g:limelight_state = 1
        :Limelight
    endif
endfunction

" ───────────────────────────────────────── Colorscheme ───────────────────────────────────────────

"colorscheme dracula-soft
colorscheme onedark
"colorscheme tokyodark-vivid

"let g:tokyonight_style = 'storm' " available: night, storm
"let g:tokyonight_enable_italic = 1
"colorscheme tokyonight
"
"hi Normal guibg=NONE ctermbg=NONE

lua << EOF
local lspconfig = require'lspconfig'

-- Setup Solargraph
lspconfig.solargraph.setup{
    settings = {
        solargraph = {
            diagnostics = true
        }
    }
}
EOF
