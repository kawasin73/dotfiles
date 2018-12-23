#!/bin/sh

SCRIPT_DIR=$(cd $(dirname $0); pwd)

set -e

ln -sfnv ${SCRIPT_DIR}/../../.vscode/settings.json ${HOME}/Library/Application\ Support/Code/User/settings.json

code --install-extension bierner.markdown-preview-github-styles
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension ecmel.vscode-html-css
code --install-extension esbenp.prettier-vscode
code --install-extension marcostazi.VS-code-vagrantfile
code --install-extension mitaki28.vscode-clang
code --install-extension MS-CEINTL.vscode-language-pack-ja
code --install-extension ms-vscode.cpptools
code --install-extension ms-vscode.Go
code --install-extension mshr-h.veriloghdl
code --install-extension PeterJausovec.vscode-docker
code --install-extension psioniq.psi-header
code --install-extension shardulm94.trailing-spaces
code --install-extension toasty-technologies.octave
code --install-extension yzane.markdown-pdf
code --install-extension yzhang.markdown-all-in-one
