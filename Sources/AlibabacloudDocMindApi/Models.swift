//
//  File.swift
//  
//
//  Created by dexiong on 2024/6/4.
//

import Foundation
import Tea

//MARK: - 轮询文档转换结果查询服务GetDocumentConvertResult

public class GetDocumentConvertResultAdvanceRequest: Tea.TeaModel {
    public var Id: String?
    
    public override init() {
        super.init()
    }
    
    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }
    
    public override func validate() throws -> Void {
    }
    
    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.Id != nil {
            map["Id"] = self.Id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.Id = dict["Id"] as? String
        }
    }
}

public class GetDocumentConvertResultResponse: Tea.TeaModel {
    public var headers: [String: String]?
    
    public var statusCode: Int32?
    
    public var body: GetDocumentConvertResultResponseBody?
    
    public override init() {
        super.init()
    }
    
    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }
    
    public override func validate() throws -> Void {
        try self.body?.validate()
    }
    
    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }
    
    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as? [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as? Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            let model = GetDocumentConvertResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDocumentConvertResultResponseBody: Tea.TeaModel {
    public var RequestId: String?
    public var Completed: Bool?
    public var Status: String?
    public var Data: [GetDocumentConvertResultResponseBodyData]?
    public var Code: String?
    public var Message: String?
    public override init() {
        super.init()
    }
    
    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }
    
    public override func validate() throws -> Void {
    }
    
    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.RequestId != nil {
            map["RequestId"] = self.RequestId!
        }
        if self.Completed != nil {
            map["Completed"] = self.Completed!
        }
        if self.Status != nil {
            map["Status"] = self.Status!
        }
        if self.Code != nil {
            map["Code"] = self.Code!
        }
        if self.Message != nil {
            map["Message"] = self.Message!
        }
        if self.Data != nil {
            var values: [[String: Any]] = []
            self.Data?.forEach({ model in
                values.append(model.toMap())
            })
            map["Data"] = values
        }
        return map
    }
    
    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.RequestId = dict["RequestId"] as? String
        }
        if dict.keys.contains("Completed") && dict["Completed"] != nil {
            self.Completed = dict["Completed"] as? Bool
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.Status = dict["Status"] as? String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.Code = dict["Code"] as? String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.Message = dict["Message"] as? String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            let data = dict["Data"] as! [[String: Any]]
            var models: [GetDocumentConvertResultResponseBodyData] = []
            data.forEach { dict in
                let model = GetDocumentConvertResultResponseBodyData()
                model.fromMap(dict)
                models.append(model)
            }
            self.Data = models
        }
    }
}

public class GetDocumentConvertResultResponseBodyData: Tea.TeaModel {
    public var Url: String?
    
    public var Size: Int?
    
    public var `Type`: String?
    
    public var Md5: String?
    
    public override init() {
        super.init()
    }
    
    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }
    
    public override func validate() throws -> Void {
    }
    
    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.Url != nil {
            map["Url"] = self.Url!
        }
        if self.Size != nil {
            map["Size"] = self.Size!
        }
        if self.Type != nil {
            map["Type"] = self.Type!
        }
        if self.Md5 != nil {
            map["Md5"] = self.Md5!
        }
        return map
    }
    
    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.Url = dict["Url"] as? String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.Size = dict["Size"] as? Int
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.Type = dict["Type"] as? String
        }
        if dict.keys.contains("Md5") && dict["Md5"] != nil {
            self.Md5 = dict["Md5"] as? String
        }
    }
}


//MARK: - PDF转Word异步提交服务SubmitConvertPdfToWordJob

public class SubmitConvertPdfToWordJobRequest: Tea.TeaModel {
    public var FileUrl: String?
    public var FileName: String?
    
