DIR=$(dirname "$0")
ppastats stefansundin powermate -o "$DIR"
git -C "$DIR" add .
git -C "$DIR" commit -am "`date +%F`"
git -C "$DIR" push

