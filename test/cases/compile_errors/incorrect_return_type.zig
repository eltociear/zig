 pub export fn entry() void{
     _ = foo();
 }
 const A = struct {
     a: u32,
 };
 fn foo() A {
     return bar();
 }
 const B = struct {
     a: u32,
 };
 fn bar() B {
     unreachable;
 }

// error
// backend=stage2
// target=native
//
// :8:16: error: expected type 'tmp.A', found 'tmp.B'
