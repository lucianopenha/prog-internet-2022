const disp = document.getSelection("display");
const disp = document.getElementById("#display");
//Aqui estou selecionando todos os elementos da classe que estão usando a classe btn
const btns = document.getElementsByClassName("btn");

function minhafuncao(){

    const disp = document.getElementById("display");
    alert("O valor do display é " + disp.innerHTML);
    disp.innerHTML = "Alterei o conteúdo!";
}
console.log(btns);
Array.from(btns).forEach(btn => {
    console.log(btn);
    btn.addEventListener("click",()=>{
    alert("Voce clocou no btn" + btn.dataset.valor);
    disp.innerHTML = btn.dataset.valor;
    })
    
});

//for(let i=0;i<btns.length;i++)){
    // let btn=btns[i];
    // btn.addEventListener ("Clique ")
// alert