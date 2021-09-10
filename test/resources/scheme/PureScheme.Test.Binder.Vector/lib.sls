(library
  (PureScheme.Test.Binder.Vector lib)
  (export foo)
  (import (rnrs))


  (define
    foo
    (lambda
      (dictPartial)
      (lambda
        (v)
        (cond
          ((and
              (= (vector-length v) 3)
              (= (vector-ref v 0) 1)
              (= (vector-ref v 1) 2)
              (= (vector-ref v 2) 3))
            4)
          ((and
              (= (vector-length v) 2)
              (= (vector-ref v 0) 5)
              (= (vector-ref v 1) 6))
            7)
          ((= (vector-length v) 0) 8)
          (else (error #f "Failed pattern match"))))))
  )