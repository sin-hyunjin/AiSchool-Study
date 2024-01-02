/* 
STEP 1. moveLeft 함수를 선언한다/ 
    1-1)id 가 horse인 말을 가져와서
    1-2) moveLeft함수가 호출 될 떄마다, 그말을 왼쪽으로 50px 씩이동
      단, 말이 배경을 벗어나지 않도록 할 것

STEP 2. moveRight 함수를 선언한다/ 
    2-1)id 가 horse인 말을 가져와서
    2-2) moveRight함수가 호출 될 떄마다, 그말을 오른쪽으로 50px 씩이동
      단, 말이 배경을 벗어나지 않도록 할 것

STEP 3. 왼쪽 버튼을 누를 떄 마다, moveLeft함수를 호출
STEP 4. 오른쪽 버튼을 누를 떄 마다, moveRight함수를 호출

주의할점 !
a. btn left는 하나의 클래스 이름이 아니라,btn이라는 클래스
   left 라는 클래스 둘다 포함
b. 왼쪽으로 이동하든, 오른쪽으로 이동하든 결국 선은 하나로 이어져있다. 출발선도 하나
*/

let $horse = $("#horse");
let $bg = $("#bg");
let num = 0;

const moveLeft = () => {
  num += 50;
  if (num <= 1200) {
    $horse.css({
      right: num + "px",
    });
  }
};
const moveRight = () => {
  if (num > 0) {
    num -= 50;
    $horse.css({
      right: num + "px",
    });
  }
};
const moveJunp = () => {
  $horse
    .stop()
    .animate({ bottom: "250px" }, 400)
    .animate({ bottom: "200px" }, 500);
};

$(".left").on("click", moveLeft);
$(".right").on("click", moveRight);
// 추가!
// (1) 마우스가 아니라 키보드를 통해서 말을 이동시켜보자!
$("body").on("keydown", (e) => {
  console.log("key down", e.key);
  if (e.key === "ArrowLeft") {
    moveLeft();
  } else if (e.key === "ArrowRight") {
    moveRight();
  } else if (e.key === " ") {
    moveJunp();
  }
});
