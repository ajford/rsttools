"Only run if autocmd is compiled in
if has("autocmd")

    " PEP 8 says 80, I say 100
    autocmd FileType rst set textwidth=100

    " Over and Under #'s.
    " rST convention for Parts 
    autocmd FileType rst nnoremap <leader>+ yyPVr#yyjpo
    autocmd FileType rst inoremap <leader>+ yyPVr#yyjpo

    " Over and Under *'s.
    " rST convention for Chapters 
    autocmd FileType rst nnoremap <leader>_ yyPVr-yyjpo
    autocmd FileType rst inoremap <leader>_ yyPVr=yyjpo

    " Under ='s.
    " rST convention for Sections
    autocmd FileType rst nnoremap <leader>= yypVr=o
    autocmd FileType rst inoremap <leader>= yypVr=o

    " Under -'s.
    " rST convention for Subsection
    autocmd FileType rst nnoremap <leader>- yypVr-o
    autocmd FileType rst inoremap <leader>- yypVr-o

    " Under ^'s.
    " rST convention for Subsubsection
    autocmd FileType rst nnoremap <leader>0 yypVr^o
    autocmd FileType rst inoremap <leader>0 yypVr^o


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

