public void setup() 
{
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord) {
    String[] vowels = {"a", "e", "i", "o", "u"};
    if(sWord.length() > 1 && sWord.substring(0, 2).equals("qu")) {
        return -2;
    }
    for(int i = 0; i < sWord.length(); i++) {
        for(int x = 0; x < vowels.length; x++) {
            if(sWord.substring(i, i + 1).equals(vowels[x])) {
                return i;
            }
        }
    }
    return -1;
}


public String pigLatin(String sWord)
{
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else if(findFirstVowel(sWord)==-2)
  {
    return sWord.substring(2,sWord.length())+"quay";
  }
  else if(findFirstVowel(sWord)==0)
   return sWord + "way";
   else return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0, findFirstVowel(sWord)) + "ay";
}
