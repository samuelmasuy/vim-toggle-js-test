#Vim Toggle JS Test

Toggle between test and source code for JavaScript.

Test files and source code should live in the same directory.

Test files should be named: *{source}.test.js*

For example:

    app/foo.js
	app/foo.test.js

##Install

* https://github.com/tpope/vim-pathogen

    git clone https://github.com/samuelmasuy/vim-toggle-js-test.git ~/.vim/bundle/vim-toggle-js-test

* https://github.com/junegunn/vim-plug

    Plug 'samuelmasuy/vim-toggle-js-test'

##Commands

`:TestToggle`

Toggle between test and source JavaScript files.

##Mappings

vim-toggle-js-test has a `<Plug>` key which can be used to create a custom mapping

For example:

	au FileType javascipt nmap <leader>t <Plug>(test-toggle)
