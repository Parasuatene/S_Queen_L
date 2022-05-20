window.onload = function(){
    document.getElementsByName("question")[0].onclick = function(){
        const elm = document.getElementsByName("interest");
        const name = document.getElementById("name").value;
        if (elm[0].checked){
            alert(name + "さん、回答ありがとうございます！ぜひ一緒に山登りしましょう");
        }else{
            alert(name + "さん、回答ありがとうございます！残念です、ほかにも興味があれば教えてください！");
        }
    };
};
