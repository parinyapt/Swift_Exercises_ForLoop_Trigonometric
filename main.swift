import Foundation

func formatRenderData(array_data: [String], max: Int) -> String {
  var strcount:Int = 0
  var output:String = ""
  for data in array_data {
    strcount += data.count
  }
  let stringpadding = (max - strcount) / array_data.count
  for data in array_data {
    output += data + String(repeating: " " as Character, count: stringpadding)
  }

  return output
}

let degree_config:[Float] = [0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0,1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2.0]
let pi_config:Float = 3.14159265
var temp_result:[String:Float] = ["radian":0.0,"sine":0.0,"cosine":0.0,"tangent":0.0,"cotangent":0.0,"secant":0.0,"cosecant":0.0]

print(formatRenderData(array_data: ["DEGREE","SINE","COSINE","TANGENT","COTANTGENT","SECANT","COSECANT"],max: 70))

for degree in degree_config {
  temp_result["radian"] = Float(pi_config * degree / 180)
  temp_result["sine"] = sin(temp_result["radian"]!)
  temp_result["cosine"] = cos(temp_result["radian"]!)
  temp_result["tangent"] = tan(temp_result["radian"]!)
  temp_result["cotangent"] = temp_result["cosine"]! / temp_result["sine"]!
  temp_result["secant"] = 1 / temp_result["cosine"]!
  temp_result["cosecant"] = 1 / temp_result["sine"]!

  print(formatRenderData(array_data: [String(degree),String(format: "%.5f",temp_result["sine"]!),String(format: "%.5f",temp_result["cosine"]!),String(format: "%.5f",temp_result["tangent"]!),String(format: "%.5f",temp_result["cotangent"]!),String(format: "%.5f",temp_result["secant"]!),String(format: "%.5f",temp_result["cosecant"]!)],max: 70))
  
}

// print("\(degree) -- \(String(format: "%.5f",temp_result["sine"]!)) -- \(String(format: "%.5f",temp_result["cosine"]!)) -- \(String(format: "%.5f",temp_result["tangent"]!)) -- \(String(format: "%.5f",temp_result["cotangent"]!)) -- \(String(format: "%.5f",temp_result["secant"]!)) -- \(String(format: "%.5f",temp_result["cosecant"]!))")

// temp_result["sine"] = Float(String(format: "%.5f",sin(temp_result["radian"]!)))!
//   temp_result["cosine"] = Float(String(format: "%.5f",cos(temp_result["radian"]!)))!
//   temp_result["tangent"] = Float(String(format: "%.5f",tan(temp_result["radian"]!)))!