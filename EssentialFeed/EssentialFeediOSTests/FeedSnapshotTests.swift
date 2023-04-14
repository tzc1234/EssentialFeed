//
//  FeedSnapshotTests.swift
//  EssentialFeediOSTests
//
//  Created by Tsz-Lung on 14/04/2023.
//

import XCTest
import EssentialFeediOS

final class FeedSnapshotTests: XCTestCase {

    func test_emptyFeed() {
        let sut = makeSUT()
        
        sut.display(emptyFeed())
        
        record(snapshot: sut.snapshot(), named: "EMPTY_FEED")
    }

    // MARK: - Helpers
    
    private func makeSUT() -> FeedViewController {
        let bundle = Bundle(for: FeedViewController.self)
        let storyboard = UIStoryboard(name: "Feed", bundle: bundle)
        let controller = storyboard.instantiateInitialViewController { coder in
            let controller = FeedViewController(coder: coder, delegate: DummayDelegate())
            controller?.title = ""
            return controller
        } as! FeedViewController
        controller.loadViewIfNeeded()
        return controller
    }
    
    private func emptyFeed() -> [FeedImageCellController] {
        []
    }
    
    private class DummayDelegate: FeedViewControllerDelegate {
        func didRequestFeedRefresh() {}
    }
    
    private func record(snapshot: UIImage, named name: String, file: StaticString = #filePath, line: UInt = #line) {
        guard let snapshotData = snapshot.pngData() else {
            XCTFail("Failed to generate PNG data representation from snapshot", file: file, line: line)
            return
        }
        
        // ../EssentialFeediOSTests/snapshots/EMPTY_FEED.png
        let snapshotURL = URL(filePath: String(describing: file))
            .deletingLastPathComponent()
            .appending(path: "snapshots")
            .appending(path: "\(name).png")
        
        do {
            try FileManager.default.createDirectory(
                at: snapshotURL.deletingLastPathComponent(),
                withIntermediateDirectories: true)
            
            try snapshotData.write(to: snapshotURL)
        } catch {
            XCTFail("Failed to record snapshot with error: \(error)", file: file, line: line)
        }
    }
    
}

extension UIViewController {
    func snapshot() -> UIImage {
        let rendered = UIGraphicsImageRenderer(bounds: view.bounds)
        return rendered.image { action in
            view.layer.render(in: action.cgContext)
        }
    }
}
