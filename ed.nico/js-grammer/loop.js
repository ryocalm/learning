for (let i = 0; i <= 1000; i++) {
  if (i % 3 === 0 && i % 5 === 0) {
    document.write("FizzBuzz (" + i + ")<br>");
  } else if (i % 3 === 0) {
    document.write("Fizz (" + i + ")<br>");
  } else if (i % 5 === 0) {
    document.write("Buzz (" + i + ")<br>");
  } else {
    document.writeln(i + "<br>");
  }
}
