
#[allow(dead_code)]
pub fn multiples() -> i64 {
    23
}


#[cfg(test)]
mod tests {
    
    use super::*;

    #[test]
    fn example_data() {
        assert_eq!(multiples(), 23);
    }
}
