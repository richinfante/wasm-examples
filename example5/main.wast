(module
  ;; Global mutable counter
  (global $counter (mut i32) (i32.const 0))

  ;; Increase the counter
  (func (export "inc_counter") (result i32)
    ;; Load + Add
    i32.const 1
    get_global $counter
    i32.add

    ;; Save Result
    set_global $counter

    ;; Return result
    get_global $counter
  )

  ;; Get current counter value
  (func (export "get_counter") (result i32)
    get_global $counter
  )
)