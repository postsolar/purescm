(library
  (PureScheme.Test.Let.LambdasInFunction lib)
  (export foo)
  (import
    (rnrs)
    (prefix (Data.Ring lib) Data.Ring.)
    (prefix (Data.Semiring lib) Data.Semiring.)
    (prefix (Prelude lib) Prelude.))


  (define
    foo
    (lambda
      (dictRing)
      (lambda
        (x)
        (lambda
          (y)
          (let
            ((sub (lambda (a) (lambda (b) (((Data.Ring.sub dictRing) x) y))))
              (add
                (lambda
                  (a)
                  (lambda
                    (b)
                    (((Data.Semiring.add
                          ((hashtable-ref
                              dictRing
                              "Semiring0"
                              (error #f "Key not found"))
                            Prim.undefined))
                        x)
                      y)))))
            ((add ((sub x) y)) ((add x) y)))))))
  )