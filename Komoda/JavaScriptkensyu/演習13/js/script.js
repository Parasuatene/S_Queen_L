function updateDataById(id, txt){
    const elm = document.getElementById(id);
    elm.value = txt
}

function setCheckedDataByName(name){
    const elm = document.getElementsByName(name);
    for (let i = 0; i<elm.length; i++){
        if (elm[i].checked){
            elm[i].checked = false;
        }
    }
    elm[0].checked = true;
}

function setSelectedDataOne(id){
    const elm = document.getElementById(id).options;
    for (let i = 0; i<elm.length; i++){
        if (elm[i].selected){
            elm[i].selected = false;
        }
    }
    elm[0].selected = true;
}

function setSelectedDataMulti(id){
    const elm = document.getElementById(id).options;
    for (let i = 0; i<elm.length; i++){
        if (elm[i].selected){
            elm[i].selected = false;
        }
    }
    elm[0].selected = true;
    elm[2].selected = true;
}

updateDataById("customer", "ふるねすはなこ");
setCheckedDataByName("color");
setSelectedDataOne("bloodtype");
setSelectedDataMulti("hobby");

