
#[allow(dead_code)]
pub fn last(v: &Vec<i32>) -> i32 {

    match v.split_first() {
        None => panic!("last on empty list"),
        Some((&head, tail)) => {
            if tail.is_empty() {
                head
            } else {
                let v2 = tail.to_vec();
                last(&v2)
            }
        }
    }
}

#[cfg(test)]
mod tests {

    use super::*;

    #[test]
    fn test() {
        let v = vec![1, 2, 3, 4, 5];
        assert_eq!(last(&v), 5);
    }
}
