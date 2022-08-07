(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func))
  (type (;4;) (func (param i32 i32 i32)))
  (type (;5;) (func (param i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i64 i32) (result i64)))
  (import "env" "exit" (func (;0;) (type 1)))
  (func (;1;) (type 3)
    call 10)
  (func (;2;) (type 4) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 3
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    local.get 0
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    local.get 5
    local.get 2
    i32.store offset=4
    local.get 5
    i32.load offset=12
    local.set 6
    local.get 5
    i32.load offset=4
    local.set 7
    local.get 6
    local.get 7
    i32.add
    local.set 8
    i32.const 234
    local.set 9
    local.get 8
    local.get 9
    i32.add
    local.set 10
    local.get 5
    local.get 10
    i32.store offset=4
    return)
  (func (;3;) (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 3
    i32.load offset=12
    local.set 5
    local.get 4
    local.get 5
    i32.mul
    local.set 6
    local.get 6
    return)
  (func (;4;) (type 0) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 0
    i32.const 16
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set 0
    i32.const 0
    local.set 3
    local.get 2
    local.get 3
    i32.store offset=12
    i32.const 1
    local.set 4
    local.get 4
    call 3
    local.set 5
    i32.const 0
    local.set 6
    local.get 6
    local.get 5
    i32.store offset=1060
    i32.const 1
    local.set 7
    local.get 7
    call 3
    local.set 8
    i32.const 0
    local.set 9
    local.get 9
    local.get 8
    i32.store offset=1064
    i32.const 1
    local.set 10
    local.get 10
    call 3
    local.set 11
    local.get 2
    local.get 11
    i32.store offset=8
    i32.const 1
    local.set 12
    local.get 12
    call 3
    local.set 13
    i32.const 1
    local.set 14
    i32.const 1056
    local.set 15
    local.get 14
    local.get 15
    local.get 13
    call 2
    i32.const 0
    local.set 16
    local.get 16
    i32.load offset=1060
    local.set 17
    i32.const 1
    local.set 18
    local.get 18
    call 3
    local.set 19
    i32.const 1056
    local.set 20
    local.get 17
    local.get 20
    local.get 19
    call 2
    i32.const 1
    local.set 21
    local.get 21
    call 3
    drop
    i32.const 1
    local.set 22
    local.get 22
    call 3
    local.set 23
    local.get 2
    local.get 23
    i32.store offset=8
    i32.const 1
    local.set 24
    i32.const 0
    local.set 25
    local.get 25
    local.get 24
    i32.store offset=1068
    i32.const 1056
    local.set 26
    i32.const 0
    local.set 27
    local.get 27
    local.get 26
    i32.store offset=1072
    i32.const 1
    local.set 28
    local.get 28
    call 3
    local.set 29
    i32.const 1
    local.set 30
    i32.const 1030
    local.set 31
    local.get 30
    local.get 31
    local.get 29
    call 2
    i32.const 1
    local.set 32
    local.get 32
    call 3
    local.set 33
    i32.const 1
    local.set 34
    i32.const 1028
    local.set 35
    local.get 34
    local.get 35
    local.get 33
    call 2
    i32.const 1
    local.set 36
    local.get 36
    call 3
    local.set 37
    i32.const 1
    local.set 38
    i32.const 1026
    local.set 39
    local.get 38
    local.get 39
    local.get 37
    call 2
    i32.const 0
    local.set 40
    local.get 40
    i32.load offset=1060
    local.set 41
    i32.const 1
    local.set 42
    local.get 42
    call 3
    local.set 43
    i32.const 1056
    local.set 44
    local.get 41
    local.get 44
    local.get 43
    call 2
    local.get 2
    i32.load offset=8
    local.set 45
    i32.const 0
    local.set 46
    local.get 46
    local.get 45
    i32.store offset=1068
    i32.const 1054
    local.set 47
    i32.const 0
    local.set 48
    local.get 48
    local.get 47
    i32.store offset=1072
    i32.const 0
    local.set 49
    local.get 49
    i32.load offset=1060
    local.set 50
    i32.const 1
    local.set 51
    local.get 51
    call 3
    local.set 52
    i32.const 1054
    local.set 53
    local.get 50
    local.get 53
    local.get 52
    call 2
    i32.const 1
    local.set 54
    local.get 54
    call 3
    local.set 55
    i32.const 1
    local.set 56
    i32.const 1024
    local.set 57
    local.get 56
    local.get 57
    local.get 55
    call 2
    i32.const 1052
    local.set 58
    i32.const 0
    local.set 59
    local.get 59
    local.get 58
    i32.store offset=1072
    i32.const 1
    local.set 60
    local.get 60
    call 3
    local.set 61
    i32.const 1
    local.set 62
    i32.const 1052
    local.set 63
    local.get 62
    local.get 63
    local.get 61
    call 2
    i32.const 1050
    local.set 64
    i32.const 0
    local.set 65
    local.get 65
    local.get 64
    i32.store offset=1072
    i32.const 1
    local.set 66
    local.get 66
    call 3
    local.set 67
    i32.const 1
    local.set 68
    i32.const 1050
    local.set 69
    local.get 68
    local.get 69
    local.get 67
    call 2
    i32.const 1048
    local.set 70
    i32.const 0
    local.set 71
    local.get 71
    local.get 70
    i32.store offset=1072
    i32.const 1
    local.set 72
    local.get 72
    call 3
    local.set 73
    i32.const 1
    local.set 74
    i32.const 1048
    local.set 75
    local.get 74
    local.get 75
    local.get 73
    call 2
    i32.const 1046
    local.set 76
    i32.const 0
    local.set 77
    local.get 77
    local.get 76
    i32.store offset=1072
    i32.const 1
    local.set 78
    local.get 78
    call 3
    local.set 79
    i32.const 1
    local.set 80
    i32.const 1046
    local.set 81
    local.get 80
    local.get 81
    local.get 79
    call 2
    i32.const 1044
    local.set 82
    i32.const 0
    local.set 83
    local.get 83
    local.get 82
    i32.store offset=1072
    i32.const 1
    local.set 84
    local.get 84
    call 3
    local.set 85
    i32.const 1
    local.set 86
    i32.const 1044
    local.set 87
    local.get 86
    local.get 87
    local.get 85
    call 2
    i32.const 1042
    local.set 88
    i32.const 0
    local.set 89
    local.get 89
    local.get 88
    i32.store offset=1072
    i32.const 1
    local.set 90
    local.get 90
    call 3
    local.set 91
    i32.const 1
    local.set 92
    i32.const 1042
    local.set 93
    local.get 92
    local.get 93
    local.get 91
    call 2
    i32.const 1040
    local.set 94
    i32.const 0
    local.set 95
    local.get 95
    local.get 94
    i32.store offset=1072
    i32.const 1
    local.set 96
    local.get 96
    call 3
    local.set 97
    i32.const 1
    local.set 98
    i32.const 1040
    local.set 99
    local.get 98
    local.get 99
    local.get 97
    call 2
    i32.const 1038
    local.set 100
    i32.const 0
    local.set 101
    local.get 101
    local.get 100
    i32.store offset=1072
    i32.const 1
    local.set 102
    local.get 102
    call 3
    local.set 103
    i32.const 1
    local.set 104
    i32.const 1038
    local.set 105
    local.get 104
    local.get 105
    local.get 103
    call 2
    i32.const 1036
    local.set 106
    i32.const 0
    local.set 107
    local.get 107
    local.get 106
    i32.store offset=1072
    i32.const 1
    local.set 108
    local.get 108
    call 3
    local.set 109
    i32.const 1
    local.set 110
    i32.const 1036
    local.set 111
    local.get 110
    local.get 111
    local.get 109
    call 2
    i32.const 1034
    local.set 112
    i32.const 0
    local.set 113
    local.get 113
    local.get 112
    i32.store offset=1072
    i32.const 1
    local.set 114
    local.get 114
    call 3
    local.set 115
    i32.const 1
    local.set 116
    i32.const 1034
    local.set 117
    local.get 116
    local.get 117
    local.get 115
    call 2
    i32.const 1032
    local.set 118
    i32.const 0
    local.set 119
    local.get 119
    local.get 118
    i32.store offset=1072
    i32.const 0
    local.set 120
    local.get 120
    i32.load offset=1064
    local.set 121
    i32.const 1
    local.set 122
    local.get 122
    call 3
    local.set 123
    i32.const 1032
    local.set 124
    local.get 121
    local.get 124
    local.get 123
    call 2
    i32.const 0
    local.set 125
    local.get 125
    call 0
    unreachable)
  (func (;5;) (type 5) (param i32 i32) (result i32)
    (local i32)
    call 4
    local.set 2
    local.get 2
    return)
  (func (;6;) (type 0) (result i32)
    i32.const 1076)
  (func (;7;) (type 0) (result i32)
    global.get 0)
  (func (;8;) (type 1) (param i32)
    local.get 0
    global.set 0)
  (func (;9;) (type 2) (param i32) (result i32)
    (local i32 i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 1
    global.set 0
    local.get 1)
  (func (;10;) (type 3)
    i32.const 5243984
    global.set 2
    i32.const 1092
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    global.set 1)
  (func (;11;) (type 0) (result i32)
    global.get 0
    global.get 1
    i32.sub)
  (func (;12;) (type 0) (result i32)
    global.get 1)
  (func (;13;) (type 1) (param i32))
  (func (;14;) (type 1) (param i32))
  (func (;15;) (type 0) (result i32)
    i32.const 1080
    call 13
    i32.const 1084)
  (func (;16;) (type 3)
    i32.const 1080
    call 14)
  (func (;17;) (type 2) (param i32) (result i32)
    i32.const 1)
  (func (;18;) (type 1) (param i32))
  (func (;19;) (type 2) (param i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 0
      local.set 1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1088
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=1088
        call 19
        local.set 1
      end
      block  ;; label = @2
        i32.const 0
        i32.load offset=1088
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=1088
        call 19
        local.get 1
        i32.or
        local.set 1
      end
      block  ;; label = @2
        call 15
        i32.load
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          i32.const 0
          local.set 2
          block  ;; label = @4
            local.get 0
            i32.load offset=76
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
            local.get 0
            call 17
            local.set 2
          end
          block  ;; label = @4
            local.get 0
            i32.load offset=20
            local.get 0
            i32.load offset=28
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            call 19
            local.get 1
            i32.or
            local.set 1
          end
          block  ;; label = @4
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            call 18
          end
          local.get 0
          i32.load offset=56
          local.tee 0
          br_if 0 (;@3;)
        end
      end
      call 16
      local.get 1
      return
    end
    i32.const 0
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.load offset=76
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 0
      call 17
      local.set 2
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=20
          local.get 0
          i32.load offset=28
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          i32.const 0
          i32.const 0
          local.get 0
          i32.load offset=36
          call_indirect (type 6)
          drop
          local.get 0
          i32.load offset=20
          br_if 0 (;@3;)
          i32.const -1
          local.set 1
          local.get 2
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 0
          i32.load offset=4
          local.tee 1
          local.get 0
          i32.load offset=8
          local.tee 3
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          local.get 3
          i32.sub
          i64.extend_i32_s
          i32.const 1
          local.get 0
          i32.load offset=40
          call_indirect (type 7)
          drop
        end
        i32.const 0
        local.set 1
        local.get 0
        i32.const 0
        i32.store offset=28
        local.get 0
        i64.const 0
        i64.store offset=16
        local.get 0
        i64.const 0
        i64.store offset=4 align=4
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 0
      call 18
    end
    local.get 1)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 5243984))
  (global (;1;) (mut i32) (i32.const 0))
  (global (;2;) (mut i32) (i32.const 0))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 1))
  (export "main" (func 5))
  (export "__indirect_function_table" (table 0))
  (export "__errno_location" (func 6))
  (export "fflush" (func 19))
  (export "emscripten_stack_init" (func 10))
  (export "emscripten_stack_get_free" (func 11))
  (export "emscripten_stack_get_end" (func 12))
  (export "stackSave" (func 7))
  (export "stackRestore" (func 8))
  (export "stackAlloc" (func 9))
  (data (;0;) (i32.const 1024) "q\00p\00o\00n\00m\00l\00k\00j\00i\00h\00g\00f\00e\00d\00c\00b\00a\00"))
