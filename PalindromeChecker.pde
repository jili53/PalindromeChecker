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
    String noSpace = new String();
    for(int i = 0; i<word.length(); i++)
  {
    if(word.charAt(i)!= ' ')
    noSpace = noSpace + word.charAt(i);
    
  }
  String letters = new String();
   for(int i=0; i<noSpace.length(); i++)
  {
    if(Character.isLetter(noSpace.charAt(i)))
    letters = letters + noSpace.charAt(i);
  }
  letters = letters.toLowerCase();
  if(letters.substring(0).equals(reverse(letters).substring(0)))
  return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
  String sam;
  for(int i= str.length()-1; i>=0;i--)
  {
    sam = new String(str.substring(i, i+1));
    sNew = sNew + sam;
  }  
    return sNew;
}