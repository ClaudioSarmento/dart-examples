import 'dart:io';



void main() {
double valoringreco = 12;
double dinhero = 100.00;

print ("$dinhero\n");

stdout.write("Digite sua idade");
String? entradaidade = stdin.readLineSync();
int idade = int.parse(entradaidade ?? "0");


stdout.write("Voce quer comprar um ingreço (sim/não)???");
String? ingreco = stdin.readLineSync();

if(ingreco == "sim"){
  dinhero - valoringreco; 
  print("Slado atual $dinhero");
}


bool Liberado = (idade >= 16 && ingreco == "sim" );



if (Liberado == true){

print("Liberado para entrada");

}
else{
  print("Opa rapa cade o ingraço");


}



}