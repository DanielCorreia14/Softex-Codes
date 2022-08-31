function notaAluno(){
    var nota1 = parseFloat(document.getElementById("nota 1").value);
    var nota2 = parseFloat(document.getElementById("nota 2").value);

    var notamin;

    notamin = (nota1+nota2);
    var x = 21 - notamin;
    alert("a nota que precisará tirar para passar com 7 eh:"+x);
    
}
