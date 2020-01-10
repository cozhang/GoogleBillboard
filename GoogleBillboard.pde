public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
    String y=e.substring(0,1)+e.substring(2,12);
    double x=Double.parseDouble(y);
    if(isPrime(x)){
    	System.out.println("The first ten digit prime found in consecutive digit of e = " + x);
    }
    for(int i=2; i<e.length()-10; i++){
    	y=e.substring(i,i+10);
    	x= Double.parseDouble(y);
    	if(isPrime(x)){
    		System.out.println("The first ten digit prime found in consecutive digit of e = " + x);
    		break;
    	}
    }
}  
public void draw()  
{   
	//not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
    if(dNum<2){
    	return false;
    }
    for(int i=2; i<=Math.sqrt(dNum);i++){
    	if(dNum%i==0){
    		return false;
    	}
    }   
    return true;  
} 
