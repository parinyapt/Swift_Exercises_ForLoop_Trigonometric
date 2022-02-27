//Create Date 26-02-2022
//64130010049 ปริญญา เติมกสิพาณิชย์

import Foundation

func formatRenderData(array_data:[String],column_size:Int,padding_size:Int) -> String {
  var output:String = ""
  var prpl:Int = 0
  
  for data in array_data {
    prpl = ((column_size < data.count ? data.count : column_size) - data.count) / 2
    output += String(repeating: " " as Character, count: prpl) + data + String(repeating: " " as Character, count: (prpl+padding_size))
  }

  return output
}

let degree_config:[Float] = [0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0,1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2.0]
let pi_config:Float = 3.14159265
var temp_result:[String:Float] = ["radian":0.0,"sine":0.0,"cosine":0.0,"tangent":0.0,"cotangent":0.0,"secant":0.0,"cosecant":0.0]

print(String(repeating: "-" as Character, count:77))
print(formatRenderData(array_data: ["DEGREE","SINE","COSINE","TANGENT","COTANTGENT","SECANT","COSECANT"],column_size:10,padding_size:1))
print(String(repeating: "-" as Character, count:77))

for degree in degree_config {
  temp_result["radian"] = Float(pi_config * degree / 180)
  temp_result["sine"] = sin(temp_result["radian"]!)
  temp_result["cosine"] = cos(temp_result["radian"]!)
  temp_result["tangent"] = tan(temp_result["radian"]!)
  temp_result["cotangent"] = temp_result["cosine"]! / temp_result["sine"]!
  temp_result["secant"] = 1 / temp_result["cosine"]!
  temp_result["cosecant"] = 1 / temp_result["sine"]!

  print(formatRenderData(array_data: [String(degree),String(format: "%.5f",temp_result["sine"]!),String(format: "%.5f",temp_result["cosine"]!),String(format: "%.5f",temp_result["tangent"]!),String(format: "%.5f",temp_result["cotangent"]!),String(format: "%.5f",temp_result["secant"]!),String(format: "%.5f",temp_result["cosecant"]!)],column_size:10,padding_size:2))
  
}

// print("\(degree) -- \(String(format: "%.5f",temp_result["sine"]!)) -- \(String(format: "%.5f",temp_result["cosine"]!)) -- \(String(format: "%.5f",temp_result["tangent"]!)) -- \(String(format: "%.5f",temp_result["cotangent"]!)) -- \(String(format: "%.5f",temp_result["secant"]!)) -- \(String(format: "%.5f",temp_result["cosecant"]!))")

// temp_result["sine"] = Float(String(format: "%.5f",sin(temp_result["radian"]!)))!
//   temp_result["cosine"] = Float(String(format: "%.5f",cos(temp_result["radian"]!)))!
//   temp_result["tangent"] = Float(String(format: "%.5f",tan(temp_result["radian"]!)))!

//prpl = ((column_size < data.count ? data.count : column_size) - data.count) / 2

// func formatRenderData(array_data:[String],column_size:Int,padding_size:Int) -> String {
//   var output:String = ""
//   var prpl:Int = 0
  
//   for data in array_data {
//     prpl = ((column_size - data.count) % 2 != 0 ? (column_size - data.count) + 1 : (column_size - data.count) ) / 2
//     output += String(repeating: " " as Character, count: prpl) + data + String(repeating: " " as Character, count: prpl) + String(repeating: " " as Character, count: padding_size)
//   }

//   return output
// }