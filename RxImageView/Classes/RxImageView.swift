//
//  RxImageView.swift
//  Pods
//
//  Created by Arnaud Dorgans on 29/08/2017.
//
//

import UIKit
import RxCocoa
import RxSwift
import SDWebImage

extension Reactive where Base: UIImageView {
    
    public func imageURL(withPlaceholder placeholderImage: UIImage?, options: SDWebImageOptions = [], progress: SDWebImageDownloaderProgressBlock? = nil) -> UIBindingObserver<Base, URL?> {
        return UIBindingObserver(UIElement: self.base, binding: { (imageView, url) in
            imageView.sd_setImage(with: url, placeholderImage: placeholderImage, options: options, progress: progress, completed: nil)
        })
    }
    
    public var imageURL: UIBindingObserver<Base, URL?> {
        return self.imageURL(withPlaceholder: nil)
    }
    
    public func imageWithPreviousCachedImage(withPlaceholder placeholderImage: UIImage? = nil, options: SDWebImageOptions = [], progress: SDWebImageDownloaderProgressBlock? = nil) -> UIBindingObserver<Base, URL?> {
        return UIBindingObserver(UIElement: self.base, binding: { (imageView, url) in
            imageView.sd_setImageWithPreviousCachedImage(with: url, placeholderImage: placeholderImage, options: options, progress: progress, completed: nil)
        })
    }
    
    public var highlightedImage: UIBindingObserver<Base, URL?> {
        return self.highlightedImage()
    }
    
    public func highlightedImage(withOptions options: SDWebImageOptions = [], progress: SDWebImageDownloaderProgressBlock? = nil) -> UIBindingObserver<Base, URL?> {
        return UIBindingObserver(UIElement: self.base, binding: { (imageView, url) in
            imageView.sd_setHighlightedImage(with: url, options: options, progress: progress, completed: nil)
        })
    }
    
    public var animationImages: UIBindingObserver<Base, [URL]> {
        return UIBindingObserver(UIElement: self.base, binding: { (imageView, urls) in
            imageView.sd_setAnimationImages(with: urls)
        })
    }
}
