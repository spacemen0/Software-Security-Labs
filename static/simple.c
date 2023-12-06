int abs(int a){
  if(a < 0)
    return -a;
  return a;
}

int bar(int b){

  if(b==2){
    return 5;
  }
  return 10;
}


int foo(){
  int i=read();
  if(i!=0)
    return bar(1/abs(i));
  return 0;
}
