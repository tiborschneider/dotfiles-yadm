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

(deftheme tibor-bright "special bright tibor theme")

  (let ((background     "#f5f5f6")
	(ui-color1      "#e1e2e4")
	(ui-color2      "#d7d8db")
	(ui-color3      "#c3c4c9")
	(ui-fg          "#000000")
	(cursor-color   "#000000")
	(gray1          "#22242c")
	(gray2          "#30333f")
	(gray3          "#404552")
	(gray4          "#4b5162")
	(gray5          "#7c818c")
	(arc-blue       "#5294e2")
        (gutters        "#343d46")
        (gutter-fg      "#75838e")
        (gutters-active "#4f5b66")
        (builtin        "#c07760")
        (foreground     "#c0c5ce")
        (invisibles     "#55636e")
        (lineHighlight  "#343d46")
        (selection      "#e1e2e4")
        (text           "#22242c")
        (comments       "#95a39e")
        (punctuation    "#383c4a")
        (delimiters     "#383c4a")
        (operators      "#383c4a")
        (keywords       "#845482")
        (variables      "#bf616a")
        (functions      "#487193")
        (methods        "#487193")
        (strings        "#538e4c")
        (constants      "#c07760")
        (white          "#ffffff"))

  (custom-theme-set-variables
    'tibor-bright
    '(linum-format " %4i ")
    `(awesome-tab-background-color ,ui-color1))

  (custom-theme-set-faces
   'tibor-bright

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

   `(org-level-1                      ((t (:family "Monofur Nerd Font Mono" :foreground ,strings :height 1.2))))
   `(org-level-2                      ((t (:family "Monofur Nerd Font Mono" :foreground ,keywords :height 1.1))))
   `(org-level-3                      ((t (:family "Monofur Nerd Font Mono" :foreground ,functions))))

;; Powerline
;; *****************************************************************************************

   `(powerline-active0                ((t (:foreground ,white :background ,arc-blue :bold t))))
   `(powerline-active1                ((t (:foreground ,ui-fg :background ,ui-color2))))
   `(powerline-active2                ((t (:foreground ,ui-fg :background ,ui-color1))))
   `(powerline-inactive0              ((t (:foreground ,ui-fg :background ,ui-color3 :bold t))))
   `(powerline-inactive1              ((t (:foreground ,ui-fg :background ,ui-color2))))
   `(powerline-inactive2              ((t (:foreground ,ui-fg :background ,ui-color1))))

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

   `(variable-pitch                   ((t (:family "Monofur Nerd Font Mono"))))
   `(font-latex-sectioning-5-face     ((t (:family "Mono Fur Nerd Font Mono" :foreground ,strings))))
   `(font-latex-warning-face          ((t (:family "Mono Fur Nerd Font Mono" :foreground ,variables))))
   `(font-latex-bold-face             ((t (:family "Mono Fur Nerd Font Mono" :foreground ,keywords :weight bold))))
   `(font-latex-math-face             ((t (:family "Mono Fur Nerd Font Mono" :foreground ,constants))))
   `(font-latex-script-char-face      ((t (:family "Mono Fur Nerd Font Mono" :foreground ,gray5))))
   `(preview-face                     ((t (:background ,ui-color2))))

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

(provide-theme 'tibor-bright)
;;; tibor-bright-theme ends here
