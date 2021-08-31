(library (PureScheme.Test.Binder.Named lib) (export Bar Baz match) (import (rnrs) (prefix (Prim lib) Prim.) (prefix (PureScheme.Test.Binder.Named lib) PureScheme.Test.Binder.Named.)) (define Bar (lambda (value0) (cons (quote Bar) (vector value0))))

(define Baz (cons (quote Baz) (vector)))

(define match (lambda (v) (cond ((eq? (car v) (quote Bar)) v) ((eq? (car v) (quote Baz)) Baz) (else (error #f "Failed pattern match"))))))