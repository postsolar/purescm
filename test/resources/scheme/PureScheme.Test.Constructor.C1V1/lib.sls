(library
  (PureScheme.Test.Constructor.C1V1 lib)
  (export Bar)
  (import (rnrs))


  (define Bar (lambda (value0) (cons (quote Bar) (vector value0))))
  )