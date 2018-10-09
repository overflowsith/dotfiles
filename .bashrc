# if not interactively, don't do anything
[[ $- != *i* ]] && return

if [[ -d ~/.bsh ]]; then
  for rc in ~/.bsh/*.bash; do
    source "$rc"
  done
  unset rc;
fi
