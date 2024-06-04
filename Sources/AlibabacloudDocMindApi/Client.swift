// The Swift Programming Language
// https://docs.swift.org/swift-book

import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import Tea
import TeaUtils


/// Client
public class Client: AlibabacloudOpenApi.Client {
    
    //MARK: - submitConvertPdfToWordJobAdvance
    
    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitConvertPdfToWordJobAdvance(_ request: SubmitConvertPdfToWordJobRequest) async throws -> SubmitDocumentConvertJobResponse {
        let runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitConvertPdfToWordJobAdvance(request , runtime )
    }
    
    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitConvertPdfToWordJobAdvance(_ request: SubmitConvertPdfToWordJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitDocumentConvertJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.FileUrl)) {
            query["FileUrl"] = request.FileUrl!
        }
        if (!TeaUtils.Client.isUnset(request.FileName)) {
            query["FileName"] = request.FileName!
        }
        let req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
        ])
        let params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitConvertPdfToWordJob",
            "version": "2022-07-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        
        let tmp: [String: Any] = try await callApi(params , req , runtime )
        return Tea.TeaConverter.fromMap(SubmitDocumentConvertJobResponse(), tmp)
    }
    
    //MARK: - submitConvertImageToWordJobAdvance
    
    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitConvertImageToWordJobAdvance(_ request: SubmitConvertImageToWordJobRequest) async throws -> SubmitDocumentConvertJobResponse {
        let runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitConvertImageToWordJobAdvance(request , runtime )
    }
    
    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitConvertImageToWordJobAdvance(_ request: SubmitConvertImageToWordJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitDocumentConvertJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ImageUrls)) {
            query["ImageUrls"] = request.ImageUrls!.joined(separator: ",");
        }
        if (!TeaUtils.Client.isUnset(request.ImageNames)) {
            query["ImageNames"] = request.ImageNames!.joined(separator: ",");
        }
        if (!TeaUtils.Client.isUnset(request.ImageNameExtension)) {
            query["ImageNameExtension"] = request.ImageNameExtension!;
        }
        let req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
        ])
        let params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitConvertImageToWordJob",
            "version": "2022-07-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        
        let tmp: [String: Any] = try await callApi(params , req , runtime )
        return Tea.TeaConverter.fromMap(SubmitDocumentConvertJobResponse(), tmp)
    }
    
    //MARK: - submitConvertPdfToExcelJobAdvance
    
    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitConvertPdfToExcelJobAdvance(_ request: SubmitConvertPdfToExcelJobRequest) async throws -> SubmitDocumentConvertJobResponse {
        let runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitConvertPdfToExcelJobAdvance(request , runtime )
    }
    
    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitConvertPdfToExcelJobAdvance(_ request: SubmitConvertPdfToExcelJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitDocumentConvertJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.FileUrl)) {
            query["FileUrl"] = request.FileUrl!
        }
        if (!TeaUtils.Client.isUnset(request.FileName)) {
            query["FileName"] = request.FileName!
        }
        if (!TeaUtils.Client.isUnset(request.ForceMergeExcel)) {
            query["ForceMergeExcel"] = request.ForceMergeExcel!;
        }
        let req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
        ])
        let params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitConvertPdfToExcelJob",
            "version": "2022-07-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        
        let tmp: [String: Any] = try await callApi(params , req , runtime )
        return Tea.TeaConverter.fromMap(SubmitDocumentConvertJobResponse(), tmp)
    }
    
    //MARK: - submitConvertImageToExcelJobAdvance
    
    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitConvertImageToExcelJobAdvance(_ request: SubmitConvertImageToExcelJobRequest) async throws -> SubmitDocumentConvertJobResponse {
        let runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitConvertImageToExcelJobAdvance(request , runtime )
    }
    
    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitConvertImageToExcelJobAdvance(_ request: SubmitConvertImageToExcelJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitDocumentConvertJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ImageUrls)) {
            query["ImageUrls"] = request.ImageUrls!.joined(separator: ",")
        }
        if (!TeaUtils.Client.isUnset(request.ImageNames)) {
            query["ImageNames"] = request.ImageNames!.joined(separator: ",")
        }
        if (!TeaUtils.Client.isUnset(request.ImageNameExtension)) {
            query["ImageNameExtension"] = request.ImageNameExtension!;
        }
        if (!TeaUtils.Client.isUnset(request.ForceMergeExcel)) {
            query["ForceMergeExcel"] = request.ForceMergeExcel!;
        }
        let req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
        ])
        let params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitConvertImageToExcelJob",
            "version": "2022-07-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        
        let tmp: [String: Any] = try await callApi(params , req , runtime )
        return Tea.TeaConverter.fromMap(SubmitDocumentConvertJobResponse(), tmp)
    }
    
    //MARK: - submitConvertPdfToImageJobAdvance
    
    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitConvertPdfToImageJobAdvance(_ request: SubmitConvertPdfToImageJobRequest) async throws -> SubmitDocumentConvertJobResponse {
        let runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitConvertPdfToImageJobAdvance(request , runtime )
    }
    
    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitConvertPdfToImageJobAdvance(_ request: SubmitConvertPdfToImageJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitDocumentConvertJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.FileUrl)) {
            query["FileUrl"] = request.FileUrl!
        }
        if (!TeaUtils.Client.isUnset(request.FileName)) {
            query["FileName"] = request.FileName!
        }
        let req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
        ])
        let params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitConvertPdfToImageJob",
            "version": "2022-07-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        
        let tmp: [String: Any] = try await callApi(params , req , runtime )
        return Tea.TeaConverter.fromMap(SubmitDocumentConvertJobResponse(), tmp)
    }
    
    //MARK: - submitConvertImageToPdfJobAdvance
    
    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitConvertImageToPdfJobAdvance(_ request: SubmitConvertImageToPdfJobRequest) async throws -> SubmitDocumentConvertJobResponse {
        let runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await submitConvertImageToPdfJobAdvance(request , runtime )
    }
    
    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func submitConvertImageToPdfJobAdvance(_ request: SubmitConvertImageToPdfJobRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SubmitDocumentConvertJobResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.ImageUrls)) {
            query["ImageUrls"] = request.ImageUrls!.joined(separator: ",")
        }
        if (!TeaUtils.Client.isUnset(request.ImageNames)) {
            query["ImageNames"] = request.ImageNames!.joined(separator: ",")
        }
        if (!TeaUtils.Client.isUnset(request.ImageNameExtension)) {
            query["ImageNameExtension"] = request.ImageNameExtension!
        }
        let req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
        ])
        let params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SubmitConvertImageToPdfJob",
            "version": "2022-07-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        
        let tmp: [String: Any] = try await callApi(params , req , runtime )
        return Tea.TeaConverter.fromMap(SubmitDocumentConvertJobResponse(), tmp)
    }
    
    //MARK: - getDocumentCompareResultAdvance
    
    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocumentCompareResultAdvance(_ request: GetDocumentConvertResultAdvanceRequest) async throws -> GetDocumentConvertResultResponse {
        let runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDocumentCompareResultAdvance(request , runtime )
    }
    
    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDocumentCompareResultAdvance(_ request: GetDocumentConvertResultAdvanceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDocumentConvertResultResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.Id)) {
            query["Id"] = request.Id;
        }
        let req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query),
        ])
        let params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDocumentConvertResult",
            "version": "2022-07-11",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        
        let tmp: [String: Any] = try await callApi(params , req , runtime )
        return Tea.TeaConverter.fromMap(GetDocumentConvertResultResponse(), tmp)
    }
}



