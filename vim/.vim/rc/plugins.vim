"===============================================================================
" Plugins: "{{{1

"-------------------------------------------------------------------------------
" Unite: "{{{2

if dein#tap('unite.vim')
  let g:unite_enable_start_insert = 0
  let g:unite_enable_split_vertically = 0
  let g:unite_source_history_yank_enable = 1
  let g:unite_matcher_fuzzy_max_input_length = 30
  let g:unite_source_find_max_candidates = 200
  let g:unite_data_directory = g:vim_tmp_directory."/unite"

  " unite grep に ag(The Silver Searcher) を使う
  if executable('ag')
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
    let g:unite_source_grep_recursive_opt = ''
  endif

  nnoremap <S-Space> :<C-u>Unite -start-insert source<CR>
  " unite.vim
  nnoremap [unite] <nop>
  nmap <C-c> [unite]
  nnoremap [unite]   :<C-u>Unite<Space>
  nnoremap [unite]uf :<C-u>Unite -start-insert buffer file_rec/async<CR>
  nnoremap [unite]ub :<C-u>Unite bookmark<CR>
  nnoremap [unite]us :<C-u>Unite source<CR>
  nnoremap [unite]ui :<C-u>Unite find<CR>
  nnoremap [unite]un :<C-u>Unite function<CR>
  nnoremap [unite]uy :<C-u>Unite history/yank<CR>
  nnoremap [unite]ug :<C-u>Unite grep<CR>
  nnoremap [unite]uj :<C-u>Unite -start-insert jump<CR>
  nnoremap [unite]uc :<C-u>Unite -start-insert launcher<CR>
  nnoremap [unite]ul :<C-u>Unite -start-insert line<CR>
  nnoremap [unite]uk :<C-u>Unite -start-insert mapping<CR>
  nnoremap [unite]uo :<C-u>Unite output<CR>
  nnoremap [unite]ur :<C-u>Unite -start-insert register<CR>
  nnoremap [unite]up :<C-u>Unite -start-insert -no-split process<CR>
  nnoremap [unite]ut :<C-u>Unite tab<CR>
  nnoremap [unite]uu :<C-u>Unite undo<CR>
  nnoremap [unite]uw :<C-u>Unite window<CR>
  " unite-help
  nnoremap [unite]uh :<C-u>Unite help<CR>
  " unite-snippet
  nnoremap [unite]pt :<C-u>Unite snippet<CR>
  " neobundle.vim
  nnoremap [unite]n  :<C-u>Unite neobundle<CR>
  nnoremap [unite]ni :<C-u>Unite neobundle/install<CR>
  nnoremap [unite]na :<C-u>Unite neobundle/lazy<CR>
  nnoremap [unite]nl :<C-u>Unite neobundle/log<CR>
  nnoremap [unite]ns :<C-u>Unite neobundle/search<CR>
  nnoremap [unite]nu :<C-u>Unite neobundle/update<CR>
  " unite-outline
  if dein#tap('unite-outline')
    nnoremap [unite]o  :<C-u>Unite -vertical -winwidth=36 outline<CR>
  endif
  " unite-rake
  if dein#tap('unite-rake')
    nnoremap [unite]rk :<C-u>Unite rake<CR>
  endif
  " unite-rails
  if dein#tap('unite-rails')
    nnoremap [unite]r  :<C-u>Unite -start-insert source<CR>rails/
    nnoremap [unite]rcf :<C-u>Unite -start-insert rails/config<CR>
    nnoremap [unite]rcn :<C-u>Unite -start-insert rails/controller<CR>
    nnoremap [unite]rdb :<C-u>Unite -start-insert rails/db<CR>
    nnoremap [unite]rh :<C-u>Unite -start-insert rails/helper<CR>
    nnoremap [unite]ri :<C-u>Unite -start-insert rails/initializer<CR>
    nnoremap [unite]rj :<C-u>Unite -start-insert rails/javascript<CR>
    nnoremap [unite]rl :<C-u>Unite -start-insert rails/lib<CR>
    nnoremap [unite]rm :<C-u>Unite -start-insert rails/model<CR>
    nnoremap [unite]rp :<C-u>Unite -start-insert rails/spec<CR>
    nnoremap [unite]rs :<C-u>Unite -start-insert rails/stylesheet<CR>
    nnoremap [unite]rv :<C-u>Unite -start-insert rails/view<CR>
    nnoremap [unite]rde :<C-u>Unite -start-insert rails/decorator<CR>
    nnoremap [unite]rfm :<C-u>Unite -start-insert rails/form<CR>
    nnoremap [unite]rvl :<C-u>Unite -start-insert rails/value<CR>
    nnoremap [unite]rva :<C-u>Unite -start-insert rails/validator<CR>
    nnoremap [unite]rsv :<C-u>Unite -start-insert rails/service<CR>
    nnoremap [unite]rpl :<C-u>Unite -start-insert rails/policy<CR>
    nnoremap [unite]rad :<C-u>Unite -start-insert file:app/admin<CR>
  endif
  " Dictionaries
  nnoremap [unite]dw :<C-u>Unite webcolornane<CR>
  nnoremap [unite]dh :<C-u>Unite httpstatus<CR>
  " unite-giti
  if dein#tap('unite-giti')
    nnoremap [unite]g  :<C-u>Unite giti<CR>
    nnoremap [unite]gb :<C-u>Unite giti/branch_all<CR>
    nnoremap [unite]gl :<C-u>Unite giti/log<CR>
    nnoremap [unite]gr :<C-u>Unite giti/remote<CR>
    nnoremap [unite]gs :<C-u>Unite giti/status<CR>
  endif
  " unite-git-conflict.vim
  if dein#tap('unite-git-conflict.vim')
    nnoremap [unite]gf :<C-u>Unite git-conflict -no-quit<CR>
  endif
  " unite-colorscheme
  if dein#tap('unite-colorscheme')
    command! ColorScheme :Unite -auto-preview colorscheme
  endif
  " unite-tag
  if dein#tap('unite-tag')
    nnoremap [unite]t  :<C-u>Unite tag<CR>
    nnoremap [unite]tf :<C-u>Unite tag/file<CR>
    nnoremap [unite]ti :<C-u>Unite tag/include<CR>
  endif
  " vim-unite-watson.vim
  if dein#tap('vim-unite-watson.vim')
    nnoremap [unite]wa :<C-u>Unite watson<CR>
    nnoremap [unite]wd :<C-u>Unite watson/dirty<CR>
    nnoremap [unite]wp :<C-u>Unite watson/current_file<CR>
    nnoremap [unite]wc :<C-u>Unite watson/clean<CR>
  endif
endif

" }}}2
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" VimShell: "{{{2

if dein#tap('vimshell.vim')
  let g:vimshell_interactive_update_time = 10
  let g:vimshell_temporary_directory = g:vim_tmp_directory."/vimshell"
  let g:vimshell_max_command_history = 10000
  " if my#ismac()
  "   let g:vimshell_editor_command = system('readlink ~/Applications/MacVim.app') . '/Contents/MacOS/MacVim'
  " endif

  let g:vimshell_prompt = '% '
  let g:vimshell_user_prompt = "$USER.'@'.hostname().'('.strftime('%Y/%m/%d %H:%M:%S').')>>'"
  let g:vimshell_secondary_prompt = '> '
  let g:vimshell_right_prompt = "'['.fnamemodify(getcwd(), ':~').']'"

  " augroup MyVimShellGrp
  "   autocmd FileType vimshell call vimshell#hook#add('chpwd', 'my_chpwd', 'g:my_chpwd')
  " augroup END

  " function! g:my_chpwd(args, context)
  "   call vimshell#execute('ls')
  " endfunction

  nnoremap ; :VimShellCurrentDir<CR>
endif

" }}}2
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" VimFiler: "{{{2

if dein#tap('vimfiler.vim')
  let g:vimfiler_as_default_explorer = 1
  let g:vimfiler_safe_mode_by_default = 0
  let g:vimfiler_data_directory = g:vim_tmp_directory . '/vimfiler'
  nnoremap : :VimFilerBufferDir -split -simple -no-quit -winwidth=32<CR>
  nnoremap ,vf :VimFilerDouble<CR>
endif

" }}}2
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" NeoComplete: "{{{2

if dein#tap('neocomplete.vim')
  let g:neocomplete#enable_at_startup = 1
  let g:neocomplete#max_list = 100
  let g:neocomplete#max_keyword_width = 40
  let g:neocomplete#auto_completion_start_length = 2
  let g:neocomplete#manual_completion_start_length = 1
  let g:neocomplete#min_keyword_length = 3
  let g:neocomplete#enable_ignore_case = 1
  let g:neocomplete#enable_smart_case = 1
  let g:neocomplete#sources#syntax#min_keyword_length = 3
  let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
  let g:neocomplete#data_directory = g:vim_tmp_directory."/neocomplete"

  nnoremap <Leader>ne :<C-u>NeoCompleteEnable<CR>
  nnoremap <Leader>nd :<C-u>NeoCompleteDisable<CR>
  nnoremap <Leader>nt :<C-u>NeoCompleteToggle<CR>

  " Define keyword.
  if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
  endif
  let g:neocomplete#keyword_patterns['default'] = '\h\w*'

  " Plugin key-mappings.
  inoremap <expr><C-g>     neocomplete#undo_completion()
  inoremap <expr><C-l>     neocomplete#complete_common_string()

  " Recommended key-mappings.
  " <CR>: close popup and save indent.
  inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
  function! s:my_cr_function()
    return neocomplete#close_popup() . "\<CR>"
    " For no inserting <CR> key.
    "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
  endfunction
  " <TAB>: completion.
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
  " <C-h>, <BS>: close popup and delete backword char.
  inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
  inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
  inoremap <expr><C-y>  neocomplete#close_popup()
  inoremap <expr><C-e>  neocomplete#cancel_popup()
  " Close popup by <Space>.
  "inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

  " For cursor moving in insert mode(Not recommended)
  "inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
  "inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
  "inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
  "inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
  " Or set this.
  "let g:neocomplete#enable_cursor_hold_i = 1
  " Or set this.
  "let g:neocomplete#enable_insert_char_pre = 1

  " AutoComplPop like behavior.
  "let g:neocomplete#enable_auto_select = 1

  " Shell like behavior(not recommended).
  "set completeopt+=longest
  "let g:neocomplete#enable_auto_select = 1
  "let g:neocomplete#disable_auto_complete = 1
  "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

  " Enable omni completion.
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

  " Enable heavy omni completion.
  if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
  endif
  let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
  let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'

  let g:neocomplete#sources#include#paths = {
        \   'cpp' : '.,C:/MinGW/lib/gcc/mingw32/4.8.1/include,C:/MinGW/lib/gcc/mingw32/4.8.1/include/c++,C:/Program\ Files\ (x86)/Microsoft\ DirectX\ SDK\ (June\ 2010)/Include,C:/Program\ Files\ (x86)/Microsoft\ SDKs/Windows/v7.1A/Include',
        \   'c' : '.,C:/MinGW/lib/gcc/mingw32/4.8.1/include,C:/MinGW/lib/gcc/mingw32/4.8.1/include/c++,C:/Program\ Files\ (x86)/Microsoft\ DirectX\ SDK\ (June\ 2010)/Include,C:/Program\ Files\ (x86)/Microsoft\ SDKs/Windows/v7.1A/Include',
        \ }

  let g:neocomplete#sources#include#patterns = {
        \ 'cpp':  '^\s*#\s*include',
        \ 'c':    '^\s*#\s*include',
        \ 'ruby': '^\s*require',
        \ 'perl': '^\s*use',
        \ }
  "インクルード先のファイル名の解析パターン
  let g:neocomplete#sources#include#exprs = {
        \ 'ruby': substitute(v:fname,'::','/','g')
        \ }
endif

" }}}2
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" NeoSnippet: "{{{2

if dein#tap('neosnippet.vim')
  let g:neosnippet#snippets_directory = $MYVIMFILES."/snippets"
  let g:neosnippet#enable_snipmate_compatibility = 1

  imap <C-k>     <Plug>(neosnippet_expand_or_jump)
  smap <C-k>     <Plug>(neosnippet_expand_or_jump)
  xmap <C-k>     <Plug>(neosnippet_expand_target)

  " SuperTab like snippets behavior.
  "imap <expr><C-TAB> neosnippet#expandable() <Bar><bar> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
  "smap <expr><C-TAB> neosnippet#expandable() <Bar><bar> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

  " For snippet_complete marker.
  if has('conceal')
    set conceallevel=2 concealcursor=niv
  endif

  nnoremap <silent><Leader>nse :<C-u>NeoSnippetEdit -split<CR>

  augroup MyAutoCmd
    autocmd BufEnter,BufRead,BufNew app/views/*          NeoSnippetSource ~/.vim/snippets/ruby.rails.view.snip
    autocmd BufEnter,BufRead,BufNew app/controllers/*.rb NeoSnippetSource ~/.vim/snippets/ruby.rails.controller.snip
    autocmd BufEnter,BufRead,BufNew app/models/*.rb      NeoSnippetSource ~/.vim/snippets/ruby.rails.model.snip
    autocmd BufEnter,BufRead,BufNew app/db/migrate/*     NeoSnippetSource ~/.vim/snippets/ruby.rails.migrate.snip
    autocmd BufEnter,BufRead,BufNew app/config/routes.rb NeoSnippetSource ~/.vim/snippets/ruby.rails.route.snip
    autocmd BufEnter,BufRead,BufNew spec/**/*.rb         NeoSnippetSource ~/.vim/snippets/ruby.rails.rspec.snip
    " autocmd BufEnter,BufRead,BufNew spec/**/*.rb    NeoSnippetSource ~/.vim/snippets/ruby.rspec.snip
  augroup END
endif

" }}}2
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" Lightline: "{{{2

if dein#tap('lightline.vim')
  let g:lightline = {
        \ 'colorscheme': 'default',
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ], ['ctrlpmark'] ],
        \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
        \ },
        \ 'component_function': {
        \   'fugitive': 'LightLineFugitive',
        \   'filename': 'LightLineFilename',
        \   'fileformat': 'LightLineFileformat',
        \   'filetype': 'LightLineFiletype',
        \   'fileencoding': 'LightLineFileencoding',
        \   'mode': 'LightLineMode',
        \ },
        \ 'component': {
        \   'readonly': '%{&readonly?"":""}',
        \ },
        \ 'separator': { 'left': '', 'right': '' },
        \ 'subseparator': { 'left': '', 'right': '' }
        \ }

  function! LightLineModified()
    return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
  endfunction

  function! LightLineReadonly()
    return &ft !~? 'help' && &readonly ? 'RO' : ''
  endfunction

  function! LightLineFilename()
    let fname = expand('%:t')
    return fname == 'ControlP' ? g:lightline.ctrlp_item :
          \ fname == '__Tagbar__' ? g:lightline.fname :
          \ fname =~ '__Gundo\|NERD_tree' ? '' :
          \ &ft == 'vimfiler' ? vimfiler#get_status_string() :
          \ &ft == 'unite' ? unite#get_status_string() :
          \ &ft == 'vimshell' ? vimshell#get_status_string() :
          \ ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
          \ ('' != fname ? fname : '[No Name]') .
          \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
  endfunction

  function! LightLineFugitive()
    try
      if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
        let mark = ''  " edit here for cool mark
        let _ = fugitive#head()
        return strlen(_) ? mark._ : ''
      endif
    catch
    endtry
    return ''
  endfunction

  function! LightLineFileformat()
    return winwidth(0) > 70 ? &fileformat : ''
  endfunction

  function! LightLineFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
  endfunction

  function! LightLineFileencoding()
    return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
  endfunction

  function! LightLineMode()
    let fname = expand('%:t')
    return fname == '__Tagbar__' ? 'Tagbar' :
          \ fname == '__Gundo__' ? 'Gundo' :
          \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
          \ &ft == 'unite' ? 'Unite' :
          \ &ft == 'vimfiler' ? 'VimFiler' :
          \ &ft == 'vimshell' ? 'VimShell' :
          \ winwidth(0) > 60 ? lightline#mode() : ''
  endfunction
endif

" }}}2
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" Switch: "{{{2

if dein#tap('switch.vim')
  function! s:separate_defenition_to_each_filetypes(ft_dictionary) "{{{
    let result = {}

    for [filetypes, value] in items(a:ft_dictionary)
      for ft in split(filetypes, ",")
        if !has_key(result, ft)
          let result[ft] = []
        endif

        call extend(result[ft], copy(value))
      endfor
    endfor

    return result
  endfunction "}}}

  nnoremap ! :Switch<CR>
  let s:switch_definition = {
        \ '*': [
        \   ['is', 'are']
        \ ],
        \ 'ruby,eruby,haml,arb' : [
        \   ['if', 'unless'],
        \   ['while', 'until'],
        \   ['.blank?', '.present?'],
        \   ['include', 'extend'],
        \   ['class', 'module'],
        \   ['.inject', '.delete_if'],
        \   ['.map', '.map!'],
        \   ['attr_accessor', 'attr_reader', 'attr_writer'],
        \ ],
        \ 'Gemfile,Berksfile' : [
        \   ['=', '<', '<=', '>', '>=', '~>'],
        \ ],
        \ 'ruby.application_template' : [
        \   ['yes?', 'no?'],
        \   ['lib', 'initializer', 'file', 'vendor', 'rakefile'],
        \   ['controller', 'model', 'view', 'migration', 'scaffold'],
        \ ],
        \ 'erb,html,php' : [
        \   { '<!--\([a-zA-Z0-9 /]\+\)--></\(div\|ul\|li\|a\)>' : '</\2><!--\1-->' },
        \ ],
        \ 'rails' : [
        \   [100, ':continue', ':information'],
        \   [101, ':switching_protocols'],
        \   [102, ':processing'],
        \   [200, ':ok', ':success'],
        \   [201, ':created'],
        \   [202, ':accepted'],
        \   [203, ':non_authoritative_information'],
        \   [204, ':no_content'],
        \   [205, ':reset_content'],
        \   [206, ':partial_content'],
        \   [207, ':multi_status'],
        \   [208, ':already_reported'],
        \   [226, ':im_used'],
        \   [300, ':multiple_choices'],
        \   [301, ':moved_permanently'],
        \   [302, ':found'],
        \   [303, ':see_other'],
        \   [304, ':not_modified'],
        \   [305, ':use_proxy'],
        \   [306, ':reserved'],
        \   [307, ':temporary_redirect'],
        \   [308, ':permanent_redirect'],
        \   [400, ':bad_request'],
        \   [401, ':unauthorized'],
        \   [402, ':payment_required'],
        \   [403, ':forbidden'],
        \   [404, ':not_found'],
        \   [405, ':method_not_allowed'],
        \   [406, ':not_acceptable'],
        \   [407, ':proxy_authentication_required'],
        \   [408, ':request_timeout'],
        \   [409, ':conflict'],
        \   [410, ':gone'],
        \   [411, ':length_required'],
        \   [412, ':precondition_failed'],
        \   [413, ':request_entity_too_large'],
        \   [414, ':request_uri_too_long'],
        \   [415, ':unsupported_media_type'],
        \   [416, ':requested_range_not_satisfiable'],
        \   [417, ':expectation_failed'],
        \   [422, ':unprocessable_entity'],
        \   [423, ':precondition_required'],
        \   [424, ':too_many_requests'],
        \   [426, ':request_header_fields_too_large'],
        \   [500, ':internal_server_error'],
        \   [501, ':not_implemented'],
        \   [502, ':bad_gateway'],
        \   [503, ':service_unavailable'],
        \   [504, ':gateway_timeout'],
        \   [505, ':http_version_not_supported'],
        \   [506, ':variant_also_negotiates'],
        \   [507, ':insufficient_storage'],
        \   [508, ':loop_detected'],
        \   [510, ':not_extended'],
        \   [511, ':network_authentication_required'],
        \ ],
        \ 'rspec': [
        \   ['describe', 'context', 'specific', 'example'],
        \   ['before', 'after'],
        \   ['be_true', 'be_false'],
        \   ['get', 'post', 'put', 'delete'],
        \   ['==', 'eql', 'equal'],
        \   { '\.should_not': '\.should' },
        \   ['\.to_not', '\.to'],
        \   { '\([^. ]\+\)\.should\(_not\|\)': 'expect(\1)\.to\2' },
        \   { 'expect(\([^. ]\+\))\.to\(_not\|\)': '\1.should\2' },
        \ ],
        \ 'markdown' : [
        \   ['[ ]', '[x]']
        \ ],
        \ }

  let s:switch_definition = s:separate_defenition_to_each_filetypes(s:switch_definition)
  function! s:define_switch_mappings() "{{{
    if exists('b:switch_custom_definitions')
      unlet b:switch_custom_definitions
    endif

    let dictionary = []
    for filetype in split(&ft, '\.')
      if has_key(s:switch_definition, filetype)
        let dictionary = extend(dictionary, s:switch_definition[filetype])
      endif
    endfor

    if exists('b:rails_root')
      let dictionary = extend(dictionary, s:switch_definition['rails'])
    endif

    if has_key(s:switch_definition, '*')
      let dictionary = extend(dictionary, s:switch_definition['*'])
    endif

    if !empty('dictionary')
      let gvn = 'b:switch_custom_definitions'
      if !exists(gvn)
        let cmd = 'let ' . gvn . ' = ' . string(dictionary)
        exe cmd
      endif
    endif
  endfunction"}}}

  augroup SwitchSetting
    autocmd!
    autocmd filetype * if !empty(split(&ft, '\.')) | call <SID>define_switch_mappings() | endif
  augroup END
endif

" }}}2
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" AlpacaTags: "{{{2

if dein#tap('alpaca_tags')
  let g:alpaca_update_tags_config = {
        \ '_' : '-R --sort=yes --languages=-js,html,css',
        \ 'ruby': '--languages=+Ruby',
        \ }

  augroup AlpacaTags
    autocmd!
    if exists(':Tags')
      autocmd BufWritePost * TagsUpdate ruby
      autocmd BufWritePost Gemfile TagsBundle
      autocmd BufEnter * TagsSet
    endif
  augroup END

  nnoremap <expr>[unite]tt ':Unite tags -horizontal -buffer-name=tags -input='.expand("<cword>").'<CR>'
endif

" }}}2
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" Vim Ref: "{{{2

if dein#tap('vim-ref')
  let g:ref_open     = 'split'
  let g:ref_refe_cmd = 'refe'

  nnoremap [unite]rr :<C-U>Unite ref/refe -default-action=split -input=

  aug MyAutoCmd
    au FileType ruby,eruby,haml,ruby.rspec,arb nnoremap <silent><buffer>K  :<C-U>Unite -no-start-insert ref/refe -default-action=split -input=<C-R><C-W><CR>
  aug END
endif

" }}}2
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" QuickRun: "{{{2

if dein#tap('vim-quickrun')
  let g:quickrun_config = get(g:, 'quickrun_config', {})
  let g:quickrun_config["dot/plantuml"] = {
        \   "command" : "plantuml",
        \   "exec" : "%c %o %s:p",
        \   "cmdopt"  : "-tutxt",
        \ }
  let g:quickrun_config.cpp = {
        \   'command' : 'clang++',
        \   'cmdopt' : '-std=c++1y -Wall -Wextra',
        \   'hook/quickrunex/enable' : 1,
        \ }
  let g:quickrun_config['cpp/gcc'] = {
        \   'command' : 'g++',
        \   'cmdopt' : '-std=c++11 -Wall -Wextra',
        \ }

  if dein#tap('vim-watchdogs')
    let g:watchdogs_check_BufWritePost_enable = 0
    let g:quickrun_config['ruby/watchdogs_checker']    = { "type" : "watchdogs_checker/rubocop" }
    let g:quickrun_config["cpp/watchdogs_checker"]     = { "type" : "watchdogs_checker/clang++" }
    let g:quickrun_config["watchdogs_checker/g++"]     = { "cmdopt" : "-Wall" }
    let g:quickrun_config["watchdogs_checker/clang++"] = { "cmdopt" : "-Wall" }
  endif
endif

" }}}2
"-------------------------------------------------------------------------------
"
"-------------------------------------------------------------------------------
" VimOver: "{{{2

if dein#tap('vim-over')
  nnoremap <silent> <Leader><Space> :OverCommandLine<CR>
  vnoremap <silent> <Leader><Space> :OverCommandLine<CR>
endif

" }}}2
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" Vim Splash: "{{{2

let g:splash#path = g:vim_tmp_directory . '/vim_info.txt'

if !filereadable(g:splash#path)
  call system('curl -o ' . g:splash#path . ' https://gist.github.com/OrgaChem/7630711/raw/c90299e0aaa0cea8cd05a6ceb2e70074186f8ce5/vim_intro.txt')
endif

" }}}2
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" Previm: "{{{2

let g:previm_open_cmd = 'open -a "Google Chrome"'
" let g:previm_open_cmd = 'open -a Safari'

augroup MyTextileGrp
  autocmd BufEnter,BufRead,BufNew *.textile setlocal filetype=textile
augroup END

" }}}2
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" Syntastic: "{{{2

if dein#tap('syntastic')
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_mode_map = {
        \ 'mode': 'active',
        \ 'passive_filetypes': ['ruby']
        \ }
  let g:syntastic_ruby_checkers = ['rubocop', 'mri']
  let g:syntastic_ruby_rubocop_exec = $HOME . "/.anyenv/envs/rbenv/shims/rubocop"
  let g:syntastic_ruby_mri_exec = $HOME . '.anyenv/env/rbenv/shims/ruby'
endif

" }}}2
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" Rubocop: "{{{2

if dein#tap('vim-rubocop')
  let g:vimrubocop_config = './.rubocop.yml'
endif

" }}}2
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" Gista: "{{{2

let g:gista#github_user = 'raduwen'
let g:gista#directory = g:vim_tmp_directory . '/gista/'
let g:gista#update_on_write = 1

" }}}2
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" Caw: "{{{2

if dein#tap('caw.vim')
  nmap <Leader>c <Plug>(caw:i:toggle)
  vmap <Leader>c <Plug>(caw:i:toggle)
endif

" }}}2
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" Marching: "{{{2

if dein#tap('vim-marching')
  let g:marching_clang_command = 'clang'
  let g:marching#clang_command#options = {
        \ 'cpp' : '-std=c++1y'
        \ }

  if my#ismac()
    let g:marching_include_paths = [
          \ system("echo -n $(brew --prefix gcc)/include/c++/4.9.2"),
          \ system("echo -n $(brew --prefix boost)/include"),
          \ '/usr/include',
          \ system("echo -n $(brew --prefix)/include"),
          \ ]
  elseif s:iswin
    let g:marching_include_paths = [
          \ 'C:/MinGW/lib/gcc/mingw32/4.8.1/include',
          \ 'C:/MinGW/lib/gcc/mingw32/4.8.1/include/c++',
          \ 'C:/Program\ Files\ (x86)/Microsoft\ DirectX\ SDK\ (June\ 2010)/Include',
          \ 'C:/Program\ Files\ (x86)/Microsoft\ SDKs/Windows/v7.1A/Include',
          \ ]
  endif

  augroup CppPath
    autocmd!
    autocmd FileType cpp let &l:path=join(g:marching_include_paths,',')
  augroup END

  let g:marching_enable_neocomplete = 1

  if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
  endif

  let g:neocomplete#force_omni_input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
endif

" }}}2
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" ESKK: "{{{2

if dein#tap('eskk.vim')
  if my#ismac()
    let g:eskk#dictionary = '~/Library/Application\ Support/AquaSKK/skk-jisyo.utf8'
    let g:eskk#large_dictionary = '~/Library/Application\ Support/AquaSKK/SKK-JISYO.L'
  endif

  let g:eskk#debug = 0
  let g:eskk#egg_like_newline = 1
  let g:eskk#revert_henkan_style = 'okuri'
  let g:eskk#enable_completion = 0

  " Use google-ime-server
  let g:eskk#server = {
        \ 'host': 'localhost',
        \ 'port': 55100,
        \ 'type': 'notfound',
        \ }
endif

" }}}2
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" DBExt: "{{{2

if dein#tap('dbext.vim')
  nnoremap <Leader>sb :'<,'>DBExecVisualSQL<CR>
endif

" }}}2
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" Ag: "{{{2

if dein#tap('ag.vim')
  let g:ag_prg="ag --column"
endif

" }}}2
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" Tags: "{{{2

if dein#tap('vim-tags')
  let g:vim_tags_auto_generate = 0
  let g:vim_tags_project_tags_command = "ctags -f tags -R . 2>/dev/null"
  let g:vim_tags_gems_tags_command = "ctags -R -f Gemfile.lock.tags `bundle show --paths` 2>/dev/null"
  set tags+=tags,Gemfile.lock.tags
endif

" }}}2
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" tmp: "{{{2

" }}}2
"-------------------------------------------------------------------------------

" }}}1
"===============================================================================
" vim: foldmethod=marker
