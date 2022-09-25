class Computer{
    constructor(ram,hdd,cpu,type){
        this.ram = ram;
        this.hdd = hdd;
        this.cpu = cpu;
        this.type = type;
    }


static Factory = function (){ 

        if (type == "PC") {
            return new Pc(ram,hdd,cpu,type)
        } else if (type == "Server") {
            return new Server(ram,hdd,cpu,type);
        } 
    }


//get
get ram () {
    return this.ram;
}
get getHdd () {
    return this.hdd;
}
get getCpu () {
    return this.cpu;
}
get getType () {
    return this.type;
}
//set
setRam (ram) {
    this.ram = ram;
}
setHdd (hdd) {
    this.hdd = hdd;
}
setCpu (cpu) {
    this.cpu = cpu;
}
setType (type) {
    this.type = type;
}
    toString(){
        console.log("ram: "+this.ram, "hdd: "+this.hdd, "cpu: "+this.cpu, "type: "+this.type)
    }
}
function run() {

    let pc = Computer.Factory(32, 500, 400, "PC");
    let server = Computer.Factory(8, 5000, 2000, "Server");

    console.assert(pc instanceof PC);
    console.assert(server instanceof Server);
    pc.setHdd(550)
    server.setHdd(4500)
    server.toString()
    pc.toString()    
}
