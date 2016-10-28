use common::divisible;

#[allow(dead_code)]
pub fn is_prime(n: u64) -> bool {
    let half = n / 2 + 1;
    let mut range = 2..half; // TODO: find out why this needs to be 'mut'
    n != 1 && !range.any(|r| divisible(n, r))
}

#[allow(dead_code)]
pub fn factorize(n: u64) -> Vec<u64> {
    if n == 1 {
        vec![]
    } else {
        let mut factors: Vec<u64> = vec![];
        let mut current = n;
        let mut i = 2;
        loop {
            if current == 1 {
                return factors;
            } else if divisible(current, i) {
                current = current / i;
                factors.push(i);
            } else { 
                i = i + 1;
            }
        }
    }
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
        let primes = (1..1000).filter(|n| is_prime(*n)).count();
        assert_eq!(primes, 168);
    }

    #[test]
    fn example() {
        assert_eq!(factorize(13195), vec![5, 7, 13, 29]);
    }
}
