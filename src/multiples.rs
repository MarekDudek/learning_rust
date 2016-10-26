
#[allow(dead_code)]
pub fn multiples() -> i64 {
    let range = 0..10;
    let divisible = range.filter( |x| x % 3 == 0 || x % 5 == 0);
    let mut sum = 0;
    for x in divisible {
        sum = sum + x;
    }
    sum 
}


#[cfg(test)]
mod tests {
    
    use super::*;

    #[test]
    fn example_data() {
        assert_eq!(multiples(), 23);
    }
}
