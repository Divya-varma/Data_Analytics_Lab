#Write the above two programs in R using functions.

#Highest of three numbers
{
  highest_of_3_numbers <- function()
  {
    a <- as.integer(readline(prompt = "Enter first number :"))
    b <- as.integer(readline(prompt = "Enter second number :"))
    c <- as.integer(readline(prompt = "Enter third number :"))
    
    if (a > b && b > c) {
      print(paste("Greatest is :", a))
    } else if (b > c) {
      print(paste("Greatest is :", b))
    } else{
      print(paste("Greatest is :", c))
    }
  }
  
  sum_of_natural <-function()
  {
    
    num <- as.integer(readline(prompt = "Enter a number: "))
    if(num < 0) {
      print("Enter a positive number")
    } else {
      sum <- 0
      # use while loop to iterate until zero
      while(num > 0) {
        sum <- sum + num
        num <- num - 1
      }
      print(paste("The sum is", sum))
    }
  }
  
  print("1:Greatest among 3 numbers\n 2:Sum of n natural numers \n")
  choice <- as.integer(readline(prompt="Enter choice[1/2]: "))
  operator <- switch(choice,"1","2")
  result <- switch(choice, highest_of_3_numbers(), sum_of_natural())
}

