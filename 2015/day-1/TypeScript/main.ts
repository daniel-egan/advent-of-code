let currentFloor = 0;

const inputString: string = await Bun.file("input.txt").text();
// const inputString = ")())())";

let inputArray = inputString.split("");

inputArray.forEach((element) => {
  switch (element) {
    case "(":
      currentFloor += 1;
      break;

    case ")":
      currentFloor -= 1;
      break;
  }
});

console.log(currentFloor);
