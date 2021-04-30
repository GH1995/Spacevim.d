func! myspacevim#before() abort
    " 焦点消失的时候自动保存
    au FocusLost * :wa
    au FocusGained,BufEnter * :checktime

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
    
    " ctrl + ] 查询 cppman
    " 如果想让该快捷键自动查询 man，将Cppman 替换为 Cppman!
    " autocmd FileType c,cpp noremap <C-]> <Esc>:execute "Cppman " . expand("<cword>")<CR>

    " 让光标自动进入到popup window 中间
    let g:git_messenger_always_into_popup = v:true
    " 设置映射规则，和 spacevim 保持一致
    call SpaceVim#custom#SPC('nnoremap', ['g', 'm'], 'GitMessenger', 'show commit message in popup window', 1)
    call SpaceVim#custom#SPC('nnoremap', ['g', 'l'], 'FloatermNew lazygit', 'open lazygit in floaterm', 1)

    " 关闭所有隐藏设置
		let g:tex_conceal = ""

    set mouse=""
endf

func! myspacevim#after() abort
endf
