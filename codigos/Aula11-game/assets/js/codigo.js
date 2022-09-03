const mario = document.querySelector("#mario");
const cano = document.querySelector("#pipe");
const loop = setInterval(()=>{
    if (cano.offset <= 98){
    cano.styleElementsByClassName.animation = "nome";
    cano.style.offsetleft;

},100);

document.addEventListener("keypress", (event)=>{
    mario.classList.add("jump")
    setTimeout(()=>{
        mario.classList.remove("jump");

    },1000);
})