import java.util.*;
class Temo
{
  public static boolean flag=true;
}
class A extends Thread
{
  public int i=0;
  public void run()
  {
   // public int i=0;
    while(Temo.flag)
    {
      i++;
    }
  }
}

 class Dcoder
 {
   public static void main(String args[])
   { 
     int i;
    System.out.println("Hello, Dcoder!");
    A a=new A();
    A b=new A();
    A c=new A();
    a.setPriority(1);
    b.setPriority(5);
    c.setPriority(10);
    a.start();
    b.start();
    c.start();
    
    for(i=0;i<1000000;i++)
    {
      
    }
    Temo.flag=false;
    System.out.println("Iteration are"+a.i);
    System.out.println("Iteration are"+b.i);
    System.out.println("Iteration are"+c.i);
   // thread are manmauji
   }
 }
