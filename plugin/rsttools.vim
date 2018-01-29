"Only run if autocmd is compiled in
if has("autocmd")

    " PEP 8 says 80, I say 100
    autocmd FileType rst set textwidth=100

    " Over and Under ='s.
    " rST convention for Document Title
    autocmd FileType rst nnoremap <silent> <leader>= yyPVr=yyjpo
    autocmd FileType rst inoremap <silent> <leader>= yyPVr=yyjpo

    " Over and Under -'s.
    " rST convention for Subtitle 
    autocmd FileType rst nnoremap <silent> <leader>- yyPVr-yyjpo
    autocmd FileType rst inoremap <silent> <leader>- yyPVr-yyjpo

    " Leveraging Riv for section formatting
    autocmd FileType rst nnoremap <silent> <leader><leader>1 :RivTitle1
    autocmd FileType rst inoremap <silent> <leader><leader>1 :RivTitle1

    autocmd FileType rst nnoremap <silent> <leader><leader>2 :RivTitle2
    autocmd FileType rst inoremap <silent> <leader><leader>2 :RivTitle2

    autocmd FileType rst nnoremap <silent> <leader><leader>3 :RivTitle3
    autocmd FileType rst inoremap <silent> <leader><leader>3 :RivTitle3

    autocmd FileType rst nnoremap <silent> <leader><leader>4 :RivTitle4
    autocmd FileType rst inoremap <silent> <leader><leader>4 :RivTitle4

    autocmd FileType rst nnoremap <silent> <leader><leader>5 :RivTitle5
    autocmd FileType rst inoremap <silent> <leader><leader>5 :RivTitle5

    autocmd FileType rst nnoremap <silent> <leader><leader>6 :RivTitle6
    autocmd FileType rst inoremap <silent> <leader><leader>6 :RivTitle6

    " Leverage Riv to list sections:

    autocmd FileType rst nnoremap <silent> <leader><leader>s :RivHelpSection
    autocmd FileType rst inoremap <silent> <leader><leader>s :RivHelpSection


    " Horizontal Rule
    autocmd FileType rst nnoremap <leader><leader>h o20I-o<CR>
    autocmd FileType rst inoremap <leader><leader>h o20I-o<CR>
    autocmd FileType rst nnoremap <leader><leader>H 20I-
    autocmd FileType rst inoremap <leader><leader>H 20I-

    " Insert '* ' at head of line. Useful for bullets.
    autocmd FileType rst nnoremap <leader><leader>8 I* 
    autocmd FileType rst inoremap <leader><leader>8 I* 
    autocmd FileType rst nnoremap <leader><leader>* I* 
    autocmd FileType rst inoremap <leader><leader>* I* 

    " Insert '# ' at head of line. Useful for numbered lists.
    autocmd FileType rst nnoremap <leader><leader># I# 
    autocmd FileType rst inoremap <leader><leader># I# 


    " Wrap current word with '``'. rST inline code markings.
    autocmd FileType rst nnoremap <leader><leader>` bi``ea``
    autocmd FileType rst inoremap <leader><leader>` bi``ea``a

    " Wrap current word with '[]_'. rST citation/link
    autocmd FileType rst nnoremap <leader><leader>l bi[ea]_
    autocmd FileType rst inoremap <leader><leader>l bi[ea]_a

    " Insert '.. image:: ' at head of line. rST image directive.
    autocmd FileType rst nnoremap <leader><leader>i I.. image:: 
    autocmd FileType rst inoremap <leader><leader>i I.. image:: a

    " Insert '.. image:: ' at head of line. rST image directive.
    " Wrap current word with '.. []'. rST citation/link definition
    autocmd FileType rst nnoremap <leader><leader>r I.. [ea]
    autocmd FileType rst inoremap <leader><leader>r I.. [ea]a
end

