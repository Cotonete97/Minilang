fn fatorial(n: int) -> int {
    if (n <= 1) {
        return 1;
    } else {
        return n * fatorial(n - 1);
    }
}
fn main() -> int {
    var x: int = 5;
    print(fatorial(x));
    return 0;
}