let currentFloor = 0;
let basementPosition: number = 1;

const inputString: string = await Bun.file("input.txt").text();
// const inputString = ")";

let inputArray = inputString.split("");

inputArray.every((element) => {
  switch (element) {
    case "(":
      currentFloor += 1;
      break;

    case ")":
      currentFloor -= 1;
      break;
  }
  if (currentFloor < 0) {
    return false;
  }
  basementPosition += 1;
  return true;
});

console.log(basementPosition);
