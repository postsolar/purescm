(library
  (PureScheme.Test.Constructor.C1V0 lib)
  (export Foo)
  (import (rnrs))


  (define Foo (cons (quote Foo) (vector)))
  )