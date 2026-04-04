#!/bin/bash

#addition function:
addition() {
        local num1=$1
        local num2=$2
        let sum=$num1+$num2
        echo "Sum of $num1 and $num2 is: $sum"
        echo "---------------------------------------------------"
}

#subtraction function
sub() {
        local num1=$1
        local num2=$2
        let sub=$num1-$num2
        echo "Subraction of $num1 and $num2 is: $sub"
}

#multiplicatoin function
mul() {
        local num1=$1
        local num2=$2
        let mul=$num1*$num2
        echo "Multiplication of $num1 and $num2 is: $mul"
}

#division function
divide() {
        local num1=$1
        local num2=$2
        let divide=$num1/$num2
        echo "Division of $num1 and $num2 is: $divide"
}

#starting user interaction:
echo "Hello user! here a calcutor mini project."
echo "-----------------------------------------"
echo "here choose your option:
a)Addition
b)Subtraction
c)Multiply
d)Division
------------------------------------------------"

read option

#condition to choose operator
case $option in
        a)
                read -p "provide first number: " first
                read -p "provide second number: " second
                echo "----------------------------------------------"
                addition $first $second;;

        b)      read -p "provide first number: " first
                read -p "provide first number: " second
                echo "----------------------------------------------"
                sub $first $second;;

        c)
                read -p "provide first number: " first
                read -p "provide first number: " second
                echo "----------------------------------------------"
                mul $first $second;;
        d)
                read -p "provide first number: " first
                read -p "provide first number: " second
                echo "----------------------------------------------"
                divide $first $second;;
        *)
                echo "invalid option!!!!!!!!!!!"
esac
