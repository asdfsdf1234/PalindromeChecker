public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String x="";
  String z="";

  for(int i=0; i<word.length(); i++)
  {
    if(Character.isLetter(word.charAt(i))==true)
    {
        x=x+word.charAt(i);
        x=x.toLowerCase();
    }
    if(Character.isLetter(reverse(word).charAt(i))==true)
    {
        z=z+reverse(word).charAt(i);
        z=z.toLowerCase();
        
    }
  }
    if(z.equals(x))
    {
      return true;
    }
  
  return false;
}
public String reverse(String sWord)
{
    String sNew = new String();

    for(int i=0; i<sWord.length(); i++)
    {
      
        sNew=sNew+sWord.charAt(sWord.length()-1-i);
      

    }
    //System.out.println(sNew);
    return sNew;
}