    public override init() {
        super.init()
    }
    
    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }
    
    public override func validate() throws -> Void {
    }
    
    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.FileUrl != nil {
            map["FileUrl"] = self.FileUrl!
        }
        if self.FileName != nil {
            map["FileName"] = self.FileName!
        }
        return map
    }
    
    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
            self.FileUrl = dict["FileUrl"] as? String
        }
        if dict.keys.contains("FileName") && dict["FileName"] != nil {
            self.FileName = dict["FileName"] as? String
        }
    }
}

//MARK: - 图片转Word异步提交服务SubmitConvertImageToWordJob

public class SubmitConvertImageToWordJobRequest: Tea.TeaModel {
    public var ImageUrls: [String]?
    public var ImageNames: [String]?
    public var ImageNameExtension: String?
    
    public override init() {
        super.init()
    }
    
    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }
    
    public override func validate() throws -> Void {
    }
    
    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ImageUrls != nil {
            map["ImageUrls"] = self.ImageUrls!
        }
        if self.ImageNames != nil {
            map["ImageNames"] = self.ImageNames!
        }
        if self.ImageNameExtension != nil {
            map["ImageNameExtension"] = self.ImageNameExtension!
        }
        return map
    }
    
    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageUrls") && dict["ImageUrls"] != nil {
            self.ImageUrls = dict["ImageUrls"] as? [String]
        }
        if dict.keys.contains("ImageNames") && dict["ImageNames"] != nil {
            self.ImageNames = dict["ImageNames"] as? [String]
        }
        if dict.keys.contains("ImageNameExtension") && dict["ImageNameExtension"] != nil {
            self.ImageNameExtension = dict["ImageNameExtension"] as? String
        }
    }
}

//MARK: - PDF转Excel异步提交服务SubmitConvertPdfToExcelJob

public class SubmitConvertPdfToExcelJobRequest: Tea.TeaModel {
    public var FileUrl: String?
    public var FileName: String?
    public var ForceMergeExcel: Bool?
    
    public override init() {
        super.init()
    }
    
    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }
    
    public override func validate() throws -> Void {
    }
    
    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.FileUrl != nil {
            map["FileUrl"] = self.FileUrl!
        }
        if self.FileName != nil {
            map["FileName"] = self.FileName!
        }
        if self.ForceMergeExcel != nil {
            map["ForceMergeExcel"] = self.ForceMergeExcel
        } else {
            map["ForceMergeExcel"] = false
        }
        return map
    }
    
    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
            self.FileUrl = dict["FileUrl"] as? String
        }
        if dict.keys.contains("FileName") && dict["FileName"] != nil {
            self.FileName = dict["FileName"] as? String
        }
        if dict.keys.contains("ForceMergeExcel") && dict["ForceMergeExcel"] != nil {
            self.ForceMergeExcel = dict["ForceMergeExcel"] as? Bool
        } else {
            self.ForceMergeExcel = false
        }
    }
}

//MARK: - 图片转Excel异步提交服务SubmitConvertImageToExcelJob

public class SubmitConvertImageToExcelJobRequest: Tea.TeaModel {
    public var ImageUrls: [String]?
    public var ImageNames: [String]?
    public var ImageNameExtension: String?
    public var ForceMergeExcel: Bool?
    
    public override init() {
        super.init()
    }
    
    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }
    
    public override func validate() throws -> Void {
    }
    
    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ImageUrls != nil {
            map["ImageUrls"] = self.ImageUrls!
        }
        if self.ImageNames != nil {
            map["ImageNames"] = self.ImageNames!
        }
        if self.ImageNameExtension != nil {
            map["ImageNameExtension"] = self.ImageNameExtension!
        }
        if self.ForceMergeExcel != nil {
            map["ForceMergeExcel"] = self.ForceMergeExcel
        } else {
            map["ForceMergeExcel"] = false
        }
        return map
    }
    
    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageUrls") && dict["ImageUrls"] != nil {
            self.ImageUrls = dict["ImageUrls"] as? [String]
        }
        if dict.keys.contains("ImageNames") && dict["ImageNames"] != nil {
            self.ImageNames = dict["ImageNames"] as? [String]
        }
        if dict.keys.contains("ImageNameExtension") && dict["ImageNameExtension"] != nil {
            self.ImageNameExtension = dict["ImageNameExtension"] as? String
        }
        if dict.keys.contains("ForceMergeExcel") && dict["ForceMergeExcel"] != nil {
            self.ForceMergeExcel = dict["ForceMergeExcel"] as? Bool
        } else {
            self.ForceMergeExcel = false
        }
    }
}

