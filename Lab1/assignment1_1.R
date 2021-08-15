#WAP in R to find the highest of three numbers.

{
     a <- as.integer(readline(prompt = "Enter first number :"))
     b <- as.integer(readline(prompt = "Enter second number :"))
     c <- as.integer(readline(prompt = "Enter third number :"))
     
     if (a > b && b > c) 
	{
	         print(paste("Greatest is :", a))
        } 
     else if (b > c) 
	{
         print(paste("Greatest is :", b))
        } 
     else
	{
         print(paste("Greatest is :", c))
        }
     
}

