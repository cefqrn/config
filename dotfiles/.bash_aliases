alias la='ls -A'
alias python='python3'

man() {
  if ! output="$(command man "$@")"; then
    return
  fi

  vim -RM -c 'setf man' - <<END
$output
END
}

