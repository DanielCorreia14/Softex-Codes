function notaAluno(){
    var nota1 = parseFloat(document.getElementById("nota 1").value);
    var nota2 = parseFloat(document.getElementById("nota 2").value);
    var nota3 = parseFloat(document.getElementById("nota 3").value);
    var media = ((nota1+nota2+nota3)/3);
    
    media > 7 ? "aprovado" : reprovado;
    
}
    
