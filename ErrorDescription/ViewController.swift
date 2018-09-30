//
//  ViewController.swift
//  ErrorDescription
//
//  Created by hans on 2018/9/30.
//  Copyright © 2018年 hans. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    let tableVIew = UITableView(frame: .zero, style: .plain)
    var dataArray :[(String,Int)] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //return self.dataArray.count
        let cell = tableVIew.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.font = UIFont.systemFont(ofSize: 12)
        cell?.textLabel?.text = dataArray[indexPath.row].0 + "=" +  String(dataArray[indexPath.row].1)
        return cell!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.addSubview(tableVIew)
        tableVIew.dataSource = self
        tableVIew.rowHeight = 44
        tableVIew.frame = CGRect(x: 0, y: 64, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 64)
        tableVIew.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        dataArray.append(("NSURLErrorUnknown",NSURLErrorUnknown))
        dataArray.append(("NSURLErrorCancelled",NSURLErrorCancelled))
        dataArray.append(("NSURLErrorBadURL",NSURLErrorBadURL))
        dataArray.append(("NSURLErrorTimedOut",NSURLErrorTimedOut))
        dataArray.append(("NSURLErrorUnsupportedURL",NSURLErrorUnsupportedURL))
        dataArray.append(("NSURLErrorCannotFindHost",NSURLErrorCannotFindHost))
        dataArray.append(("NSURLErrorCannotConnectToHost",NSURLErrorCannotConnectToHost))
        dataArray.append(("NSURLErrorNetworkConnectionLost",NSURLErrorNetworkConnectionLost))
        dataArray.append(("NSURLErrorDNSLookupFailed",NSURLErrorDNSLookupFailed))
        dataArray.append(("NSURLErrorHTTPTooManyRedirects",NSURLErrorHTTPTooManyRedirects))
        dataArray.append(("NSURLErrorResourceUnavailable",NSURLErrorResourceUnavailable))
        dataArray.append(("NSURLErrorNotConnectedToInternet",NSURLErrorNotConnectedToInternet))
        dataArray.append(("NSURLErrorRedirectToNonExistentLocation",NSURLErrorRedirectToNonExistentLocation))
        dataArray.append(("NSURLErrorBadServerResponse",NSURLErrorBadServerResponse))
        dataArray.append(("NSURLErrorUserCancelledAuthentication",NSURLErrorUserCancelledAuthentication))
        dataArray.append(("NSURLErrorUserAuthenticationRequired",NSURLErrorUserAuthenticationRequired))
        dataArray.append(("NSURLErrorZeroByteResource",NSURLErrorZeroByteResource))
        dataArray.append(("NSURLErrorCannotDecodeRawData",NSURLErrorCannotDecodeRawData))
        dataArray.append(("NSURLErrorCannotDecodeContentData",NSURLErrorCannotDecodeContentData))
        dataArray.append(("NSURLErrorCannotParseResponse",NSURLErrorCannotParseResponse))
        
        dataArray.append(("NSURLErrorAppTransportSecurityRequiresSecureConnection",NSURLErrorAppTransportSecurityRequiresSecureConnection))
        dataArray.append(("NSURLErrorFileDoesNotExist",NSURLErrorFileDoesNotExist))
        dataArray.append(("NSURLErrorFileIsDirectory",NSURLErrorFileIsDirectory))
        dataArray.append(("NSURLErrorNoPermissionsToReadFile",NSURLErrorNoPermissionsToReadFile))
        dataArray.append(("NSURLErrorDataLengthExceedsMaximum",NSURLErrorDataLengthExceedsMaximum))
        dataArray.append(("NSURLErrorFileOutsideSafeArea",NSURLErrorFileOutsideSafeArea))
        
        // SSL errors
        dataArray.append(("NSURLErrorSecureConnectionFailed",NSURLErrorSecureConnectionFailed))
        dataArray.append(("NSURLErrorServerCertificateHasBadDate",NSURLErrorServerCertificateHasBadDate))
        dataArray.append(("NSURLErrorServerCertificateUntrusted",NSURLErrorServerCertificateUntrusted))
        dataArray.append(("NSURLErrorServerCertificateHasUnknownRoot",NSURLErrorServerCertificateHasUnknownRoot))
        dataArray.append(("NSURLErrorServerCertificateNotYetValid",NSURLErrorServerCertificateNotYetValid))
        dataArray.append(("NSURLErrorClientCertificateRejected",NSURLErrorClientCertificateRejected))
        dataArray.append(("NSURLErrorClientCertificateRequired",NSURLErrorClientCertificateRequired))
        dataArray.append(("NSURLErrorCannotLoadFromNetwork",NSURLErrorCannotLoadFromNetwork))
        
        // Download and file I/O errors
        dataArray.append(("NSURLErrorCannotCreateFile",NSURLErrorCannotCreateFile))
        dataArray.append(("NSURLErrorCannotOpenFile",NSURLErrorCannotOpenFile))
        dataArray.append(("NSURLErrorCannotCloseFile",NSURLErrorCannotCloseFile))
        dataArray.append(("NSURLErrorCannotWriteToFile",NSURLErrorCannotWriteToFile))
        dataArray.append(("NSURLErrorCannotRemoveFile",NSURLErrorCannotRemoveFile))
        dataArray.append(("NSURLErrorCannotMoveFile",NSURLErrorCannotMoveFile))
        dataArray.append(("NSURLErrorDownloadDecodingFailedMidStream",NSURLErrorDownloadDecodingFailedMidStream))
        dataArray.append(("NSURLErrorDownloadDecodingFailedToComplete",NSURLErrorDownloadDecodingFailedToComplete))
        
        
        dataArray.append(("NSURLErrorInternationalRoamingOff",NSURLErrorInternationalRoamingOff))
        dataArray.append(("NSURLErrorCallIsActive",NSURLErrorCallIsActive))
        dataArray.append(("NSURLErrorDataNotAllowed",NSURLErrorDataNotAllowed))
        dataArray.append(("NSURLErrorRequestBodyStreamExhausted",NSURLErrorRequestBodyStreamExhausted))
        
        
        dataArray.append(("NSURLErrorBackgroundSessionRequiresSharedContainer",NSURLErrorBackgroundSessionRequiresSharedContainer))
        dataArray.append(("NSURLErrorBackgroundSessionInUseByAnotherProcess",NSURLErrorBackgroundSessionInUseByAnotherProcess))
        
        dataArray.append(("NSURLErrorBackgroundSessionWasDisconnected",NSURLErrorBackgroundSessionWasDisconnected))
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

