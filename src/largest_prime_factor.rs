use common::divisible;

#[allow(dead_code)]
pub fn is_prime(n: u64) -> bool {
    let half = n / 2 + 1;
    let mut range = 2..half; // TODO: find out why this needs to be 'mut'
    n != 1 && !range.any(|r| divisible(n, r))
}


#[cfg(test)]
mod tests {

    use super::*;

    #[test]
    #[should_panic(expected="assertion failed")]
    fn one_is_not_prime() {
        assert!(is_prime(1));
    }

    #[test]
    fn there_are_168_primes_under_1000() {
        let thousand = 1..1000;
        let primes = thousand.filter(|n| is_prime(*n)).count();
        assert_eq!(primes, 168);
    }
}
