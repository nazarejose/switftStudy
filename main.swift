//Corretor de links http para https em SWIFT

var urls : [String] = [
  "https://www.apple.com",
  "http://www.meusite.com",
  "https://www.site2.com",
  "http://guilherme.com",
  "http://casasbahia.com"
]

let numeroDeUrls = urls.count

for i in 0..<numeroDeUrls{

  if let index = urls[i].firstIndex(of: ":"){
  let after = urls[i].index(after: index)

     let httpList = String(urls[i][...index])
     let afterHttpList = String(urls[i][after...])
    
   let checkUrls : Bool = httpList == "http:"

   if checkUrls == true{

    urls.remove(at: i)
    urls.insert("https:\(afterHttpList)", at: i)
 
   }else{
     continue
   }
}}

  print(urls)





