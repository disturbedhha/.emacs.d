;;; nerd-icons-data-sucicon.el --- glyphset sucicon -*- lexical-binding: t -*-

;; Copyright (C) 2023 Hongyu Ding <rainstormstudio@yahoo.com>

;; Author: Hongyu Ding <rainstormstudio@yahoo.com>
;; Keywords: lisp

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; sucicon
;; from Nerd Font Version: 3.2.1

;;; Code:

(defvar nerd-icons/sucicon-alist
  '(
    ("nf-custom-ada" . "\xe6b5")
    ("nf-custom-asm" . "\xe6ab")
    ("nf-custom-astro" . "\xe6b3")
    ("nf-custom-c" . "\xe61e")
    ("nf-custom-common_lisp" . "\xe6b0")
    ("nf-custom-cpp" . "\xe61d")
    ("nf-custom-crystal" . "\xe62f")
    ("nf-custom-default" . "\xe612")
    ("nf-custom-electron" . "\xe62e")
    ("nf-custom-elixir" . "\xe62d")
    ("nf-custom-elm" . "\xe62c")
    ("nf-custom-emacs" . "\xe632")
    ("nf-custom-fennel" . "\xe6af")
    ("nf-custom-folder" . "\xe5ff")
    ("nf-custom-folder_config" . "\xe5fc")
    ("nf-custom-folder_git" . "\xe5fb")
    ("nf-custom-folder_git_branch" . "\xe5fb")
    ("nf-custom-folder_github" . "\xe5fd")
    ("nf-custom-folder_npm" . "\xe5fa")
    ("nf-custom-folder_oct" . "\xe6ad")
    ("nf-custom-folder_open" . "\xe5fe")
    ("nf-custom-go" . "\xe626")
    ("nf-custom-home" . "\xe617")
    ("nf-custom-kotlin" . "\xe634")
    ("nf-custom-msdos" . "\xe629")
    ("nf-custom-neovim" . "\xe6ae")
    ("nf-custom-orgmode" . "\xe633")
    ("nf-custom-play_arrow" . "\xe602")
    ("nf-custom-prettier" . "\xe6b4")
    ("nf-custom-puppet" . "\xe631")
    ("nf-custom-purescript" . "\xe630")
    ("nf-custom-scheme" . "\xe6b1")
    ("nf-custom-toml" . "\xe6b2")
    ("nf-custom-v_lang" . "\xe6ac")
    ("nf-custom-vim" . "\xe62b")
    ("nf-custom-windows" . "\xe62a")
    ("nf-seti-apple" . "\xe635")
    ("nf-seti-argdown" . "\xe636")
    ("nf-seti-asm" . "\xe637")
    ("nf-seti-audio" . "\xe638")
    ("nf-seti-babel" . "\xe639")
    ("nf-seti-bazel" . "\xe63a")
    ("nf-seti-bicep" . "\xe63b")
    ("nf-seti-bower" . "\xe61a")
    ("nf-seti-bsl" . "\xe63c")
    ("nf-seti-c" . "\xe649")
    ("nf-seti-c_sharp" . "\xe648")
    ("nf-seti-cake" . "\xe63e")
    ("nf-seti-cake_php" . "\xe63d")
    ("nf-seti-checkbox" . "\xe63f")
    ("nf-seti-checkbox_unchecked" . "\xe640")
    ("nf-seti-cjsx" . "\xe61b")
    ("nf-seti-clock" . "\xe641")
    ("nf-seti-clojure" . "\xe642")
    ("nf-seti-code_climate" . "\xe643")
    ("nf-seti-code_search" . "\xe644")
    ("nf-seti-coffee" . "\xe61b")
    ("nf-seti-coldfusion" . "\xe645")
    ("nf-seti-config" . "\xe615")
    ("nf-seti-cpp" . "\xe646")
    ("nf-seti-crystal" . "\xe62f")
    ("nf-seti-crystal_embedded" . "\xe647")
    ("nf-seti-css" . "\xe614")
    ("nf-seti-csv" . "\xe64a")
    ("nf-seti-cu" . "\xe64b")
    ("nf-seti-d" . "\xe651")
    ("nf-seti-dart" . "\xe64c")
    ("nf-seti-db" . "\xe64d")
    ("nf-seti-default" . "\xe64e")
    ("nf-seti-deprecation_cop" . "\xe64f")
    ("nf-seti-docker" . "\xe650")
    ("nf-seti-editorconfig" . "\xe652")
    ("nf-seti-ejs" . "\xe618")
    ("nf-seti-elixir" . "\xe62d")
    ("nf-seti-elixir_script" . "\xe653")
    ("nf-seti-elm" . "\xe62c")
    ("nf-seti-error" . "\xe654")
    ("nf-seti-eslint" . "\xe655")
    ("nf-seti-ethereum" . "\xe656")
    ("nf-seti-f_sharp" . "\xe65a")
    ("nf-seti-favicon" . "\xe623")
    ("nf-seti-firebase" . "\xe657")
    ("nf-seti-firefox" . "\xe658")
    ("nf-seti-folder" . "\xe613")
    ("nf-seti-font" . "\xe659")
    ("nf-seti-git" . "\xe65d")
    ("nf-seti-git_folder" . "\xe65d")
    ("nf-seti-git_ignore" . "\xe65d")
    ("nf-seti-github" . "\xe65b")
    ("nf-seti-gitlab" . "\xe65c")
    ("nf-seti-go" . "\xe627")
    ("nf-seti-go2" . "\xe65e")
    ("nf-seti-godot" . "\xe65f")
    ("nf-seti-gradle" . "\xe660")
    ("nf-seti-grails" . "\xe661")
    ("nf-seti-graphql" . "\xe662")
    ("nf-seti-grunt" . "\xe611")
    ("nf-seti-gulp" . "\xe610")
    ("nf-seti-hacklang" . "\xe663")
    ("nf-seti-haml" . "\xe664")
    ("nf-seti-happenings" . "\xe665")
    ("nf-seti-haskell" . "\xe61f")
    ("nf-seti-haxe" . "\xe666")
    ("nf-seti-heroku" . "\xe607")
    ("nf-seti-hex" . "\xe667")
    ("nf-seti-home" . "\xe617")
    ("nf-seti-html" . "\xe60e")
    ("nf-seti-ignored" . "\xe668")
    ("nf-seti-illustrator" . "\xe669")
    ("nf-seti-image" . "\xe60d")
    ("nf-seti-info" . "\xe66a")
    ("nf-seti-ionic" . "\xe66b")
    ("nf-seti-jade" . "\xe66c")
    ("nf-seti-java" . "\xe66d")
    ("nf-seti-javascript" . "\xe60c")
    ("nf-seti-jenkins" . "\xe66e")
    ("nf-seti-jinja" . "\xe66f")
    ("nf-seti-json" . "\xe60b")
    ("nf-seti-julia" . "\xe624")
    ("nf-seti-karma" . "\xe622")
    ("nf-seti-kotlin" . "\xe634")
    ("nf-seti-less" . "\xe60b")
    ("nf-seti-license" . "\xe60a")
    ("nf-seti-liquid" . "\xe670")
    ("nf-seti-livescript" . "\xe671")
    ("nf-seti-lock" . "\xe672")
    ("nf-seti-lua" . "\xe620")
    ("nf-seti-makefile" . "\xe673")
    ("nf-seti-markdown" . "\xe609")
    ("nf-seti-maven" . "\xe674")
    ("nf-seti-mdo" . "\xe675")
    ("nf-seti-mustache" . "\xe60f")
    ("nf-seti-new_file" . "\xe676")
    ("nf-seti-nim" . "\xe677")
    ("nf-seti-notebook" . "\xe678")
    ("nf-seti-npm" . "\xe616")
    ("nf-seti-npm_ignored" . "\xe616")
    ("nf-seti-nunjucks" . "\xe679")
    ("nf-seti-ocaml" . "\xe67a")
    ("nf-seti-odata" . "\xe67b")
    ("nf-seti-pddl" . "\xe67c")
    ("nf-seti-pdf" . "\xe67d")
    ("nf-seti-perl" . "\xe67e")
    ("nf-seti-photoshop" . "\xe67f")
    ("nf-seti-php" . "\xe608")
    ("nf-seti-pipeline" . "\xe680")
    ("nf-seti-plan" . "\xe681")
    ("nf-seti-platformio" . "\xe682")
    ("nf-seti-play_arrow" . "\xe602")
    ("nf-seti-powershell" . "\xe683")
    ("nf-seti-prisma" . "\xe684")
    ("nf-seti-project" . "\xe601")
    ("nf-seti-prolog" . "\xe685")
    ("nf-seti-pug" . "\xe686")
    ("nf-seti-puppet" . "\xe631")
    ("nf-seti-purescript" . "\xe630")
    ("nf-seti-python" . "\xe606")
    ("nf-seti-r" . "\xe68a")
    ("nf-seti-rails" . "\xe604")
    ("nf-seti-react" . "\xe625")
    ("nf-seti-reasonml" . "\xe687")
    ("nf-seti-rescript" . "\xe688")
    ("nf-seti-rollup" . "\xe689")
    ("nf-seti-ruby" . "\xe605")
    ("nf-seti-rust" . "\xe68b")
    ("nf-seti-salesforce" . "\xe68c")
    ("nf-seti-sass" . "\xe603")
    ("nf-seti-sbt" . "\xe68d")
    ("nf-seti-scala" . "\xe68e")
    ("nf-seti-search" . "\xe68f")
    ("nf-seti-settings" . "\xe690")
    ("nf-seti-shell" . "\xe691")
    ("nf-seti-slim" . "\xe692")
    ("nf-seti-smarty" . "\xe693")
    ("nf-seti-spring" . "\xe694")
    ("nf-seti-stylelint" . "\xe695")
    ("nf-seti-stylus" . "\xe600")
    ("nf-seti-sublime" . "\xe696")
    ("nf-seti-svelte" . "\xe697")
    ("nf-seti-svg" . "\xe698")
    ("nf-seti-swift" . "\xe699")
    ("nf-seti-terraform" . "\xe69a")
    ("nf-seti-tex" . "\xe69b")
    ("nf-seti-text" . "\xe64e")
    ("nf-seti-time_cop" . "\xe641")
    ("nf-seti-todo" . "\xe69c")
    ("nf-seti-tsconfig" . "\xe69d")
    ("nf-seti-twig" . "\xe61c")
    ("nf-seti-typescript" . "\xe628")
    ("nf-seti-vala" . "\xe69e")
    ("nf-seti-video" . "\xe69f")
    ("nf-seti-vue" . "\xe6a0")
    ("nf-seti-wasm" . "\xe6a1")
    ("nf-seti-wat" . "\xe6a2")
    ("nf-seti-webpack" . "\xe6a3")
    ("nf-seti-wgt" . "\xe6a4")
    ("nf-seti-word" . "\xe6a5")
    ("nf-seti-xls" . "\xe6a6")
    ("nf-seti-xml" . "\xe619")
    ("nf-seti-yarn" . "\xe6a7")
    ("nf-seti-yml" . "\xe6a8")
    ("nf-seti-zig" . "\xe6a9")
    ("nf-seti-zip" . "\xe6aa")
    ))

(provide 'nerd-icons-data-sucicon)
;;; nerd-icons-data-sucicon.el ends here