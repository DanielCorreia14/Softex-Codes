import java.lang.Cloneable;
import java.util.ArrayList;
import java.util.List;
public abstract class Veiculo implements Cloneable{

    public Veiculo(String modelo,String marca,String cor, int nrodas){
    this.modelo=modelo;
    this.marca=marca;
    this.cor=cor;
    this.nrodas=nrodas;
    }
    public Object clone()throws CloneNotSupportedException{  
        return super.clone();  
        }  
}

public class Moto extends Veiculo{
    public Moto(double cilindrada, String tipo){
        super(modelo, marca, cor, nrodas);
    }
}
public class Van extends Veiculo{
    public Van(int qtdeixos, int qtdbancos){
        super(modelo, marca, cor, nrodas);
    }
}



public class Aplicacao implements Cloneable{

    public Object clone()throws CloneNotSupportedException{  
        try{
            for(int j = 0; i<=6; i++){
        clone(m1.Moto);
        return (m1.clone());
        }}catch (CloneNotSupportedException c) {}
        try{
            for(int j = 0; i<=6; i++){
        clone(v1.Van);
        return (v1.clone());
        }}catch (CloneNotSupportedException c) {}
    }
    {for(int i = 0; i<=6; i++){
        try {
         Moto m1[] = new Moto(100,"yahama", "motocross","honda","azul",2 );    
        } catch (CloneNotSupportedException c) {}
    }
    for(int x = 0; i<=6; i++){
        try {
         Van v1[] = new Van(4,12, "sprinter","mercedes","cinza",6 );    
        } catch (CloneNotSupportedException c) {}
       
    }
}
@Override
public String toString() {
    
    return super.m1.clone();
    return super.v1.clone();
}

}
    




