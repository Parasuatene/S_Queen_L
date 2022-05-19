function calc(x, y){
    if ((typeof x != "number") || (typeof y != "number")){
        console.log("数値を入力してください");
    }
    else if (y == 0){
        console.log("割る数に0を入れてはいけません")
    }
    else{
        console.log(x / y)
    }
}

console.log("xに文字列を入れた場合");
calc("a", 5);
console.log("yに文字列を入れた場合");
calc(5, "a");
console.log("yに0を入れた場合");
calc(5, 0);
console.log("x=20,y=5を入れた場合");
calc(20, 5);