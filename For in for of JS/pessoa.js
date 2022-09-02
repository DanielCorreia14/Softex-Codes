let pessoa = {
    cpf:99999999988,
    rg:9999888,
    estado:'PE',
    cidadania:'brasileira'
};

const x = [161,299,361,361,299,161,361,299,161];


for(const prop in pessoa){
    console.log(prop);
}

for(const y of x){
    console.log(y);
}
