;;; cmark.el --- Emacs binding of cmark              -*- lexical-binding: t; -*-

;; Copyright (C) 2017  Chunyang Xu

;; Author: Chunyang Xu <mail@xuchunyang.me>
;; Homepage: https://github.com/xuchunyang/emacs-cmark
;; Keywords: Markdown

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Code:

(require 'cmark-module)

;;;###autoload
(defun cmark-markdown-to-html (markdown)
  "Convert Markdown to HTML."
  (cmark-module-markdown-to-html markdown))

(provide 'cmark)
;;; cmark.el ends here
