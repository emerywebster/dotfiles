# Extensions
# --
# Use `code --list-extensions` to show installed

pkglist=(
bierner.color-info
chaliy.handlebars-preview
dbaeumer.vscode-eslint
eamodio.gitlens
Equinusocio.vsc-community-material-theme
Equinusocio.vsc-material-theme
equinusocio.vsc-material-theme-icons
esbenp.prettier-vscode
fabiospampinato.vscode-diff
felixrieseberg.vsc-ember-cli
foxundermoon.shell-format
glen-84.sass-lint
jaspernorth.vscode-pigments
kumar-harsh.graphql-for-vscode
lifeart.vscode-glimmer-syntax
lihui.vs-color-picker
mikestead.dotenv
naumovs.color-highlight
ritwickdey.create-file-folder
Shan.code-settings-sync
syler.sass-indented
tombonnike.vscode-status-bar-format-toggle
vscode-icons-team.vscode-icons
Zignd.html-css-class-completion
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done