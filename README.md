# bin

Contents of my ~/bin folder

## Usage

On macOS:

* Edit your /etc/paths file, and add `/Users/{username}/bin` at the top.  Note, `~/bin` will not work.
* Close and reopen your terminal.
* You will now be able to call any scripts in the folder.

## Articles and places where I stole code

* [Google Shell Style Guide](https://google.github.io/styleguide/shellguide.html)
* [A decade of dotfiles](https://evanhahn.com/a-decade-of-dotfiles/) - especially the section on preferring scripts over aliases.

## Notes

* If you are having a problem executing a new script, make sure the execute flag is set.
`chmod +x myscript`

## Formatting

Format the files according to the [Google Shell Style Guide](https://google.github.io/styleguide/shellguide.html).

`shfmt --indent 2 --case-indent --write --simplify [^R]*`
