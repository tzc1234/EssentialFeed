//
//  ImageCommentsPresenter.swift
//  EssentialFeed
//
//  Created by Tsz-Lung on 26/05/2023.
//

import Foundation

public struct ImageCommentsViewModel: Equatable {
    public let comments: [ImageCommentViewModel]
}

public struct ImageCommentViewModel: Hashable {
    public let message: String
    public let date: String
    public let username: String
    
    public init(message: String, date: String, username: String) {
        self.message = message
        self.date = date
        self.username = username
    }
}

public final class ImageCommentsPresenter {
    public static var title: String {
        NSLocalizedString("IMAGE_COMMENTS_VIEW_TITLE",
                          tableName: "ImageComments",
                          bundle: Bundle(for: ImageCommentsPresenter.self),
                          comment: "Title for the image comments view")
    }
    
    public static func map(_ comments: [ImageComment], currentDate: Date = .now,
                           calendar: Calendar = .current, locale: Locale = .current) -> ImageCommentsViewModel {
        let formatter = RelativeDateTimeFormatter()
        formatter.calendar = calendar
        formatter.locale = locale
        
        return ImageCommentsViewModel(comments: comments.map { comment in
            ImageCommentViewModel(
                message: comment.message,
                date: formatter.localizedString(for: comment.createdAt, relativeTo: currentDate),
                username: comment.username)
        })
    }
}
