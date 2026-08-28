import 'dart:io';


void main(){

stdout.write("Digite sua idade");
String? entradaidade = stdin.readLineSync();
int nota = int.parse(entradaidade ?? "0");

if (nota >= 6){
  print ("oassou de anor");

}

else{
print ("Caraca tu ´é burro em po");
}

}