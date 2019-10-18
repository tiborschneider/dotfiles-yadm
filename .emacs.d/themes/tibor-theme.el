;;; package --- summary
;;; Commentary:
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

;; *****************************************************************************************
;;
;; Brin :- An Emacs port of the Space Grey ST2 theme
;; renamed tibor
;;
;; *****************************************************************************************

;;; Code:

;(unless (>= emacs-major-version 24)
;  (error "Requires Emacs 24 or later"))

(deftheme tibor "special tibor theme")

  (let ((background     "#383c4a")
	    (ui-color1      "#30333f")
        (ui-color2      "#404552")
        (ui-color3      "#4b5162")
        (ui-fg          "#ffffff")
        (cursor-color   "#ffffff")
        (gray1          "#22242c")
        (gray2          "#30333f")
        (gray3          "#404552")
        (gray4          "#4b5162")
        (gray5          "#7c818c")
	    (arc-blue       "#5294e2")
        (gutters        "#343d46")
        (gutter-fg      "#65737e")
        (gutters-active "#4f5b66")
        (builtin        "#d08770")
        (foreground     "#c0c5ce")
        (invisibles     "#a5b3be")
        (lineHighlight  "#343d46")
        (selection      "#4f5b66")
        (text           "#c0c5ce")
        (comments       "#65737e")
        (punctuation    "#c0c5ce")
        (delimiters     "#c0c5ce")
        (operators      "#c0c5ce")
        (keywords       "#b48ead")
        (variables      "#bf616a")
        (functions      "#8fa1b3")
        (methods        "#8fa1b3")
        (strings        "#a3be8c")
        (constants      "#d08770")
        (white          "#ffffff"))

  (custom-theme-set-variables
    'tibor
    '(linum-format " %4i ")
    `(awesome-tab-background-color ,ui-color1))

  (custom-theme-set-faces
   'tibor

;; Default colors
;; *****************************************************************************************

   `(default                          ((t (:foreground ,text :background ,background))))
   `(shadow                           ((t (:foreground ,invisibles                      ))))
   `(region                           ((t (:background ,selection                       ))))
   `(cursor                           ((t (:background ,cursor-color                    ))))
   `(fringe                           ((t (:background ,background   :foreground ,white))))
   `(linum                            ((t (:background ,background :foreground ,gutter-fg))))
   `(mode-line                        ((t (:foreground ,white :background ,gutters-active  ))))
   `(mode-line-inactive               ((t (:foreground ,gutter-fg :background ,gutters  ))))

;; Font lock faces
;; *****************************************************************************************
 
   `(font-lock-keyword-face           ((t (:foreground ,keywords))))
   `(font-lock-type-face              ((t (:foreground ,punctuation))))
   `(font-lock-constant-face          ((t (:foreground ,constants))))
   `(font-lock-variable-name-face     ((t (:foreground ,variables))))
   `(font-lock-builtin-face           ((t (:foreground ,builtin))))
   `(font-lock-string-face            ((t (:foreground ,strings))))
   `(font-lock-comment-face           ((t (:foreground ,comments, :slant italic))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,delimiters))))
   `(font-lock-function-name-face     ((t (:foreground ,functions))))
   `(font-lock-doc-string-face        ((t (:foreground ,strings))))

;; ORG Mode
;; *****************************************************************************************

   `(org-level-1                      ((t (:family "Monofur Nerd Font Mono" :foreground ,strings))))
   `(org-level-2                      ((t (:family "Monofur Nerd Font Mono" :foreground ,keywords))))
   `(org-level-3                      ((t (:family "Monofur Nerd Font Mono" :foreground ,functions))))
   `(org-level-4                      ((t (:family "Monofur Nerd Font Mono" :foreground ,functions))))
   `(org-level-5                      ((t (:family "Monofur Nerd Font Mono" :foreground ,functions))))

;; IDO
;; *****************************************************************************************

   `(ido-first-match                  ((t (:foreground ,methods))))
   `(ido-only-match                   ((t (:foreground ,arc-blue :bold t))))
   `(ido-subdir                       ((t (:foreground ,strings))))

