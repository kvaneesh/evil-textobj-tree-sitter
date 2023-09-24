(function_definition
  body: (_) @function.inner) @function.outer

(struct_specifier
  body: (_) @class.inner) @class.outer

(enum_specifier
  body: (_) @class.inner) @class.outer

(union_specifier
  body: (_) @class.inner) @class.outer

(parameter_list 
  ((_) @parameter.inner . ","? @parameter.outer) @parameter.outer)

(argument_list
  ((_) @parameter.inner . ","? @parameter.outer) @parameter.outer)

(comment) @comment.inner

(comment)+ @comment.outer

(if_statement
  condition: (_) @conditional.inner)

(if_statement
  consequence: (_)? @conditional.inner
  alternative: (_)? @conditional.inner
  ) @conditional.outer

(if_statement
  condition: (_) @conditional.inner)

; loops
(for_statement
  (_)? @loop.inner) @loop.outer
(while_statement
  (_)? @loop.inner) @loop.outer
(do_statement
  (_)? @loop.inner) @loop.outer

; loops
(for_statement
  (_)? @loop.inner) @loop.outer
(while_statement
  (_)? @loop.inner) @loop.outer
(do_statement
  (_)? @loop.inner) @loop.outer
