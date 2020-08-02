var age = 16;
var isMember = true;
var result = null;

var price = 0;

// 15 歳以下は 800 円
if (age <= 15) {
  price = 800;
}
// 15 歳以下かつ会員の場合には、 800 円 になる
if (age <= 15 && isMember) {
  price = 800;
}

// ポイント会員の場合には 1000 円
if (isMember) {
  price = 1000;
}

// そうではない場合には 1800 円
if (age > 16 && !isMember) {
  price = 1800;
}

function getPrice(age, isMember) {
  var price = 0;
  if (age <= 15) {
    price = 800;
  } else if (isMember) {
    price = 1000;
  } else {
    price = 1800;
  }
  return price;
}

result = getPrice(age, isMember);
document.write(result);