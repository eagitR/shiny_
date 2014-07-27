library(shiny)

shinyServer(function(Input,Output){
        Output$name<-renderText(paste(sample(strsplit(Input$text1,split="")[[1]]),sep="",collapse="")) 
        reactive(if (Input$num1>20 && Input$num1<30) {
                Output$message<-renderText("Have fun!")
        } else if (Input$num1>=30 && Input$num1<=40) {
                Output$message<-renderText("Hurry up!")
        } else {
                Output$message<-renderText("Enjoy!")
        })
        
})






