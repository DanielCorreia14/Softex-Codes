var Banco = {
    conta:10,
    saldo:550,
    tipo:"corrente",
    agencia:"banco do brasil",
    buscarSaldo: function(){
        console.log(this.saldo);
    },
    DepositoD: function (cash){
        this.saldo+=cash;
        console.log(this.saldo);
    },
    Sacar: function (saque){
        this.saldo-=saque;
        console.log(this.saldo);
    },
    numeroConta: function(){
        console.log(this.conta);
       }


    }
    Banco.buscarSaldo();
    Banco.DepositoD(100);
    Banco.Sacar(400);
    Banco.numeroConta();
    Banco.Sacar(260);
    Banco.buscarSaldo();