;; Powerline
;; *****************************************************************************************

   `(powerline-active0                ((t (:foreground ,white :background ,arc-blue :bold t))))
   `(powerline-active1                ((t (:foreground ,ui-fg :background ,ui-color2))))
   `(powerline-active2                ((t (:foreground ,ui-fg :background ,ui-color1))))
   `(powerline-inactive0              ((t (:foreground ,ui-fg :background ,ui-color3 :bold t))))
   `(powerline-inactive1              ((t (:foreground ,ui-fg :background ,ui-color2))))
   `(powerline-inactive2              ((t (:foreground ,ui-fg :background ,ui-color1))))
   `(powerline-evil-normal-face       ((t (:foreground ,white :background ,arc-blue :bold t))))
   `(powerline-evil-insert-face       ((t (:foreground ,white :background ,variables :bold t))))
   `(powerline-evil-visual-face       ((t (:foreground ,white :background ,constants :bold t))))
   `(powerline-evil-replace-face      ((t (:foreground ,white :background ,keywords :bold t))))
   `(powerline-evil-emacs-face        ((t (:foreground ,arc-blue :background ,ui-color2 :bold t))))
   `(powerline-evil-motion-face       ((t (:foreground ,gray1 :background ,methods :bold t))))
   `(powerline-evil-operator-face     ((t (:foreground ,gray1 :background ,strings :bold t))))

;; Awesome-Tab
;; *****************************************************************************************

   `(awesome-tab-selected             ((t (:foreground ,white :background ,arc-blue :bold f :height 1.1))))
   `(awesome-tab-unselected           ((t (:foreground ,ui-fg :background ,ui-color2 :bold f :height 1.1))))

;; Company
;; *****************************************************************************************

  `(company-preview                      ((t (:background ,ui-color2 :foreground ,comments))))
  `(company-preview-common               ((t (:inherit company-preview))))
  `(company-preview-search               ((t (:inherit company-preview :foreground ,keywords))))
  `(company-tooltip                      ((t (:inherit default :background ,ui-color2 :foreground ,comments))))
  `(company-tooltip-selection            ((t (:inherit font-lock-function-name-face :background ,ui-color2 :foreground ,ui-fg))))
  `(company-tooltip-common               ((t (:inherit font-lock-constant-face :foreground ,variables))))
  `(company-tooltip-annotation           ((t (:background ,ui-color2 :foreground ,comments))))
  `(company-tooltip-annotation-selection ((t (:background ,ui-color3 :foreground ,ui-fg))))
  `(company-scrollbar-bg                 ((t (:background ,ui-color1))))
  `(company-scrollbar-fg                 ((t (:background ,comments))))

;; LaTeX fonts
;; *****************************************************************************************

   `(variable-pitch                            ((t (:family "Monofur Nerd Font Mono"))))
   `(font-latex-sectioning-5-face              ((t (:family "Mono Fur Nerd Font Mono" :foreground ,strings))))
   `(font-latex-warning-face                   ((t (:family "Mono Fur Nerd Font Mono" :foreground ,variables))))
   `(font-latex-bold-face                      ((t (:family "Mono Fur Nerd Font Mono" :foreground ,keywords :weight bold))))
   `(font-latex-italic-face                    ((t (:family "Mono Fur Italic Nerd Font Mono" :foreground ,strings :slant italic :underline f))))
   `(font-latex-verbatim-face                  ((t (:family "Mono Fur Nerd Font Mono" :foreground ,methods :background ,ui-color1))))
   `(font-latex-math-face                      ((t (:family "Mono Fur Nerd Font Mono" :foreground ,constants))))
   `(font-latex-script-char-face               ((t (:family "Mono Fur Nerd Font Mono" :foreground ,gray5))))
   `(TeX-fold-folded-face                      ((t (:family "Mono Fur Nerd Font Mono" :foreground ,arc-blue :background ,ui-color1))))
   `(preview-face                              ((t (:background ,ui-color2))))
   `(highlight                                 ((t (:background, ui-color3))))
   `(highlight-indentation-face                ((t (:background, "#3a414e"))))

;; *****************************************************************************************

   )
)

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;; *****************************************************************************************


;; Local Variables:
;; no-byte-compile: t
;; End:

(provide-theme 'tibor)
;;; tibor-bright-theme ends here
