use std::env;
use std::fs::read_to_string;
use std::io;

pub fn part_one(input: &str) -> Option<u32> {
    let mut left = Vec::new();
    let mut right = Vec::new();

    for line in input.lines() {
        let mut nums = line.split_whitespace().map(|x| x.parse::<i32>().unwrap());
        left.push(nums.next().unwrap());
        right.push(nums.next().unwrap());
    }

    left.sort_unstable();
    right.sort_unstable();

    Some(left.iter().zip(right.iter()).map(|(l, r)| (*l - *r).abs() as u32).sum())
}

fn main() -> io::Result<()> {
    let args: Vec<String> = env::args().collect();
    if args.len() != 2 {
        eprintln!("Usage: {} <input_file>", args[0]);
        std::process::exit(1);
    }

    let input = read_to_string(&args[1])?;
    println!("{}", part_one(&input).unwrap());
    Ok(())
}
