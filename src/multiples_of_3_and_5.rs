
#[allow(dead_code)]
pub fn multiples(upper_bound: i64) -> i64 {
    let range = 0..upper_bound;
    let divisible = range.filter(|n| n % 3 == 0 || n % 5 == 0);
    let mut sum = 0;
    for n in divisible {
        sum = sum + n;
    }
    sum
}

#[allow(dead_code)]
pub fn multiples_fun(upper_bound: i64) -> i64 {
    let divisible = (0..upper_bound).filter(|n| n % 3 == 0 || n % 5 == 0);
    divisible.fold(0, |sum, n| sum + n)
}

#[cfg(test)]
mod tests {

    use super::*;

    #[test]
    fn example() {
        assert_eq!(multiples(10), 23);
    }

    #[test]
    fn solution() {
        assert_eq!(multiples(1000), 233168);
    }

    #[test]
    fn example_fun() {
        assert_eq!(multiples_fun(10), 23);
    }

    #[test]
    fn solution_fun() {
        assert_eq!(multiples_fun(1000), 233168);
    }
}
