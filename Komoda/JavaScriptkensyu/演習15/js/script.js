window.onload = function(){
    let element = document.getElementById("btn01");
    element.addEventListener("click",
        function(){
            const elm = document.getElementsByName("interest");
            const name = document.getElementById("name").value;
            if (elm[0].checked){
                alert(name + "さん、回答ありがとうございます！ぜひ一緒に山登りしましょう");
            }else{
                alert(name + "さん、回答ありがとうございます！残念です、ほかにも興味があれば教えてください！");
            }
        }
    );
};
