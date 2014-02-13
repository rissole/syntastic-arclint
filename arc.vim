"============================================================================
"File:        arc.vim
"Description: Syntax checking plugin for syntastic.vim
"Maintainer:  Martin Grenfell <martin.grenfell at gmail dot com>
"Maintainer2: rissole
"License:     This program is free software. It comes without any warranty,
"             to the extent permitted by applicable law. You can redistribute
"             it and/or modify it under the terms of the Do What The Fuck You
"             Want To Public License, Version 2, as published by Sam Hocevar.
"             See http://sam.zoy.org/wtfpl/COPYING for more details.
"
"============================================================================
if exists("g:loaded_syntastic_php_arc_checker")
    finish
endif
let g:loaded_syntastic_php_arc_checker=1

function! SyntaxCheckers_php_arc_GetLocList() dict
    let makeprg = self.makeprgBuild({
        \ 'args': 'lint --output compiler --severity warning' })
    let errorformat = '%f:%l:%m'

    let errors = SyntasticMake({
        \ 'makeprg': makeprg,
        \ 'errorformat': errorformat })
    for error in errors
        let error.bufnr = bufnr('')
    endfor
    return errors
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'php',
    \ 'name': 'arc' })
