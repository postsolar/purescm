(library
  (PureScheme.Test.ReExport.Export lib)
  (export)
  (import
    (rnrs)
    (prefix (PureScheme.Test.ReExport.Bar lib) PureScheme.Test.ReExport.Bar.)
    (prefix (PureScheme.Test.ReExport.Foo lib) PureScheme.Test.ReExport.Foo.))

  )