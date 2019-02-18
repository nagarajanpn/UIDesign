//
//  ViewController.swift
//  UIDesign
//
//  Created by wflogin on 16/02/19.
//  Copyright © 2019 Winfashion. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    var tTime = Timer()
    var currentIndex = -1
    
    @IBOutlet var video_PlayImageview: UIImageView!
    
    @IBOutlet var container_View: UIView!
    
    var animatingImages = ["1","3","4"]
    
    @IBOutlet var cont_WithEmailBtn: CustomeButton!
    
    @IBOutlet var fb_CustomeBtn: CustomeButton!
    
    @IBOutlet var google_CutomeBtn: CustomeButton!
    
    
    @IBOutlet var fb_Logo_Custom: CustomImageView!
    
    @IBOutlet var google_Logo_Custom: CustomImageView!
    
    
    @IBOutlet var email_Logo_Cutom: CustomImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // video_PlayImage()
        //self.animatingImages1()
        // Image array
        
        
        
        // Timer in viewdidload()
     
         // tTime = Timer.scheduledTimer(timeInterval: 4, target: self, selector: #selector(changeSlide(i: i)), userInfo: nil, repeats: true)
        for i in animatingImages {
            self.video_PlayImageview.image = UIImage(named: i)
//             tTime = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(changeSlide), userInfo: nil, repeats: true)
            changeSlide()
        }
       intialUIDesignFromCustom()
       
    }
    
    private func intialUIDesignFromCustom()  {
        // fb_CustomeBtn.contentHorizontalAlignment = .left
        //google_CutomeBtn.contentHorizontalAlignment = .left
        fb_CustomeBtn.setupFBCustomBtn()
        google_CutomeBtn.setupGoogleCustomBtn()
        cont_WithEmailBtn.setupWithEmailBtn()
        fb_Logo_Custom.setupImageView()
        google_Logo_Custom.setupImageView()
        email_Logo_Cutom.setupImageView()
        fb_Logo_Custom.image = UIImage(named: "1")
        google_Logo_Custom.image = UIImage(named: "4")
        email_Logo_Cutom.image = UIImage(named: "1")
        
    }
    // Timer function call
   
    func changeSlide()
    {
                UIView.animate(withDuration: 5, animations: {
                    /////self.video_PlayImageview.image = UIImage(named: i)
                    self.video_PlayImageview.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)}) { (_finished) in
                        UIView.animate(withDuration: 5, animations: {
                            ///self.video_PlayImageview.image = UIImage(named: i)
                            self.video_PlayImageview.transform = CGAffineTransform(scaleX: 1, y: 1)
                        })
                       //self.doAnimation(i: i)
                }
    }
    /*func video_PlayImage()  {
     let url1 = URL(string: "https://content.jwplatform.com/manifests/vM7nH0Kl.m3u8")
     let avPlayer = AVPlayer(playerItem: AVPlayerItem(url: url1!))
     let avPlayerLayer = AVPlayerLayer(player: avPlayer)
     avPlayerLayer.frame = container_View.bounds
     container_View.layer.insertSublayer(avPlayerLayer, at: 0)
     
     
     video_PlayImageview.frame = container_View.frame
     container_View.addSubview(video_PlayImageview)
     
     
     }*/
    func animatingImages1()  {
        //        animatingImages.forEach { (item) in
        //
        //        }
        
        for i in animatingImages{
            
            //            DispatchQueue.main.async {
            //                self.doAnimation(i: i)
            //            }
            DispatchQueue.main.asyncAfter(deadline:.now()+0.2) {
                self.doAnimation(i: i)
            }
        }
        
        
    }
    private func doAnimation(i:String){
        //        UIView.animate(withDuration: 5, animations: {
        //            self.video_PlayImageview.image = UIImage(named: i)
        //            self.video_PlayImageview.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)}) { (_finished) in
        //                UIView.animate(withDuration: 5, animations: {
        //                    self.video_PlayImageview.image = UIImage(named: i)
        //                    self.video_PlayImageview.transform = CGAffineTransform(scaleX: 1, y: 1)
        //                })
        //               //self.doAnimation(i: i)
        //        }
        
        UIView.animate(withDuration: 10) {
            self.video_PlayImageview.image = UIImage(named: i)
            self.video_PlayImageview.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
            self.video_PlayImageview.transform = CGAffineTransform(scaleX: 1, y: 1)
            
        }
        
    }
    
    @IBAction func fb_Btn_Action(_ sender: Any) {
        fb_CustomeBtn.shake()
    }
    
    
    @IBAction func google_BtnAction(_ sender: Any) {
        google_CutomeBtn.shake()
    }
    
    @IBAction func cont_WithEmailBtn_Actiobn(_ sender: Any) {
        cont_WithEmailBtn.shake()
    }
    
    
}

