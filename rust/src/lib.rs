pub struct Combinations<T> {
    combination_len: usize,
    j: usize,
    arr: Vec<T>,
    c: Vec<usize>,
}

impl<T: Clone> Combinations<T> {
    pub fn new(arr: Vec<T>, combination_len: usize) -> Self {
        if combination_len == 0 {
            panic!("combination len can not be <= 0");
        }

        let n = arr.len() ;
        print!("n = {}\n", n);

        let mut c = vec![0; combination_len + 3];

        for j in 1..=combination_len {
            c[j] = j - 1;
        }
        c[combination_len + 1] = n;

        Combinations {
            combination_len,
            j: 0,
            arr,
            c,
        }
    }

    pub fn has_next(&self) -> bool {
        self.j == 0 || self.j <= self.combination_len
    }

    fn visit(&self, indices: &[usize]) -> Vec<T> {
        let mut current = Vec::new();
        for i in 1..indices.len() - 2 {
            current.push(self.arr[indices[i]].clone());
        }
        current
    }

    pub fn next(&mut self) -> Vec<T> {
        if !self.has_next() {
            panic!("no more values");
        }

        let current = self.visit(&self.c);
        print!("before = {:?}", self.c);
        self.j = 1;
        while self.c[self.j] + 1 == self.c[self.j + 1] {
            self.c[self.j] = self.j - 1;
            self.j += 1;
        }

        if self.j <= self.combination_len {
            self.c[self.j] = self.c[self.j] + 1;
        }
        print!("after = {:?}\n", self.c);


        current
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_combinations_abc() {
        let arr = vec!['a', 'b', 'c', 'd', 'e', 'f', 'g'];
        let t = 3;
        let mut combs = Combinations::new(arr.clone(), t);
        let mut result = Vec::new();

        while combs.has_next() {
            result.push(combs.next());
        }

        // Total combinations: 7C3 = (7 * 6 * 5) / (3 * 2 * 1) = 35
        assert_eq!(result.len(), 35);

        // Check a few specific combinations
        // According to the logic in the C++ code:
        // indices c: [0, 0, 0, 0, 7] for t=3, n=7 (c size is t+2 = 5)
        // wait, let's verify the visit logic
        // indices[1] to indices[len-2]
        // for t=3, indices.len() is 5. i goes from 1 to 3.
        // i=1, 2, 3. 
        // So it takes arr[c[1]], arr[c[2]], arr[c[3]]
        
        // First combo: c[1]=0, c[2]=1, c[3]=2 -> 'a', 'b', 'c'
        assert_eq!(result[0], vec!['a', 'b', 'c']);
        
        // Last combo: 
        // n=7. c[4]=7. 
        // c[3] will eventually reach 6.
        // c[2] will reach 5.
        // c[1] will reach 4.
        // indices: [?, 4, 5, 6, 7]
        // arr[4], arr[5], arr[6] -> 'e', 'f', 'g'
        assert_eq!(result[34], vec!['e', 'f', 'g']);
    }
}
