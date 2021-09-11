void main(){
    // 1st problem: output => 33
    print(sum(22,11));
    // 2nd problem: output => 101
    print(max(22,101,100));
    // 3rd problem: output => 1
    print(repeated_char("Hello"));
    // 4th and 5th problems: output => cities list
    var cities = ["Cairo", "Giza", "Alex"];
    print_for_each(cities);
    print_for_in(cities);
    // 6th problem: output => 1250.0
    print(taxes(income: 5000));
}
// Return the sum of bith entered numbers
int sum(var a, var b)
{
    return a+b;
}
// Get the maximum number of three
int max(int a, int b, int c)
{
    if(a>b && a>c)
    {
        return a;
    }
    
    if(b>a && b>c)
    {
        return b;
    }
    
    if(c>b && c>a)
    {
        return c;
    }
}
// Count number of repeated character
int repeated_char(String word)
{
    var count = 0;
    for(var i = 0; i < word.length; i++)
    {
        for(var j = i+1; j < word.length; j++)
        {
            if(word[i] == word[j])
            {
                count++;
                break;
            }
        }
    }
    return count;
}
// Printing using forEach
void print_for_each(List l)
{
    l.forEach((i) => print(i));
}
// Printing using for in
void print_for_in(List l)
{
    for(var i in l)
    {
        print(i);
    }
}
// Calculating the taxes with default income value 1500
int taxes({int income: 1500})
{
    if(income <= 1500)
    {
        return income*0.1;
    }
    else if(income > 1500 && income <10000)
    {
        return income*0.25;
    }
    else 
    {
        return income*0.5;
    }
}
