(module
  (memory 1)
  (data (i32.const 4) "\10\04\00\00")
  (export "memory" memory)
  (export "foo" $foo)
  (func $foo
  )
)
;; METADATA: { "asmConsts": {},"staticBump": 1040, "initializers": [] }
