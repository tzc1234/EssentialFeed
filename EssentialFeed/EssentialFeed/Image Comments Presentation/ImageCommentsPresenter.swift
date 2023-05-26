//
//  ImageCommentsPresenter.swift
//  EssentialFeed
//
//  Created by Tsz-Lung on 26/05/2023.
//

import Foundation

public final class ImageCommentsPresenter {
    public static var title: String {
        NSLocalizedString("IMAGE_COMMENTS_VIEW_TITLE",
                          tableName: "ImageComments",
                          bundle: Bundle(for: ImageCommentsPresenter.self),
                          comment: "Title for the image comments view")
    }
}
