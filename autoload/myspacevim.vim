func! myspacevim#before() abort
    " 焦点消失的时候自动保存
    au FocusLost * :wa
    au FocusGained,BufEnter * :checktime

    " au FocusGained,BufEnter *.py :RainbowParentheses<CR>
    " augroup rainbow_lisp
      " autocmd!
      " autocmd FileType javascript,cpp,python RainbowParentheses
    " augroup END

    " 当文件被其他编辑器修改时，自动加载
    set autowrite
    set autoread

    " 重新映射 leader 键
    " let g:mapleader = '\'
    " 重新映射 window 键位
    " let g:spacevim_windows_leader = 'c'

    let g:table_mode_corner='|'

    " 调节 window 大小
    " let g:winresizer_start_key = '<space>wa'
    " If you cancel and quit window resize mode by `q` (keycode 113)
    " let g:winresizer_keycode_cancel = 113

    " 让file tree 显示文件图标，需要 terminal 安装 nerd font
    let g:spacevim_enable_vimfiler_filetypeicon = 1
    " 让 filetree 显示 git 的状态
    " let g:spacevim_enable_vimfiler_gitstatus = 1

    " 默认 markdown preview 在切换到其他的 buffer 或者 vim
    " 失去焦点的时候会自动关闭 preview，让
    let g:mkdp_auto_close = 0

    " 书签选中之后自动关闭 quickfix window
    let g:bookmark_auto_close = 1

    " vim-lsp-cxx-highlight 和这个选项存在冲突
    " let g:rainbow_active = 1

    " 让光标自动进入到popup window 中间
    let g:git_messenger_always_into_popup = v:true
    " 设置映射规则，和 spacevim 保持一致
    " call SpaceVim#custom#SPC('nnoremap', ['g', 'm'], 'GitMessenger', 'show commit message in popup window', 1)
    " call SpaceVim#custom#SPC('nnoremap', ['g', 'l'], 'FloatermNew lazygit', 'open lazygit in floaterm', 1)

    " 关闭所有隐藏设置
    let g:tex_conceal = ""

    " call SpaceVim#custom#LangSPCGroupName('python', ['R'], '+Read–Eval–Print-Loop(REPL)')
    " call SpaceVim#custom#LangSPC('python', 'nore',  ['R', 't'], 'REPLToggle', 'REPLToggle', 1)
    " call SpaceVim#custom#LangSPC('python', 'nore',  ['R', 'h'], 'REPLHide', 'REPLHide', 1)
    " call SpaceVim#custom#LangSPC('python', 'nore',  ['R', 'e'], 'REPLSendSession', 'the whole block will be sent to the REPL environment', 1)
    " call SpaceVim#custom#LangSPC('python', 'nore',  ['R', 's'], 'REPLDebugStopAtCurrentLine', 'ipdb will be run and the program will be stopped at that line', 1)
    " call SpaceVim#custom#LangSPC('python', 'nore',  ['R', 'l'], 'REPLPDBN', 'run a single line', 1)
    " call SpaceVim#custom#LangSPC('python', 'nore',  ['R', 'f'], 'REPLPDBS', 'run a single line but will jump into functions', 1)
    " let g:LargeFile = 1

    let g:vim_dict_config = {'html':'html,javascript,css', 'markdown':'text'}

    " let g:spacevim_sidebar_width = 80
endf

func! myspacevim#after() abort
    let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0
    set guicursor=

	" set autochdir
	nnoremap <silent> <leader>dp V:diffput<cr>
	nnoremap <silent> <leader>dg V:diffget<cr>

	nnoremap <silent> <leader>rt :REPLToggle<cr>
	nnoremap <silent> <leader>rh :REPLHide<cr>

    set showbreak=↪\
    set breakindent

    let g:indentLine_setColors = 0
    set splitbelow
    set splitright

    let g:formatdef_latexindent = '"latexindent -"'

    " tab to 4 space
    set expandtab ts=4 sw=4 ai

    " nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
    " nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
    " let g:clang_library_path = '/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
    "
    let s:clang_library_path='/Library/Developer/CommandLineTools/usr/lib'
    if isdirectory(s:clang_library_path)
        let g:clang_library_path=s:clang_library_path
    endif

    set termguicolors
    set guicursor=i:block

    " let g:neoformat_python_black = {
        " \ 'exe': 'black',
        " \ 'stdin': 1,
        " \ 'args': ['-q', '-'],
        " \ }
    " let g:neoformat_enabled_python = ['black']

    let g:Lf_WindowPosition = 'popup'
    let g:Lf_CommandMap = {'<C-K>': ['<Up>', '<C-K>'], '<C-J>': ['<Down>', '<C-J>']}
    let g:Lf_HideHelp = 0
    let g:Lf_AutoResize = 1

    set clipboard=unnamed

    " 定义 pgFormatter 格式化工具
    " let g:formatdef_pgformatter = '"pg_format -u 1"'
    " 将 pgFormatter 设置为 SQL 的默认格式化工具
    " let g:formatters_sql = ['pgformatter']
endf
