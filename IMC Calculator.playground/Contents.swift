import UIKit

var str = "Hello, playground"
var mass = 50.00, height = 1.90


func BMICalculator(mass: Double, height: Double)->Double
{
    print("Entro a la funcion")
    return (mass/pow(height, 2))
}

func fibonaccio(unitl: Int)
{
    var  numAnterior = 0, number = 1
    var num = 0
    for _ in 1...unitl
    {
        
        num = number + numAnterior
        print(num)
        numAnterior = number
        number = num
        //print("numero Actual \(number)")
        //print("numero Anterior \(numAnterior)")
        //print(num)
        
    }
    
}

var BMI = BMICalculator(mass: mass, height: height)
if BMI > 25
{
    print("Estas Gordito \(BMI)")
}
else if BMI <= 25 && BMI > 18.5
{
    print("Estas Normalito \(BMI) ")
}
else
{
  print("Estas muy flaco come mas \(BMI)")
}

fibonaccio(unitl: 10)
