function printDataById(id){
    const elm = document.getElementById(id);
    console.log(elm.value + "さん、こんにちは！")
}

function printSelectedDataByName(name){
    const elm = document.getElementsByName(name);
    for (let i=0; i<elm.length; i++){
        if (elm[i].checked){
            console.log(elm[i].value + "が選択されています")
        }
    }
}

function printSelectedDataOne(id){
    const elm = document.getElementById(id);
    console.log(elm.value + "が選択されています")
}

function printSelectedDataMulti(id){
    const elm = document.getElementById(id).options;
    let hobby = ""
    for (let i=0; i<elm.length; i++){
        if (elm[i].selected){
            if (hobby != ""){
                hobby += "と"
            }
            hobby += elm[i].value;
        }
    }
    console.log(hobby + "が選択されています")
}

printDataById("customer");
printSelectedDataByName("color");
printSelectedDataOne("bloodtype");
printSelectedDataMulti("hobby");
