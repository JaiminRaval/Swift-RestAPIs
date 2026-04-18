//
//  APImanger.swift
//  Swift-RestAPIs
//
//  Created by Jaimin Raval on 18/04/26.
//

import Foundation


final class APIManager {
    
    public static let shared = APIManager()
    
    func callAPI() {
        
        //    Step-0
        //  API End-Point URL string
        let urlstr = "https://jsonplaceholder.typicode.com/todos"
        
        //    Step-1
        // Validating URL:
        if let url = URL(string: urlstr) {
            
            //    Step-2
            // creating URLSession
            let session = URLSession.shared
            //    Step-3
            // initiating dataTask
            let dataTask = session.dataTask(with: url) { data, res, err in
                
                guard let bufferData = data else {return}
                do {
                    // Step-4:
                    //  decoding using in-built JSONDecoder class,
                    //  which has in-built func() called .decode()
                    let decodedData = try JSONDecoder().decode([TodoModel].self, from: bufferData)
                    
                    // prints decoded json data in your local debug console
                    print(decodedData)
                    
                    //  print() this to see raw data, URLresponse and error.
                    //      print(data)
                    //      print(res)
                    //      print(err)
                    
                } catch (let err) {
                    //  localizedDescription helps to read error in more human readable way.
                    print(err.localizedDescription)
                }
                
            }
            //  your API code doesn't works if not called this func. no brainer ikik, but we are learning
            dataTask.resume()
        } else {
            //  check url if this get prints
            print("URL is invalid")
        }
    }
}
