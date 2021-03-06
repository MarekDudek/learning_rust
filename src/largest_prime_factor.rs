
use common::divisible;
use common::quot_rem;

#[allow(dead_code)]
pub fn is_prime(n: u64) -> bool {
    let half = n / 2 + 1;
    let mut range = 2..half; // TODO: find out why this needs to be 'mut'
    n != 1 && !range.any(|r| divisible(n, r))
}

#[allow(dead_code)]
pub fn factorize(n: u64) -> Vec<u64> {
    let mut factors: Vec<u64> = vec![];
    let mut current = n;
    let mut i = 2;
    loop {
        if divisible(current, i) {
            if !factors.contains(&i) {
                factors.push(i);
            }
            current = current / i;
            if current == 1 {
                return factors;
            }
        } else {
            i = i + 1;
        }
    }
}

#[allow(dead_code)]
pub fn largest_prime_factor(n: u64) -> u64 {
    let factors = factorize(n);
    match factors.last() {
        Some(&f) => f,
        None => 1,
    }
}

#[allow(dead_code)]
pub struct Primes {
    primes: Vec<u64>,
    current: u64,
}

#[allow(dead_code)]
pub fn primes() -> Primes {
    Primes {
        primes: vec![],
        current: 2,
    }
}

impl Iterator for Primes {
    type Item = u64;
    fn next(&mut self) -> Option<u64> {
        for i in self.current..u64::max_value() {
            if self.primes.iter().all(|x| i % x != 0) {
                self.primes.push(i);
                self.current = i + 1;
                return Some(i);
            }
        }
        panic!("Integer overflow");
    }
}

#[allow(dead_code)]
pub fn prime_factors(n: u64, mut primes: Primes) -> Vec<u64> {
    match n {
        1 => vec![],
        m => {
            if let Some(p) = primes.next() {
                let (q, r) = quot_rem(m, p);
                if m < p * p {
                    return vec![m];
                } else if r == 0 {
                    let mut factors = vec![p];
                    let mut rest = prime_factors(q, primes);
                    factors.append(&mut rest);
                    return factors;
                } else {
                    return prime_factors(m, primes);
                }
            } else {
                panic!("cannot happen");
            }
        }
    }
}

#[cfg(test)]
mod tests {

    use super::*;

    #[test]
    fn one_is_not_prime() {
        assert!(!is_prime(1));
    }

    #[test]
    fn there_are_168_primes_under_1000() {
        let primes = (1..1000).filter(|n| is_prime(*n)).count();
        assert_eq!(primes, 168);
    }

    #[test]
    fn example_factors() {
        assert_eq!(factorize(13195), vec![5, 7, 13, 29]);
    }

    #[test]
    fn factors_repeating() {
        assert_eq!(factorize(12), vec![2, 3]);
    }

    #[test]
    fn example() {
        assert_eq!(largest_prime_factor(13195), 29);
    }

    #[test]
    fn solution() {
        assert_eq!(largest_prime_factor(600851475143), 6857);
    }

    #[test]
    fn call() {
        let factors = prime_factors(13195, primes());
        assert_eq!(factors, vec![5, 7, 13, 29]);
    }
}
