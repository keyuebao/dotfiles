DIRECTORY=$(cd "$(dirname "$0")"; pwd)

echo "Linking $DIRECTORY -> $HOME"

link() {
  # Force create/replace the symlink.
  ln -fs "${DIRECTORY}/${1}" "${HOME}/${2}"
}

link ".aliasesrc" ".aliasesrc"
link ".zshrc" ".zshrc"
