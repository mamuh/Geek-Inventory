function fadeIt() {
  var banner = document.querySelector(".home-header").offsetTop;
  window.onscroll = function() {
    if (window.pageYOffset > 0) {
    var opac = window.pageYOffset / banner;
    document.querySelector(".banner").style.backgroundImage = `
    linear-gradient(rgba(200, 200, 200, ${opac}), rgba(255, 255, 255, ${opac}),
    url('https://i.redd.it/5b1vg0i66hv01.png')
    `
    }
  }
}

export { fadeIt };
