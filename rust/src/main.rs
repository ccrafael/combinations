use combinations::Combinations;
use std::io;

fn main() {
    let mut input = String::new();

    print!("n = ");
    io::stdout().flush().unwrap();
    io::stdin().read_line(&mut input).unwrap();
    let n: usize = input.trim().parse().unwrap();
    input.clear();

    let mut arr = Vec::new();
    print!("{} chars) ", n);
    io::stdout().flush().unwrap();
    io::stdin().read_line(&mut input).unwrap();
    let chars: Vec<char> = input.trim().chars().collect();
    for i in 0..n.min(chars.len()) {
        arr.push(chars[i]);
    }
    input.clear();

    print!("t = ");
    io::stdout().flush().unwrap();
    io::stdin().read_line(&mut input).unwrap();
    let t: usize = input.trim().parse().unwrap();

    let mut combs = Combinations::new(arr, t);

    while combs.has_next() {
        let comb: Vec<char> = combs.next();
        let s: String = comb.into_iter().collect();
        println!("{}", s);
    }
}

trait Flush {
    fn flush(&mut self) -> std::io::Result<()>;
}

impl<W: std::io::Write> Flush for W {
    fn flush(&mut self) -> std::io::Result<()> {
        W::flush(self)
    }
}
