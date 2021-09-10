(library
  (PureScheme.Test.Let.TopLevelLambdas lib)
  (export foo)
  (import
    (rnrs)
    (prefix (Data.Ring lib) Data.Ring.)
    (prefix (Data.Semiring lib) Data.Semiring.)
    (prefix (Prelude lib) Prelude.))


  (define
    foo
    (let
      ((sub (lambda (x) (lambda (y) (- x y))))
        (add (lambda (x) (lambda (y) (+ x y)))))
      ((add ((sub 1) 2)) ((add 3) 4))))
  )