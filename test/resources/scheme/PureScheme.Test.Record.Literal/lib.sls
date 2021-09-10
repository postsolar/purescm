(library
  (PureScheme.Test.Record.Literal lib)
  (export foo)
  (import (rnrs))


  (define
    foo
    (let
      (($ht (make-hashtable string-hash string=? 2)))
      (begin (hashtable-set! $ht "bar" 23) (hashtable-set! $ht "baz" 42) $ht)))
  )