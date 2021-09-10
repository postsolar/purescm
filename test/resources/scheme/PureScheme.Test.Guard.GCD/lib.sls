(library
  (PureScheme.Test.Guard.GCD lib)
  (export gcd)
  (import
    (rnrs)
    (prefix (Data.Boolean lib) Data.Boolean.)
    (prefix (Data.Ord lib) Data.Ord.)
    (prefix (Data.Ring lib) Data.Ring.)
    (prefix (Prelude lib) Prelude.))


  (define
    gcd
    (lambda
      (v)
      (lambda
        (v1)
        (cond
          ((= v1 0) v)
          ((= v 0) v1)
          (#t
            (cond
              ((((Data.Ord.greaterThan Data.Ord.ordInt) v) v1)
                ((gcd (- v v1)) v1))
              (Data.Boolean.otherwise ((gcd v) (- v1 v)))
              (else (error #f "Failed pattern match"))))
          (else (error #f "Failed pattern match"))))))
  )