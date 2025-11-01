;; highlights.scm for Oat language
;; Matches grammar.js (Oat v1)
;; -------------------------------------------------------------------
;; Basic keywords
;; -------------------------------------------------------------------

[
  "if"
  "else"
  "for"
  "while"
  "return"
  "var"
  "global"
  "new"
  "null"
  "true"
  "false"
] @keyword

[
  "void"
] @type

(primitive_type) @type
(ref_type) @type

[
  "+"
  "-"
  "*"
  "=="
  "!="
  "<"
  "<="
  ">"
  ">="
  "<<"
  ">>"
  ">>>"
  "&"
  "|"
  "[&]"
  "[|]"
  "!"
  "~"
  "="
] @operator

;; -------------------------------------------------------------------
;; Identifiers & function declarations
;; -------------------------------------------------------------------

(identifier) @variable

(fdecl
  name: (identifier) @function)

(call_exp
  (identifier) @function.call)

(params
  (arg
    (identifier) @variable.parameter))

;; -------------------------------------------------------------------
;; Literals
;; -------------------------------------------------------------------

(int_literal) @number
(string_literal) @string

;; -------------------------------------------------------------------
;; Comments
;; -------------------------------------------------------------------

(comment) @comment

;; -------------------------------------------------------------------
;; Declarations
;; -------------------------------------------------------------------

(gdecl name: (identifier) @variable.global)
(vdecl
  (identifier) @variable)

(assign_stmt lhs: (lhs) @variable)

;; -------------------------------------------------------------------
;; Misc
;; -------------------------------------------------------------------

(array_index) @variable
;; -------------------------------------------------------------------
;; Brackets & punctuation
;; -------------------------------------------------------------------

[
  ","
  ";"
] @punctuation.delimiter

[
  "("
  ")"
  "{"
  "}"
  "["
  "]"
  "[]"
] @punctuation.bracket


(call_stmt) @function.call
(block) @scope
