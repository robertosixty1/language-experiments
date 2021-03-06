use std::io;
use rand::Rng;
use std::cmp::Ordering;
use colored::*;

fn main() {
    println!("Guess the number!");

    let mut attempts: u32 = 0;

    let secret_number = rand::thread_rng().gen_range(0, 100);
    println!("The secret number is {}", secret_number);

    loop {
        println!("Please input your guess.");
        let mut guess = String::new();

        io::stdin()
            .read_line(&mut guess)
            .expect("Failed to read line");

        let guess: u32 = match guess.trim().parse() {
            Ok(num) => num,
            Err(_)  => { println!("Please type a number"); continue },
        };

        println!("You guessed {}", guess);

        match guess.cmp(&secret_number) {
            Ordering::Less    => println!("{}", "Too small!".red()),
            Ordering::Greater => println!("{}", "Too big!".red()),
            Ordering::Equal   => {
                println!("{}", "You win!".green());
                println!("{}{}", "Attempts ".blue(), attempts);
                break;
            },
        }

        attempts += 1;
    }
}
