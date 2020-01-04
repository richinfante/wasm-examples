(module
  (func $add_i32 (export "add_i32") (param $p1 i32) (param $p2 i32) (result i32)
    ;; All Wasm items are accessed via their index. 
    ;; $p1 and $p2 are just aliases for the numbers 0 and 1, respectively.
    ;; Therefore, we could substitute them below and it'd work fine, but this is clearer:
    get_local $p1
    get_local $p2
    i32.add
  )

  (func (export "add_i32x3") (param $p1 i32) (param $p2 i32) (param $p3 i32) (result i32)
    ;; Load params onto stack
    get_local $p1
    get_local $p2

    ;; Call add func
    call $add_i32

    ;; Load third param
    get_local $p3

    ;; Call add again.
    call $add_i32
  )
)