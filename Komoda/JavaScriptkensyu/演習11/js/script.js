function printDataByname(name){
    const elm = document.getElementsByName(name);
    for (let i=0; i<elm.length; i++){
        console.log((i + 1) + "位:" + elm[i].innerText);
    }
}

printDataByname("ranking");