//HW2 - Part 2
class Fracion {
    var nume = 0
    var deno = 1
    
    init (nume: Int, deno: Int) {
        self.nume = nume
        self.deno = deno
    }
    
    init(){}
    
    
    func print() {
        
        Swift.print("The result is \(nume)/\(deno)")
    }
    
    func toDouble() -> Double {
        return Double(nume) / Double(deno);
    }
    func mul(_ f: Fracion){
        nume = nume * f.nume
        deno = deno * f.deno
        reduce()
    }
    
    func sub(_ f: Fracion) {
        nume = nume * f.deno - deno * f.nume
        deno = deno * f.deno
        reduce()
    }
    
    func add(_ f: Fracion) {
        nume = nume * f.deno + deno * f.nume
        deno = deno * f.deno
        reduce()
    }
    // Division formula needs to be fixed.
    func div(_ f: Fracion) {
        nume = nume * f.deno / deno * f.nume
        deno = deno * f.deno
        reduce()
    }
    
    func reduce() {
        var u = abs(nume)
        var v = deno
        var r : Int
        while (v != 0) {
            r = u % v; u = v; v = r
        }
        nume /= u
        deno /= u
    }
    
}


//Test Muiltply two fractions
var f1 = Fracion(nume: 5, deno: 7)
var f2 = Fracion(nume: 3, deno:4)

f1.mul(f2)

print("5/7 * 3/4")
f1.print()

print("\n")

//Test substract two fractions
var f3 = Fracion(nume: 1, deno: 2)
var f4 = Fracion(nume: 1, deno: 4)

f3.sub(f4)

print("1/2 - 1/4")
f3.print()
print("\n")


//Test add two fractions
var f5 = Fracion(nume: 3, deno: 5)
var f6 = Fracion(nume: 2, deno: 4)

f5.add(f6)

print("3/5 + 2/4")
f5.print()

print("\n")



//Test division two fractions

var f7 = Fracion(nume: 4, deno: 8)
var f8 = Fracion(nume: 8, deno: 16)

f7.div(f8)

print("4/8 / 8/16")

f7.print()
