//: Playground - noun: a place where people can play
//作業三 - Jay


//====作業1. 計算全部格子的總合====

var sum1 = 0

for i in 0...7 {
    for j in 0...7 {
        var k = i * j
        sum1 = sum1 + k
    }
}
print("EX.1 = \(sum1)")

//====作業2. 計算奇數行數字的總合====

var sum2 = 0

for i in 0...7 {
    for j in 0...7 {
        if i % 2 == 1 {
            var k = i * j
            sum2 = sum2 + k
        }
    }
}
print("EX.2 = \(sum2)")

//====作業3. 所有格子的總合，除了列數 >= 行數的格子====

var sum3 = 0

for i in 0...7 {
    for j in 0...7 {
        if i < j {
            var k = i * j
            sum3 = sum3 + k
        }
    }
}
print("EX.3 = \(sum3)")

/* 作業4.
定義function，接受3個參數，起始值，最大值和決定數字倍數的number，
回傳運算結果  比方起始值3，最大值98，決定數字倍數的number為5時，
(只包含5的倍數)  運算結果為 5 + 10 + 15 + ..... + 95 */

func showNumberAdd(min: Int, max: Int, multiple: Int) -> Int {
    
    var sum = 0
    
    for i in min...max {
        if i % multiple == 0 {
            sum = sum + i
        }
    }
    return sum
}

var sum4 = showNumberAdd(min: 3, max: 98, multiple: 5)
print("EX.4 = \(sum4)")

/* 作業5.
定義function，接受3個參數，起始值，最大值和決定數字倍數的number，
回傳運算結果  比方起始值3，最大值11，決定數字倍數的number為5時，
(不包含5的倍數)  運算結果為 3 + 4 + 6 + 7 + 8 + 9 + 11 */

func showNoNumberAdd(min: Int, max: Int, multiple: Int) -> Int {
    
    var sum = 0
    
    for i in min...max {
        if i % multiple != 0 {
            sum = sum + i
        }
    }
    return sum
}

var sum5 = showNoNumberAdd(min: 3, max: 11, multiple: 5)
print("EX.5 = \(sum5)")

/* 作業6.
奇數行的數字總合, 定義function，接受2個參數，分別代表行數和列數 */

func oddNumberAdd(columns: Int, rows: Int) -> Int {
    
    var sum = 0
    
    for i in 0...columns {
        for j in 0...rows {
            if j % 2 == 1 {
                let k = i * j
                sum = sum + k
            }
        }
    }
    return sum
}

var sum6 = oddNumberAdd(columns: 7, rows: 7)
print("EX.6 = \(sum6)")

/* 作業7.
所有格子的總合，除了列數>=行數的格子, 定義function，接受2個參數，分別代表行數和列數 */

func allNumberAdd(columns: Int, rows: Int) -> Int {
    
    var sum = 0
    
    for i in 0...columns {
        for j in 0...rows {
            if i < j {
                let k = i * j
                sum = sum + k
            }
        }
    }
    return sum
}

var sum7 = allNumberAdd(columns: 7, rows: 7)
print("EX.7 = \(sum7)")

/* 作業8.
定義一個function，接受一個參數代表華式溫度 ， 回到攝式溫度 */
//攝氏 = (華氏-32)*5/9   &  華氏 = 攝氏*(9/5)+32

func degreeFtoC(degreeF: Int) -> Int {
    
    let degreeC = (degreeF - 32) * 5 / 9
    
    return degreeC
}

var degreeC = degreeFtoC(degreeF: 40)
print("EX.8 = \(degreeC)")




