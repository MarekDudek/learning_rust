
pub fn divisible(number: u64, divisor: u64) -> bool {
    number % divisor == 0
}

pub fn even(number: u64) -> bool {
    divisible(number, 2)
}

#[allow(dead_code)]
pub fn quot_rem(divident: u64, divisor: u64) -> (u64, u64) {
    let quotient = divident / divisor;
    let reminder = divident % divisor;
    (quotient, reminder)
}


#[cfg(test)]
mod tests {

    use super::*;

    #[test]
    fn quot_rem_1() {
        let (q, r) = quot_rem(13, 5);
        assert_eq!(q, 2);
        assert_eq!(r, 3);
    }
}
