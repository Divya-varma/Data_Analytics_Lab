#WAP in R to find the sum of n natural numbers with formula
{
num = as.integer(readline(prompt = "Enter a number: "))
if(num<0) {
  print("Enter a positive no")
}
else
{
  sum=(num*(num+1))/2;
  print(paste("The sum is ", sum))
}
}


