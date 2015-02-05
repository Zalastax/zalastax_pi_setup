locale_file=/etc/locale.gen
regex="^.*en_US.UTF-8 UTF-8.*$"
lang="en_US.UTF-8"
locale="en_US.UTF-8 UTF-8"
grep -q "$regex" "$locale_file" && sed "s/$regex/$locale/" -i $locale_file || 
    sed "$ a\$locale" -i "$locale_file"
locale-gen $lang
update-locale LANG=$lang
