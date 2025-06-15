# cSpell:disable
root := justfile_directory()
export TYPST_ROOT := root
set allow-duplicate-recipes := true

# @ ----------------
# @ DEFAULT
# @ ----------------
[private]
default:
  just help

# @ ----------------
# @ LISTING
# @ ----------------

[group('Listing')]
[private]
@show name:
  printf '{{BOLD + CYAN}}  - %s{{NORMAL}}\n' {{name}};

[group('Listing')]
list:
  #!/usr/bin/env sh
  echo '{{BOLD + YELLOW}}list of target:{{NORMAL}}'
  for file in `find {{root}}/publications -iname '*.typ'`; do
    typname=$(echo $(printf '%s' $file) | grep -v "templates")
    if [ -n "${typname}" ]; then
      name=$(echo $(basename $typname) | cut -d'.' -f1)
      just show $name
    fi
  done

# @ ----------------
# @ Building
# @ ----------------

[group('building')]
mk target:
  typst compile --pages 1 ./publications/single/{{target}}.typ ./dist/{{target}}.png

[group('building')]
watch target:
  typst watch --pages 1 ./publications/single/{{target}}.typ ./dist/{{target}}.png

# all: coke exact gru livre partout danse vent crystal luck luck2 

[group('preview')]
view target:
  pix ./dist/{{target}}.png & disown

[group('preview')]
uview:
  killall pix 

[group('cleaning')]
clean:
  rm -rf ./dist/*.png

[group('cleaning')]
clean target:
  rm -rf ./dist/{{target}}.png
