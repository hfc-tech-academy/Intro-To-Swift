import Foundation

var str = "Hello, World"

str

println(str)

var greeting = ["Hello", "World" ]

", ".join( greeting )

greeting[1] = "Playground"

", ".join( greeting )



// We need to specify the type because it
// can't infer it from an empty array
var name_array:[String] = []

name_array += ["Happy"]
name_array += ["Fun"]
name_array += ["Corp"]

let hfc = join("", name_array);

// What is the size of the string
countElements( hfc )
// What is the size of the array
countElements( name_array )
contains(name_array, "Fun")
dropFirst(name_array)
equal(name_array, ["Happy","Fun","Corp"])
find(name_array, "Corp")
startsWith(name_array, ["Happy", "Fun"] )
join(":", name_array)
name_array.reverse();

var number_array = [7,3,5,2,9,4]

number_array[0].dynamicType


maxElement(number_array)
minElement(number_array)

let sorted = number_array.sorted{$0 < $1}
sorted

let odd = number_array.filter{$0 % 2 == 1}
odd


let lt5 = number_array.filter{$0 < 5}
lt5


let odd_func = {$0 % 2 == 1}
filter(1...10, odd_func)

let squares = number_array.map{$0 * $0}
squares

let sum = number_array.reduce(0){$0 + $1}
sum

let sortFunc = { (i1: Int, i2: Int) -> Bool in
    return i1 < i2 }

number_array.sorted(sortFunc);



// Loops
var numbers = (0...10)

var total = 0
for i in numbers {
    total += i
}
total

while total < 0 {
    total -= 5
}
total



// Checking gauss

var max = 100
numbers = (0...max)

total = 0
for i in numbers {
    total += i
}

total



// Lets make a class

class Rectangle {
    var width:Double = 0, height:Double = 0;
    init( width:Double, height:Double ) {
        self.width = width
        self.height = height
    }
    
    func area() -> Double {
        return self.width * self.height;
    }
}

var shape1 = Rectangle( width: 5, height: 10 )

shape1.area()


class Square: Rectangle {
    init( size: Double ) {
        super.init(width: size, height: size)
    }
}

var shape2 = Square( size: 10 )
shape2.area()






// Lets make a class

class Regex {
    let internalExpression: NSRegularExpression?
    let pattern: String
    
    init(_ pattern: String) {
        self.pattern = pattern
        var error: NSError?
        self.internalExpression = NSRegularExpression(pattern: pattern, options: .CaseInsensitive, error: &error)
    }
    
    func test(input: String) -> Bool {
        let matches = self.internalExpression!.matchesInString(input, options: nil, range:NSMakeRange(0, countElements(input)))
        return matches.count > 0
    }
}

if Regex("Fun").test(str) {
    println("matches pattern")
} else {
    println( "Doesn't match" );
}

if Regex("Happy").test(hfc) {
    println( "Is happy!" )
}



// And a custom operator

infix operator =~ {}

func =~ (input: String, pattern: String) -> Bool {
    return Regex(pattern).test(input);
}

// This is more like Ruby!
if hfc =~ "Fun" {
    println( "Is also fun!" )
}
