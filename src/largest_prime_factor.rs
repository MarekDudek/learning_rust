
use std::iter::Filter;
use std::ops::RangeFrom;

use common::divisible;

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
            factors.push(i);
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
        _ => 1
    }
}

// TODO: finish functional way

#[allow(dead_code)]
#[allow(unused_variables)]
pub fn factorize_fun(n: u64) -> Vec<u64> {
    let primes = (1..).filter(|&n| is_prime(n));
    let five = primes.take(5).collect::<Vec<u64>>();
    //print!("!!!!!!!! primes: {:?}", five); 
    //let a = prime_factors(n, primes);
    vec![]
}

#[allow(dead_code)]
#[allow(unused_variables)]
fn prime_factors(n: u64, series: Filter<RangeFrom<u64>, u64>) -> Vec<u64> {
    match (n, series) {
        (1, _)  => vec![],
        (m, ps) => {
            let (q, r) = (m/2, m/2);
            vec![]
        }
    }
}

// \TODO

#[cfg(test)]
mod tests {

    use super::*;

    #[test]
    //#[should_panic(expected="assertion failed")]
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
    fn factors_repeating() { // TODO: this is not what I wanted
        factorize_fun(12);
        assert_eq!(factorize(12), vec![2, 2, 3]);
    }

    #[test]
    fn example() {
        assert_eq!(largest_prime_factor(13195), 29);
    }

    #[test]
    fn solution() {
        assert_eq!(largest_prime_factor(600851475143), 6857);
    }
}
