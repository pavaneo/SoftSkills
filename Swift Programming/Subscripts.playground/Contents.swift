import Cocoa

/*
 
 Way to access element in collection, list or sequence using index-like syntax, similar to arrays or dictionaries.
 
 */


struct TimeTable {
    
    let multiplier: Int
    
    subscript(index: Int) -> Int {
        return index * multiplier
    }
}

let timeTable = TimeTable(multiplier: 60)
print(timeTable[2])

// Subscript with get and set

struct Matrix {
    
    var grid: [[Double]]
    let row: Int, col: Int
    
    subscript (row: Int, col: Int) -> Double {
        get {
            return grid[row][col]
        }
        set {
            grid[row][col] = newValue
        }
    }
}

var matrix = Matrix(grid: [[1.0, 2.0], [3.0, 4.0]], row: 2, col: 2)
matrix[0, 1] = 5.0
print(matrix.grid)
