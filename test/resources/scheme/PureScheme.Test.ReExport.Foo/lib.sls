(library
  (PureScheme.Test.ReExport.Foo lib)
  (export foo)
  (import (rnrs))


  (define foo 1)
  )