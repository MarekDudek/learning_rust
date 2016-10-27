

#[allow(dead_code)]
pub fn fibonacci(i: u64) -> u64  {
    match i {
        0 => 0,
        1 => 1,
        n => fibonacci(n-2) + fibonacci(n-1)
    }
}

#[allow(dead_code)]
pub fn sum_of_even_fibonacci_up_to(n: u64) -> u64 {
    let mut sum = 0;
    let mut i = 0;
    let mut fib: u64 = 0;
    while fib <= n {
        if fib % 2 == 0 {
            sum = sum+fib;
        }
        fib = fibonacci(i);
        i = i+1;
    }
    sum
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
        assert_eq!(sum_of_even_fibonacci_up_to(4000000),4613732 );
    }
}

