//
//  ViewController.swift
//  demo
//
//  Created by dexiong on 2024/6/2.
//

import UIKit
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import CryptoSwift
import AlibabacloudDocMindApi

class ViewController: UIViewController {
    
    private lazy var client: AlibabacloudDocMindApi.Client? = {
        do {
            let aliAccessKeyId: String = "***"
            let aliAccessKeySecret: String = "***"
            let _config: Config = .init()
            _config.accessKeyId = aliAccessKeyId
            _config.accessKeySecret = aliAccessKeySecret
            _config.endpoint = "docmind-api.cn-hangzhou.aliyuncs.com"
            _config.type = "access_key"
            _config.regionId = "cn-hangzhou"
            let _client: AlibabacloudDocMindApi.Client = try .init(_config)
            return _client
        } catch {
            print(error)
            return nil
        }
    }()
    
    private lazy var tableView: UITableView = {
        let _tableView: UITableView = .init(frame: .zero, style: .grouped)
        _tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        _tableView.delegate = self
        _tableView.dataSource = self
        return _tableView
    }()
    
    ///  [String]
    private let items: [String] = [
        "PDF转Word",
        "图片转Word",
        "PDF转Excel",
        "图片转Excel",
        "PDF转图片",
        "图片转PDF"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        tableView.frame = view.bounds
    }
    
}

extension ViewController {
    private func pdfToWord() {
        guard let client = client else { return }
        Task {
            let req: AlibabacloudDocMindApi.SubmitConvertPdfToWordJobRequest = .init()
            req.FileUrl = "https://www.gov.cn/zhengce/pdfFile/1969_PDF.pdf"
            req.FileName = "1969_PDF.pdf"
            let model = try await client.submitConvertPdfToWordJobAdvance(req)
            print(model)
        }
    }
    
    private func imageToWord() {
        guard let client = client else { return }
        Task {
            let req: AlibabacloudDocMindApi.SubmitConvertImageToWordJobRequest = .init()
            req.ImageUrls = [
                "https://img.tukuppt.com/preview/2402760/00/00/84/5b0e597d2730c.jpg-0.jpg",
                "https://www.2xx.vip/wp-content/uploads/2021/03/7cd79e8d003bb28f5d60335fe779085a.png"
            ]
            req.ImageNameExtension = "jpg"
            let model = try await client.submitConvertImageToWordJobAdvance(req)
            print(model)
        }
    }
    
    private func pdfToExcel() {
        guard let client = client else { return }
        Task {
            let req: AlibabacloudDocMindApi.SubmitConvertPdfToExcelJobRequest = .init()
            req.FileUrl = "https://www.gov.cn/zhengce/pdfFile/1969_PDF.pdf"
            req.FileName = "1969_PDF.pdf"
            let model = try await client.submitConvertPdfToExcelJobAdvance(req)
            print(model)
        }
    }
    
    private func imageToExcel() {
        guard let client = client else { return }
        Task {
            let req: AlibabacloudDocMindApi.SubmitConvertImageToExcelJobRequest = .init()
            req.ImageUrls = [
                "https://img.tukuppt.com/preview/2402760/00/00/84/5b0e597d2730c.jpg-0.jpg",
                "https://www.2xx.vip/wp-content/uploads/2021/03/7cd79e8d003bb28f5d60335fe779085a.png"
            ]
            req.ImageNameExtension = "jpg"
            let model = try await client.submitConvertImageToExcelJobAdvance(req)
            print(model)
        }
    }
    
    private func pdfToImage() {
        guard let client = client else { return }
        Task {
            let req: AlibabacloudDocMindApi.SubmitConvertPdfToImageJobRequest = .init()
            req.FileUrl = "https://www.gov.cn/zhengce/pdfFile/1969_PDF.pdf"
            req.FileName = "1969_PDF.pdf"
            let model = try await client.submitConvertPdfToImageJobAdvance(req)
            print(model)
        }
    }
    
    private func imageToPdf() {
        guard let client = client else { return }
        Task {
            let req: AlibabacloudDocMindApi.SubmitConvertImageToPdfJobRequest = .init()
            req.ImageUrls = [
                "https://img.tukuppt.com/preview/2402760/00/00/84/5b0e597d2730c.jpg-0.jpg",
                "https://www.2xx.vip/wp-content/uploads/2021/03/7cd79e8d003bb28f5d60335fe779085a.png"
            ]
            req.ImageNameExtension = "jpg"
            let model = try await client.submitConvertImageToPdfJobAdvance(req)
            print(model)
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            pdfToWord()
        case 1:
            imageToWord()
        case 2:
            pdfToExcel()
        case 3:
            imageToExcel()
        case 4:
            pdfToImage()
        case 5:
            imageToPdf()
            
        default: break
        }
    }
    
}
