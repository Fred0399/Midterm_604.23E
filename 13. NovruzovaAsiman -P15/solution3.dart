
void main() {
// int size=3; 
double total=0;
double average=0;
var number = [5.5,8.1,2.9];

// NOTE: better implementation could be, 
// the size value taken from number array via length method;
int size = number.length;


print("avarage of a list of doubles");

for(var i=0; i<size; i++)
{
total= number[i]+total;
  
}
  average=total/size;
print(average);
}