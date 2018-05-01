//: Playground - Fuel consumption calculator

import UIKit


//Make function for calculating average fuel consumption in liters  per 100 km.
func averageFuelConsump(distance: Double, carConsumption: Double) -> String{
    let averageFuel = (carConsumption/100) * distance
    return "\(averageFuel.description) liters"
}

//test average fuel
print(averageFuelConsump(distance: 800, carConsumption: 7.5))

//Make function that is used for adding distance, amount of fuel and date of fueling (as string). Calculate average fuel consumption between the current and the last fueling.

func calcAverageFuelBetweenFueling(distance: Double, amountOfFuel: Double,
    //convert entered last day
    dateOfFueling: String) -> String{
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    let strToDate = dateFormatter.date(from:dateOfFueling)
    

    //current time
    let date = Date()
    //let calendar = Calendar.current
    
//    let currentYear = calendar.component(.year, from: date)
//    let currentMonth = calendar.component(.month, from: date)
//    let currentDay = calendar.component(.day, from: date)
    
    
    return(" Between \(strToDate!.description) and \(date) you have driving distance \(distance) and fuel consumption is: \(amountOfFuel) litres")
}

//let date = Date()
//let calendar = Calendar.current
//let components = calendar.dateComponents([.year, .month, .day], from: date)
print(calcAverageFuelBetweenFueling(distance: 100.0, amountOfFuel: 100.0, dateOfFueling: "2017-12-12"))

//Make function for converting l/100km to mpg

func convertLiterPerKmTompg(literPerKm: Double) -> String{
    let mpg = (100*3.785411784) / (1.609344 * literPerKm)
    
    
    return "\(mpg.description) mpg"
}

//test convertLiterPerKmTompg
print(convertLiterPerKmTompg(literPerKm: 45.0))

//Make function for calculating the average price per kilometer on given fuel price per liter.
func calculateAvergePriceOfKilometer(fuelPricePerLiter: Double, carConsumption: Double) -> Double{
    let literForOneKilometer = (carConsumption/100)
    let priceForOneKm = literForOneKilometer * fuelPricePerLiter
    
    return priceForOneKm
}

//test fuel price per liter
print(calculateAvergePriceOfKilometer(fuelPricePerLiter: 2.54, carConsumption: 7.5))

//Make a function to print information about fuel consumption and the date of fueling.
func printFuelConsumpDataOfFueling(fuelConsumption: String, dateofFueling: String) -> String{
    return "Fuel consumption is: \(fuelConsumption), last date of fueling: \(dateofFueling) "
}

//Consider that the tank is being filled from empty to full and the input values are liters and kilometers.

func carTankFilled(liters: Double, kilomers: Double){
    let maxLiters = 50.0
    let maxKilometers = 500.0
    
    if (liters >= maxLiters) && (kilomers >= maxKilometers) {
        print("The tank is full")
    }
}
