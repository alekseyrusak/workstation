g() {
  if [[ -z "$1" ]]; then
    # Show the current user's name and email address in the main working tree.
    printf "%s <%s>\\n" "$(git config user.name)" "$(git config user.email)"

    # Show the working tree status.
    git status --branch --short
  else
    git "$@"
  fi
}

o() {
  if [[ -z "$1" ]]; then
    # Open the current working directory in a new detached program session.
    detach "${BASH_ALIASES[open]:-open}" "${PWD}"
  else
    detach "${BASH_ALIASES[open]:-open}" "$@"
  fi
}

pyformatting() {
  # Format all input files and sort python import definitions within logical sections.
  black --line-length=100 -- "$@" && isort --filter-files --profile=black -- "$@"
}
