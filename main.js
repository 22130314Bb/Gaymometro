while (true) {
    nome = prompt("Digite um nome: ")
    alert(gay(nome))
}

function gay(name) {
    return `${name} é ${(Math.random() * 100).toFixed(0)}% gay`
}