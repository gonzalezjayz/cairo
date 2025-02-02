use box::BoxTrait;

#[test]
fn test_box_unbox_felt252s() {
    let x = 10;
    let boxed_x = BoxTrait::new(x);
    let y = 11;
    let boxed_y = BoxTrait::new(y);
    assert(boxed_x.unbox() == 10, 'x == 10');
    assert(boxed_y.unbox() == 11, 'y == 11');
}

// Test objects of size>1.
#[test]
fn test_box_unbox_u256() {
    let x = u256 { low: 1_u128, high: 0_u128 };
    let boxed_x = BoxTrait::new(x);
    let y = u256 { low: 1_u128, high: 1_u128 };
    let boxed_y = BoxTrait::new(y);
    assert(boxed_x.unbox() == x, 'unbox u256 x');
    assert(boxed_y.unbox() == y, 'unbox u256 y');
}
