// Buscando componentes
// Buscando o formulário do documento
const form = document.querySelector("form");
const btnPesqCep = document.querySelector("#pesqCep");
const cmpCep = document.querySelector("#cep");
const cmpCidade = document.querySelector("#cidade");
const cmpEndereco = document.querySelector("#endereco");
const cmpEstado = document.querySelector("#estado");
const cmpBairro = document.querySelector("#bairro");

// Colocando o eventos
form.addEventListener("submit",(evt)=>testarFormulario(evt,form));
btnPesqCep.addEventListener("click",()=>{
  alert("pesquisando o cep e preenchendo os valores! :-)");

  if (cmpCep.value != ""){
    pesquisaCep(cmpCep.value).then(retornoCep=>{
      if (retornoCep!=null){
        cmpEndereco.value = retornoCep.logradouro;
        cmpBairro.value = retornoCep.bairro;
        cmpCidade.value = retornoCep.localidade;
        cmpEstado.value = retornoCep.uf;
      }
    })
  }
})

// Funções do sistema
// Criando a função para testar os dados de envio do formulário
function testarFormulario(evento,frm){
  let ret = false;
  // esta linha abaixo é para evitar o envio do formulario se as linhas 
  // de baixo estiverem com erro
  // 
  evento.preventDefault();
  // fazer os testes aqui
  const nome = document.querySelector("#nome");
  const msgErros = document.querySelector(".msErros");
  //Limpando mensagem de erro
  msgErros.innerHTML = "";
  Array.from(document.querySelectorAll(".show")).forEach(it=>{ 
    it.classList.remove("show");
  })

  // O campo msErros vai ser preenchido conform os erros
  if (nome.value==""){
  msgErros.innerHTML += "<li>campo nome Deve ser preenchido!</li>";
  }

  // Podemos testar pelo formulario que é passado na função

  if (nome.value=="")msgErros.innerHTML += "<li>Campo Nome deve ser preenchido!</li>"
  // Depois que testar todos so componentes, se a msg Erros estiver em branco
  // significa que nao temos erros
  if(frm["cpf"].value=="")
  msgErros.innerHTML += "<li>Campo CPF deve ser preenchido!</li>"
  if (frm["nascimento"].value=="")
  msgErros.innerHTML += "<li>Campo Data Nascimento Deve ser Preenchido!</li>"
  if (!ret) 
    evento.preventDefault();
  else
    alert("Gravado com sucesso");
}
// Função de pesquisa de cep
async function pesquisaCep(cep){
  return new Promise(async (resolve, reject)=>{
    let url=`https://viacep.com.br/ws/${cep}/json/`;
    fetch(url).then(res=>res.json()).then(out=> {
      resolve(out);
    }).catch(erro=>{reject(erro)})
  
  }) 
}