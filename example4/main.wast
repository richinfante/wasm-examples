(module
  ;; Console.log via js environment
  (import "console" "log" (func $log (param i32 i32)))

  ;; Memory semgent (imported)
  (import "js" "mem" (memory 1))

  ;; Constant data at offset 0:
  (data (i32.const 0) "Hello, World!")
  
  ;; Some function
  (func (export "main")
    (call $log (i32.const 0) (i32.const 13))
  )
)