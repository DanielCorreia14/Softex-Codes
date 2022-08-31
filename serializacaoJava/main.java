import Java.io.serializable


FileOutputStream sistemaAcademia = new FileOutputStream (C:\Users\SistemaCentral);
ObjectOutputStream obj = new ObjectOutputStream (sistemaAcademia);
obj.writeObject(LoginSenha);
obj.close();

FileInputeStream sistemaAcademia = new FileInputStream(C:\Users\SistemaCentral);
ObjexctInputStream obj = new ObjectOutputStream (sistemaAcademia);
LoginSenha obj.readObject();
obj.close();


return LoginSenha

