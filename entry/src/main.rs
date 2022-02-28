mod cli;

fn main() {
    let _app = cli::new().get_matches();
    println!("Input a fuzz file!");
}
