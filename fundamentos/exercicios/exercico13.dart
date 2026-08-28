void configurarIconeApp({


       required String nomeApp,
        required String corDeFundo,
        bool iconeEm2D = true

}){

print ("$corDeFundo");
print("$nomeApp");
if (iconeEm2D == true ){
print("O icone é tipo um plano quadrdo ");
}
else{
  print("OOOOOOOOOOO é 3D");
}


}


void main(){

configurarIconeApp(nomeApp: "Neginhos", corDeFundo: "Azul");

}