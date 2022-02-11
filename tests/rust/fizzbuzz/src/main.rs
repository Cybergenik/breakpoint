use std::borrow::Cow;

fn main(){
    for i in 1..=20{
        println!("{}", fizzbuzz(i));
    }
}

#[no_mangle]
pub fn fizzbuzz(i: u32) -> Cow<'static, str>{
    let div3 = i % 3 == 0;
    let div5 = i % 5 == 0;
   
    match (div3, div5){
        (true, true) => "FizzBuzz".into(),
        (true, false) => "Fizz".into(),
        (false, true) => "Buzz".into(),
        (false, false) => i.to_string().into(),
    }
}
