public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public String onlyLetters(String sString){
  String letters = "";
  for (int i = 0; i < sString.length(); i++){
    if (Character.isLetter(sString.charAt(i)) == true)
      letters = letters + sString.charAt(i);
    }
  return letters;
}

public boolean palindrome(String word)
{
  String lettersOnly = onlyLetters(word);
  lettersOnly = lettersOnly.toLowerCase();
  String backwards = reverse(lettersOnly);
  if (backwards.equals(lettersOnly)){
    return true;
  }
  return false;
}

public String reverse(String str)
{
  String sNew = new String();
  int x = str.length() - 1;
  for (int i = x; i >= 0; i--){
    sNew = sNew + str.substring(i, i + 1);
  }
  return sNew;
}
