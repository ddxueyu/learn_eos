(module
 (type $FUNCSIG$ijji (func (param i64 i64 i32) (result i32)))
 (type $FUNCSIG$ijjii (func (param i64 i64 i32 i32) (result i32)))
 (type $FUNCSIG$vj (func (param i64)))
 (type $FUNCSIG$ijjjii (func (param i64 i64 i64 i32 i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (import "env" "assert" (func $assert (param i32 i32)))
 (import "env" "load_i64" (func $load_i64 (param i64 i64 i64 i32 i32) (result i32)))
 (import "env" "read_message" (func $read_message (param i32 i32) (result i32)))
 (import "env" "remove_i64" (func $remove_i64 (param i64 i64 i32) (result i32)))
 (import "env" "require_auth" (func $require_auth (param i64)))
 (import "env" "require_notice" (func $require_notice (param i64)))
 (import "env" "store_i64" (func $store_i64 (param i64 i64 i32 i32) (result i32)))
 (table 0 anyfunc)
 (memory $0 1)
 (data (i32.const 4) "\c0\04\00\00")
 (data (i32.const 16) "account\00")
 (data (i32.const 32) "integer underflow subtracting token balance\00")
 (data (i32.const 80) "integer overflow adding token balance\00")
 (data (i32.const 128) "currency\00")
 (data (i32.const 144) "transfer\00")
 (data (i32.const 160) "message shorter than expected\00")
 (export "memory" (memory $0))
 (export "_ZN8currency13store_accountEyRKNS_7accountE" (func $_ZN8currency13store_accountEyRKNS_7accountE))
 (export "_ZN8currency23apply_currency_transferERKNS_8transferE" (func $_ZN8currency23apply_currency_transferERKNS_8transferE))
 (export "init" (func $init))
 (export "apply" (func $apply))
 (func $_ZN8currency13store_accountEyRKNS_7accountE (param $0 i64) (param $1 i32)
  (block $label$0
   (br_if $label$0
    (i64.eq
     (i64.load offset=8
      (get_local $1)
     )
     (i64.const 0)
    )
   )
   (drop
    (call $store_i64
     (get_local $0)
     (i64.const 3607749778735104000)
     (get_local $1)
     (i32.const 16)
    )
   )
   (return)
  )
  (drop
   (call $remove_i64
    (get_local $0)
    (i64.const 3607749778735104000)
    (get_local $1)
   )
  )
 )
 (func $_ZN8currency23apply_currency_transferERKNS_8transferE (param $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (set_local $5
   (i64.load
    (get_local $0)
   )
  )
  (call $require_notice
   (i64.load offset=8
    (get_local $0)
   )
  )
  (call $require_notice
   (get_local $5)
  )
  (call $require_auth
   (i64.load
    (get_local $0)
   )
  )
  (set_local $1
   (i64.load
    (get_local $0)
   )
  )
  (set_local $5
   (i64.const 0)
  )
  (set_local $4
   (i64.const 59)
  )
  (set_local $3
   (i32.const 16)
  )
  (set_local $6
   (i64.const 0)
  )
  (loop $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i64.gt_u
          (get_local $5)
          (i64.const 6)
         )
        )
        (br_if $label$4
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $2
             (i32.load8_s
              (get_local $3)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $2
         (i32.add
          (get_local $2)
          (i32.const 165)
         )
        )
        (br $label$3)
       )
       (set_local $7
        (i64.const 0)
       )
       (br_if $label$2
        (i64.le_u
         (get_local $5)
         (i64.const 11)
        )
       )
       (br $label$1)
      )
      (set_local $2
       (select
        (i32.add
         (get_local $2)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $2)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $7
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $2)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $7
     (i64.shl
      (i64.and
       (get_local $7)
       (i64.const 31)
      )
      (i64.and
       (get_local $4)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $3
    (i32.add
     (get_local $3)
     (i32.const 1)
    )
   )
   (set_local $5
    (i64.add
     (get_local $5)
     (i64.const 1)
    )
   )
   (set_local $6
    (i64.or
     (get_local $7)
     (get_local $6)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $4
      (i64.add
       (get_local $4)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (set_local $5
   (i64.const 0)
  )
  (i64.store offset=24
   (get_local $8)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $8)
   (get_local $6)
  )
  (drop
   (call $load_i64
    (get_local $1)
    (i64.const 5093418677655568384)
    (i64.const 3607749778735104000)
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
    (i32.const 16)
   )
  )
  (set_local $1
   (i64.load
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
   )
  )
  (set_local $4
   (i64.const 59)
  )
  (set_local $3
   (i32.const 16)
  )
  (set_local $6
   (i64.const 0)
  )
  (loop $label$6
   (block $label$7
    (block $label$8
     (block $label$9
      (block $label$10
       (block $label$11
        (br_if $label$11
         (i64.gt_u
          (get_local $5)
          (i64.const 6)
         )
        )
        (br_if $label$10
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $2
             (i32.load8_s
              (get_local $3)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $2
         (i32.add
          (get_local $2)
          (i32.const 165)
         )
        )
        (br $label$9)
       )
       (set_local $7
        (i64.const 0)
       )
       (br_if $label$8
        (i64.le_u
         (get_local $5)
         (i64.const 11)
        )
       )
       (br $label$7)
      )
      (set_local $2
       (select
        (i32.add
         (get_local $2)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $2)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $7
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $2)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $7
     (i64.shl
      (i64.and
       (get_local $7)
       (i64.const 31)
      )
      (i64.and
       (get_local $4)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $3
    (i32.add
     (get_local $3)
     (i32.const 1)
    )
   )
   (set_local $5
    (i64.add
     (get_local $5)
     (i64.const 1)
    )
   )
   (set_local $6
    (i64.or
     (get_local $7)
     (get_local $6)
    )
   )
   (br_if $label$6
    (i64.ne
     (tee_local $4
      (i64.add
       (get_local $4)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (i64.store
   (get_local $8)
   (get_local $6)
  )
  (i64.store offset=8
   (get_local $8)
   (i64.const 0)
  )
  (drop
   (call $load_i64
    (get_local $1)
    (i64.const 5093418677655568384)
    (i64.const 3607749778735104000)
    (get_local $8)
    (i32.const 16)
   )
  )
  (call $assert
   (i64.ge_u
    (i64.load
     (tee_local $3
      (i32.add
       (get_local $8)
       (i32.const 24)
      )
     )
    )
    (i64.load offset=16
     (get_local $0)
    )
   )
   (i32.const 32)
  )
  (i64.store
   (get_local $3)
   (i64.sub
    (i64.load
     (get_local $3)
    )
    (tee_local $5
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
  )
  (call $assert
   (i64.ge_u
    (i64.add
     (get_local $5)
     (i64.load offset=8
      (get_local $8)
     )
    )
    (get_local $5)
   )
   (i32.const 80)
  )
  (i64.store offset=8
   (get_local $8)
   (i64.add
    (i64.load offset=8
     (get_local $8)
    )
    (i64.load offset=16
     (get_local $0)
    )
   )
  )
  (set_local $5
   (i64.load
    (get_local $0)
   )
  )
  (block $label$12
   (block $label$13
    (br_if $label$13
     (i64.eq
      (i64.load
       (get_local $3)
      )
      (i64.const 0)
     )
    )
    (drop
     (call $store_i64
      (get_local $5)
      (i64.const 3607749778735104000)
      (i32.add
       (get_local $8)
       (i32.const 16)
      )
      (i32.const 16)
     )
    )
    (br $label$12)
   )
   (drop
    (call $remove_i64
     (get_local $5)
     (i64.const 3607749778735104000)
     (i32.add
      (get_local $8)
      (i32.const 16)
     )
    )
   )
  )
  (set_local $5
   (i64.load
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
   )
  )
  (block $label$14
   (block $label$15
    (br_if $label$15
     (i64.eq
      (i64.load
       (i32.add
        (get_local $8)
        (i32.const 8)
       )
      )
      (i64.const 0)
     )
    )
    (drop
     (call $store_i64
      (get_local $5)
      (i64.const 3607749778735104000)
      (get_local $8)
      (i32.const 16)
     )
    )
    (br $label$14)
   )
   (drop
    (call $remove_i64
     (get_local $5)
     (i64.const 3607749778735104000)
     (get_local $8)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
  )
 )
 (func $init
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (set_local $3
   (i64.const 0)
  )
  (set_local $2
   (i64.const 59)
  )
  (set_local $1
   (i32.const 16)
  )
  (set_local $4
   (i64.const 0)
  )
  (loop $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i64.gt_u
          (get_local $3)
          (i64.const 6)
         )
        )
        (br_if $label$4
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $0
             (i32.load8_s
              (get_local $1)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $0
         (i32.add
          (get_local $0)
          (i32.const 165)
         )
        )
        (br $label$3)
       )
       (set_local $5
        (i64.const 0)
       )
       (br_if $label$2
        (i64.le_u
         (get_local $3)
         (i64.const 11)
        )
       )
       (br $label$1)
      )
      (set_local $0
       (select
        (i32.add
         (get_local $0)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $0)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $5
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $0)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $5
     (i64.shl
      (i64.and
       (get_local $5)
       (i64.const 31)
      )
      (i64.and
       (get_local $2)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $1
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
   (set_local $3
    (i64.add
     (get_local $3)
     (i64.const 1)
    )
   )
   (set_local $4
    (i64.or
     (get_local $5)
     (get_local $4)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $2
      (i64.add
       (get_local $2)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (set_local $3
   (i64.const 0)
  )
  (i64.store offset=24
   (get_local $7)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $7)
   (get_local $4)
  )
  (set_local $2
   (i64.const 59)
  )
  (set_local $1
   (i32.const 128)
  )
  (set_local $4
   (i64.const 0)
  )
  (loop $label$6
   (block $label$7
    (block $label$8
     (block $label$9
      (block $label$10
       (block $label$11
        (br_if $label$11
         (i64.gt_u
          (get_local $3)
          (i64.const 7)
         )
        )
        (br_if $label$10
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $0
             (i32.load8_s
              (get_local $1)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $0
         (i32.add
          (get_local $0)
          (i32.const 165)
         )
        )
        (br $label$9)
       )
       (set_local $5
        (i64.const 0)
       )
       (br_if $label$8
        (i64.le_u
         (get_local $3)
         (i64.const 11)
        )
       )
       (br $label$7)
      )
      (set_local $0
       (select
        (i32.add
         (get_local $0)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $0)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $5
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $0)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $5
     (i64.shl
      (i64.and
       (get_local $5)
       (i64.const 31)
      )
      (i64.and
       (get_local $2)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $1
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
   (set_local $3
    (i64.add
     (get_local $3)
     (i64.const 1)
    )
   )
   (set_local $4
    (i64.or
     (get_local $5)
     (get_local $4)
    )
   )
   (br_if $label$6
    (i64.ne
     (tee_local $2
      (i64.add
       (get_local $2)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (block $label$12
   (br_if $label$12
    (i32.eq
     (call $load_i64
      (get_local $4)
      (i64.const 5093418677655568384)
      (i64.const 3607749778735104000)
      (i32.add
       (get_local $7)
       (i32.const 16)
      )
      (i32.const 16)
     )
     (i32.const 16)
    )
   )
   (set_local $3
    (i64.const 0)
   )
   (set_local $2
    (i64.const 59)
   )
   (set_local $1
    (i32.const 128)
   )
   (set_local $4
    (i64.const 0)
   )
   (loop $label$13
    (block $label$14
     (block $label$15
      (block $label$16
       (block $label$17
        (block $label$18
         (br_if $label$18
          (i64.gt_u
           (get_local $3)
           (i64.const 7)
          )
         )
         (br_if $label$17
          (i32.gt_u
           (i32.and
            (i32.add
             (tee_local $0
              (i32.load8_s
               (get_local $1)
              )
             )
             (i32.const -97)
            )
            (i32.const 255)
           )
           (i32.const 25)
          )
         )
         (set_local $0
          (i32.add
           (get_local $0)
           (i32.const 165)
          )
         )
         (br $label$16)
        )
        (set_local $5
         (i64.const 0)
        )
        (br_if $label$15
         (i64.le_u
          (get_local $3)
          (i64.const 11)
         )
        )
        (br $label$14)
       )
       (set_local $0
        (select
         (i32.add
          (get_local $0)
          (i32.const 208)
         )
         (i32.const 0)
         (i32.lt_u
          (i32.and
           (i32.add
            (get_local $0)
            (i32.const -49)
           )
           (i32.const 255)
          )
          (i32.const 5)
         )
        )
       )
      )
      (set_local $5
       (i64.shr_s
        (i64.shl
         (i64.extend_u/i32
          (get_local $0)
         )
         (i64.const 56)
        )
        (i64.const 56)
       )
      )
     )
     (set_local $5
      (i64.shl
       (i64.and
        (get_local $5)
        (i64.const 31)
       )
       (i64.and
        (get_local $2)
        (i64.const 4294967295)
       )
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (set_local $3
     (i64.add
      (get_local $3)
      (i64.const 1)
     )
    )
    (set_local $4
     (i64.or
      (get_local $5)
      (get_local $4)
     )
    )
    (br_if $label$13
     (i64.ne
      (tee_local $2
       (i64.add
        (get_local $2)
        (i64.const -5)
       )
      )
      (i64.const -6)
     )
    )
   )
   (set_local $3
    (i64.const 0)
   )
   (set_local $2
    (i64.const 59)
   )
   (set_local $1
    (i32.const 16)
   )
   (set_local $6
    (i64.const 0)
   )
   (loop $label$19
    (block $label$20
     (block $label$21
      (block $label$22
       (block $label$23
        (block $label$24
         (br_if $label$24
          (i64.gt_u
           (get_local $3)
           (i64.const 6)
          )
         )
         (br_if $label$23
          (i32.gt_u
           (i32.and
            (i32.add
             (tee_local $0
              (i32.load8_s
               (get_local $1)
              )
             )
             (i32.const -97)
            )
            (i32.const 255)
           )
           (i32.const 25)
          )
         )
         (set_local $0
          (i32.add
           (get_local $0)
           (i32.const 165)
          )
         )
         (br $label$22)
        )
        (set_local $5
         (i64.const 0)
        )
        (br_if $label$21
         (i64.le_u
          (get_local $3)
          (i64.const 11)
         )
        )
        (br $label$20)
       )
       (set_local $0
        (select
         (i32.add
          (get_local $0)
          (i32.const 208)
         )
         (i32.const 0)
         (i32.lt_u
          (i32.and
           (i32.add
            (get_local $0)
            (i32.const -49)
           )
           (i32.const 255)
          )
          (i32.const 5)
         )
        )
       )
      )
      (set_local $5
       (i64.shr_s
        (i64.shl
         (i64.extend_u/i32
          (get_local $0)
         )
         (i64.const 56)
        )
        (i64.const 56)
       )
      )
     )
     (set_local $5
      (i64.shl
       (i64.and
        (get_local $5)
        (i64.const 31)
       )
       (i64.and
        (get_local $2)
        (i64.const 4294967295)
       )
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (set_local $3
     (i64.add
      (get_local $3)
      (i64.const 1)
     )
    )
    (set_local $6
     (i64.or
      (get_local $5)
      (get_local $6)
     )
    )
    (br_if $label$19
     (i64.ne
      (tee_local $2
       (i64.add
        (get_local $2)
        (i64.const -5)
       )
      )
      (i64.const -6)
     )
    )
   )
   (i64.store offset=8
    (get_local $7)
    (i64.const 1000000000)
   )
   (i64.store
    (get_local $7)
    (get_local $6)
   )
   (drop
    (call $store_i64
     (get_local $4)
     (i64.const 3607749778735104000)
     (get_local $7)
     (i32.const 16)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 32)
   )
  )
 )
 (func $apply (param $0 i64) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (set_local $5
   (i64.const 0)
  )
  (set_local $4
   (i64.const 59)
  )
  (set_local $3
   (i32.const 128)
  )
  (set_local $6
   (i64.const 0)
  )
  (loop $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i64.gt_u
          (get_local $5)
          (i64.const 7)
         )
        )
        (br_if $label$4
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $2
             (i32.load8_s
              (get_local $3)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $2
         (i32.add
          (get_local $2)
          (i32.const 165)
         )
        )
        (br $label$3)
       )
       (set_local $7
        (i64.const 0)
       )
       (br_if $label$2
        (i64.le_u
         (get_local $5)
         (i64.const 11)
        )
       )
       (br $label$1)
      )
      (set_local $2
       (select
        (i32.add
         (get_local $2)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $2)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $7
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $2)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $7
     (i64.shl
      (i64.and
       (get_local $7)
       (i64.const 31)
      )
      (i64.and
       (get_local $4)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $3
    (i32.add
     (get_local $3)
     (i32.const 1)
    )
   )
   (set_local $5
    (i64.add
     (get_local $5)
     (i64.const 1)
    )
   )
   (set_local $6
    (i64.or
     (get_local $7)
     (get_local $6)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $4
      (i64.add
       (get_local $4)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i64.ne
     (get_local $6)
     (get_local $0)
    )
   )
   (set_local $5
    (i64.const 0)
   )
   (set_local $4
    (i64.const 59)
   )
   (set_local $3
    (i32.const 144)
   )
   (set_local $6
    (i64.const 0)
   )
   (loop $label$7
    (block $label$8
     (block $label$9
      (block $label$10
       (block $label$11
        (block $label$12
         (br_if $label$12
          (i64.gt_u
           (get_local $5)
           (i64.const 7)
          )
         )
         (br_if $label$11
          (i32.gt_u
           (i32.and
            (i32.add
             (tee_local $2
              (i32.load8_s
               (get_local $3)
              )
             )
             (i32.const -97)
            )
            (i32.const 255)
           )
           (i32.const 25)
          )
         )
         (set_local $2
          (i32.add
           (get_local $2)
           (i32.const 165)
          )
         )
         (br $label$10)
        )
        (set_local $7
         (i64.const 0)
        )
        (br_if $label$9
         (i64.le_u
          (get_local $5)
          (i64.const 11)
         )
        )
        (br $label$8)
       )
       (set_local $2
        (select
         (i32.add
          (get_local $2)
          (i32.const 208)
         )
         (i32.const 0)
         (i32.lt_u
          (i32.and
           (i32.add
            (get_local $2)
            (i32.const -49)
           )
           (i32.const 255)
          )
          (i32.const 5)
         )
        )
       )
      )
      (set_local $7
       (i64.shr_s
        (i64.shl
         (i64.extend_u/i32
          (get_local $2)
         )
         (i64.const 56)
        )
        (i64.const 56)
       )
      )
     )
     (set_local $7
      (i64.shl
       (i64.and
        (get_local $7)
        (i64.const 31)
       )
       (i64.and
        (get_local $4)
        (i64.const 4294967295)
       )
      )
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (set_local $5
     (i64.add
      (get_local $5)
      (i64.const 1)
     )
    )
    (set_local $6
     (i64.or
      (get_local $7)
      (get_local $6)
     )
    )
    (br_if $label$7
     (i64.ne
      (tee_local $4
       (i64.add
        (get_local $4)
        (i64.const -5)
       )
      )
      (i64.const -6)
     )
    )
   )
   (br_if $label$6
    (i64.ne
     (get_local $6)
     (get_local $1)
    )
   )
   (i64.store offset=24
    (get_local $8)
    (i64.const 0)
   )
   (call $assert
    (i32.gt_u
     (call $read_message
      (i32.add
       (get_local $8)
       (i32.const 8)
      )
      (i32.const 24)
     )
     (i32.const 23)
    )
    (i32.const 160)
   )
   (call $_ZN8currency23apply_currency_transferERKNS_8transferE
    (i32.add
     (get_local $8)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
  )
 )
)
