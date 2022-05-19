const getArea = new Function("width", "height", "return width*height/2");

console.log("底辺3　高さ5の三角形");
console.log(getArea(3, 5));