
#[allow(dead_code)]
#[allow(unused_variables)]
pub fn factorize_fun(n: u64) -> Vec<u64> {
    let primes = (1..).filter(|&n| is_prime(n));
    let five = primes.take(5).collect::<Vec<u64>>();
    // print!("!!!!!!!! primes: {:?}", five);
    // let a = prime_factors(n, primes);
    vec![]
}

#[allow(dead_code)]
#[allow(unused_variables)]
#[allow(unused_mut)]
fn prime_factors(n: u64, factors: Vec<u64>) -> Vec<u64> {
    match (n, factors) {
        (1, _) => vec![],
        (m, fs) => {
            let mut f = fs[0];
            let (q, r) = quot_rem(m, f);
            if m < f * f {
                return vec![m];
            } else if r == 0 {
                let mut f_vec = vec![f];
                let mut rest = prime_factors(q, fs);
                //let f_vec: Vec<u64> = f_vec.append(&mut rest);
                //return f_vec;
                    
            } else {
                let f2: Vec<u64> = prime_factors(m, fs);
                return f2;
            }
            vec![]
        }
    }
}

