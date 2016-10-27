

#[allow(dead_code)]
pub fn fibonacci(i: u64) -> u64 {
    match i {
        0 => 0,
        1 => 1,
        n => fibonacci(n - 2) + fibonacci(n - 1),
    }
}

#[allow(dead_code)]
pub fn sum_of_even_fibonacci_up_to(n: u64) -> u64 {
    let mut sum = 0;
    let mut i = 0;
    let mut fib = 0;
    while fib <= n {
        if fib % 2 == 0 {
            sum = sum + fib;
        }
        fib = fibonacci(i);
        i = i + 1;
    }
    sum
}

#[allow(dead_code)]
pub fn sum_of_even_fibonacci_up_to_fun(threshold: u64) -> u64 {
    let integrals = 0..;
    let fibonacci = integrals.map(|i| fibonacci(i));
    let even = fibonacci.filter(|f| f % 2 == 0);
    let up_to = even.take_while(|f| f <= &threshold);
    up_to.fold(0, |sum, n| sum + n)
}


#[cfg(test)]
mod tests {

    use super::*;

    #[test]
    fn first() {
        assert_eq!(fibonacci(0), 0);
    }

    #[test]
    fn second() {
        assert_eq!(fibonacci(1), 1);
    }

    #[test]
    fn remote() {
        assert_eq!(fibonacci(12), 144);
    }

    #[test]
    fn sum_up_to_ten() {
        assert_eq!(sum_of_even_fibonacci_up_to(10), 10);
    }

    #[test]
    fn sum_up_to_four_million() {
        assert_eq!(sum_of_even_fibonacci_up_to(4000000), 4613732);
    }

    #[test]
    fn sum_up_to_four_million_fun() {
        assert_eq!(sum_of_even_fibonacci_up_to_fun(4000000), 4613732);
    }
}