//MARK: - PDF转图片异步提交服务SubmitConvertPdfToImageJob接口

public class SubmitConvertPdfToImageJobRequest: Tea.TeaModel {
    public var FileUrl: String?
    public var FileName: String?
    
    public override init() {
        super.init()
    }
    
    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }
    
    public override func validate() throws -> Void {
    }
    
    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.FileUrl != nil {
            map["FileUrl"] = self.FileUrl!
        }
        if self.FileName != nil {
            map["FileName"] = self.FileName!
        }
        return map
    }
    
    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileUrl") && dict["FileUrl"] != nil {
            self.FileUrl = dict["FileUrl"] as? String
        }
        if dict.keys.contains("FileName") && dict["FileName"] != nil {
            self.FileName = dict["FileName"] as? String
        }
    }
}

//MARK: - 图片转PDF异步提交服务SubmitConvertImageToPdfJob

public class SubmitConvertImageToPdfJobRequest: Tea.TeaModel {
    public var ImageUrls: [String]?
    public var ImageNames: [String]?
    public var ImageNameExtension: String?
    
    public override init() {
        super.init()
    }
    
    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }
    
    public override func validate() throws -> Void {
    }
    
    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ImageUrls != nil {
            map["ImageUrls"] = self.ImageUrls!
        }
        if self.ImageNames != nil {
            map["ImageNames"] = self.ImageNames!
        }
        if self.ImageNameExtension != nil {
            map["ImageNameExtension"] = self.ImageNameExtension!
        }
        return map
    }
    
    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageUrls") && dict["ImageUrls"] != nil {
            self.ImageUrls = dict["ImageUrls"] as? [String]
        }
        if dict.keys.contains("ImageNames") && dict["ImageNames"] != nil {
            self.ImageNames = dict["ImageNames"] as? [String]
        }
        if dict.keys.contains("ImageNameExtension") && dict["ImageNameExtension"] != nil {
            self.ImageNameExtension = dict["ImageNameExtension"] as? String
        }
    }
}


//MARK: - 提交文档转换相应接口

public class SubmitDocumentConvertJobResponse: Tea.TeaModel {
    public var headers: [String: String]?
    
    public var statusCode: Int32?
    
    public var body: SubmitDocumentConvertJobResponseBody?
    
    public override init() {
        super.init()
    }
    
    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }
    
    public override func validate() throws -> Void {
        try self.body?.validate()
    }
    
    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }
    
    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as? [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as? Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            let model = SubmitDocumentConvertJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitDocumentConvertJobResponseBody: Tea.TeaModel {
    public var code: String?
    
    public var data: SubmitDocumentConvertJobResponseBodyData?
    
    public var message: String?
    
    public var requestId: String?
    
    public override init() {
        super.init()
    }
    
    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }
    
    public override func validate() throws -> Void {
    }
    
    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }
    
    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as? String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            let model = SubmitDocumentConvertJobResponseBodyData()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as? String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as? String
        }
    }
}

public class SubmitDocumentConvertJobResponseBodyData: Tea.TeaModel {
    public var Id: String?
    
    public override init() {
        super.init()
    }
    
    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }
    
    public override func validate() throws -> Void {
    }
    
    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.Id != nil {
            map["Id"] = self.Id!
        }
        return map
    }
    
    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.Id = dict["Id"] as? String
        }
    }
}
