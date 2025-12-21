import gleam/io
import simplifile

pub fn main() {
  case simplifile.read(from: "src/temp.txt") {
    Ok(contents) -> {
      io.println(contents)
      Nil
    }
    Error(e) -> {
      echo e
      Nil
    }
  }
}
