var game = {
  startTime: Date.now(),
  displayArea: document.getElementById('display-area'),
  onkeydown: function () {
    var currentTime = Date.now();
    var seconds = (currentTime - game.startTime) / 1000;
    if (9.5 <= seconds && seconds <= 10.5) {
      game.displayArea.innerText = `${seconds} 秒でした。すごい！`;
    } else {
      game.displayArea.innerText = `${seconds} 秒でした。残念。。。`;
    }
  },
};

// function start() {
//   game.startTime = Date.now();
//   document.body.onkeydown = stop;
//   console.log('スタートしました');
// }

// function stop() {
//   var currentTime = Date.now();
//   var seconds = (currentTime - game.startTime) / 1000;
//   if (9.5 <= seconds && seconds <= 10.5) {
//     game.displayArea.innerText = `${seconds} 秒でした。すごい！`;
//   } else {
//     game.displayArea.innerText = `${seconds} 秒でした。残念。。。`;
//   }
// }


if (confirm('OK を押して 10 秒だと思ったら何かキーを押して下さい')) {
  // start();
  document.body.onkeydown = game.onkeydown;
}