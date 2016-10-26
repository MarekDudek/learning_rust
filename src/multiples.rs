
#[allow(dead_code)]
pub fn multiples(upper_bound: i64) -> i64 {
    let range = 0..upper_bound;
    let divisible = range.filter(|x| x % 3 == 0 || x % 5 == 0);
    let mut sum = 0;
    for x in divisible {
        sum = sum + x;
    }
    sum
}

#[allow(dead_code)]
pub fn multiples_fun(upper_bound: i64) -> i64 {
    let divisible = (0..upper_bound).filter(|x| x % 3 == 0 || x % 5 == 0);
    divisible.fold(0, |sum, x| sum + x)
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
