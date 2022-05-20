function calc(a){
    console.log("start");
    console.log("現在の値:" + a);
    a -= 3;
    while (a > 0){
        console.log("現在の値:" + a);
        a -= 3;
    }
    console.log("end");
}

calc(10);
calc(-4);


