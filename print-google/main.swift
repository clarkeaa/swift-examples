//
//  main.swift
//  TestSwift
//
//  Created by Aaron Clarke on 6/3/14.
//  Copyright (c) 2014 Aaron Clarke. All rights reserved.
//

import Foundation

func main(Void) -> Void {
    var url = NSURL(string: "http://google.com")
    var request = NSURLRequest(URL:url)
    var response : NSURLResponse? = nil
    var error : NSError? = nil
    var data = NSURLConnection.sendSynchronousRequest(request,
        returningResponse: &response,
        error: &error);
    
    var html = NSString(data: data, encoding: NSUTF8StringEncoding)
    
    println("html: \(html)")

}

main()