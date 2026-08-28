class Aplicativo{ 

  String nome = "";
  int dowloads = 0;
  bool free = true;
  bool AppFav = false;
}


void main (){

Aplicativo app = Aplicativo();
app.nome = "Terabando"; 
app.dowloads = 12;

if (app.AppFav  == true && app.free == true){
  print("Seu aplicativo favorito tem nome $app.nome com $app.dowloads e é de graça :) ");
}

else{
  print ("Lixo imundo");
}

}