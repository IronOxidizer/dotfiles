mkdir -p "$HOME/.cache/xdg_runtime_dir"
export XDG_RUNTIME_DIR="$HOME/.cache/xdg_runtime_dir"

exec dwm
