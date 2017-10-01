//
//  PhotoViewController.swift
//
//  Created by Duc Tran
//  Copyright (c) 2015 Developer Inspirus. All rights reserved.
//  http://www.developerinspirus.com

import UIKit

class PhotoViewController: UIViewController
{
	// MARK: - Public API
    var image: UIImage!
    var senderName: String!
    
    // MARK: - Private
    private var imageView: UIImageView!
	private var scrollView: UIScrollView!

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
        
        title = "Photo from \(senderName)"
        
		imageView = UIImageView(image: image)
        
		// take up the whole super view inner content
		scrollView = UIScrollView(frame: view.bounds)
		scrollView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
		scrollView.backgroundColor =  UIColor.blackColor()
		scrollView.contentSize = imageView.bounds.size	// the content size of the scroll view is the image size
		scrollView.delegate = self
		
		recenterImage()
		
		// Set up the view hierarchy
		scrollView.addSubview(imageView)
		view.addSubview(scrollView)
		
		scrollView.contentOffset = CGPoint(x: 400.0, y: 400.0)
		
		// Set zoom parameters: min/max zoom scale, starting zoom scale
		setZoomParametersForSize(scrollView.bounds.size)
		
		// Fit the image on the first launch
		scrollView.zoomScale = scrollView.minimumZoomScale
	}
	
	func recenterImage()
	{
		let scrollViewSize = scrollView.bounds.size
		let imageSize = imageView.frame.size
		
		let horizontalSpace = imageSize.width < scrollViewSize.width ? (scrollViewSize.width - imageSize.width) / 2 : 0
		let verticalSpace = imageSize.height < scrollViewSize.height ? (scrollViewSize.height - imageSize.height) / 2 : 0
		
		// Set the content inset
		scrollView.contentInset = UIEdgeInsets(top: verticalSpace, left: horizontalSpace, bottom: verticalSpace, right: horizontalSpace)
	}

	func setZoomParametersForSize(scrollViewSize: CGSize)
	{
		let imageSize = imageView.bounds.size // we want the size of the bounds that never change
											  // the size of the frame will change as we zoom
		
		let widthScale = scrollViewSize.width / imageSize.width
		let heightScale = scrollViewSize.height / imageSize.height
		let minScale = min(widthScale, heightScale)
		
		scrollView.minimumZoomScale = minScale
		scrollView.maximumZoomScale = 3.0

	}
	
	
	// after the rotation
	
	override func viewWillLayoutSubviews() {
		setZoomParametersForSize(scrollView.bounds.size)	// to determine landscape or portrait
		
		// If the device is in landscape again
		if scrollView.zoomScale < scrollView.minimumZoomScale
		{
			scrollView.zoomScale = scrollView.minimumZoomScale
		}
		
		recenterImage()
	}
	

}

extension PhotoViewController : UIScrollViewDelegate
{
	
	// ZOOMING
	
	func scrollViewDidZoom(scrollView: UIScrollView) {
		// when the user finish zooming, we would want to check if we want to recenter
		// the image or not
		recenterImage()
	}
	
	// The image view is the subview of the scroll view that it should zoom
	
	func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
		return imageView
	}
}
























