
pub fn divisible(number: u64, divisor: u64) -> bool {
    number % divisor == 0
}

pub fn even(number: u64) -> bool {
    divisible(number, 2)
}
