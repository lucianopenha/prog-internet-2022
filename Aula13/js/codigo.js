const btns = document.querySelectorAll(".btn");

Array.from(btns).forEach(btn => {
    btn.addEventListener("click", () => {
        execucaoBtn(btn);

    })
})
let ultBtn = "";
function execucaoBtn(bt) {
    const display = document.querySelector("#display");
    switch (bt.dataset.tipo) {
        case "numero":
            display.innerHTML += bt.dataset.valor;
            ultBtn = bt.dataset.tipo;
            break;
        case "operacao":
            if (bt.dataset.valor != "eq" &&
                bt.dataset.valor != "Clear" &&
                ultBtn != "operacao") {
                display.innerHTML += bt.dataset.valor;
                ultBtn = bt.dataset.tipo;

            }

            break
    }


}