//
//  TwoViewController.swift
//  UIKitProject
//
//  Created by Arthur111 Magomedov on 22.08.2021.
//

import UIKit
import AVFAudio
class TwoViewController: UIViewController {
    var player = AVAudioPlayer()
    let imageFon = UIImageView()
    var songMaxDurration = Float()
    var songID = String()
    
    let labelXX = UILabel()
    let labelHeadingHome = UILabel()
    let labelPlayinFromAlbum = UILabel()
    let label = UILabel()
    let timeSongLabel = UILabel()
    let activityController = UIActivityViewController(activityItems: [], applicationActivities: nil)
    
    let buttonClear = UIButton()
    let buttonPause = UIButton()
    let buttonShare = UIButton()
    let buttonRight = UIButton()
    let buttonLeft = UIButton()
    
    
    let sliderDurration = UISlider()
    let sliderVolume = UISlider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        do {
            if let pathh = Bundle.main.path(forResource:"Bouche - Bemy_lover", ofType: "mp3") {
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: pathh))
                Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updatesliderDurat) , userInfo: nil, repeats: true)
                sliderDurration.maximumValue = Float(player.duration)
                 
                timeSongLabel.text = songID
            }
        }catch{
            print("Error")
        
            self.player.play()
        }
        
        //create labelXX
        labelXX.frame = CGRect(x: 150, y: 465, width: 120, height: 50)
        labelXX.text = "80x And 90x"
        labelXX.textColor = UIColor.systemGray
        labelXX.font = UIFont.systemFont(ofSize: 14)
        view.addSubview(labelXX)
        
        
        //create labelHeadingHome
        labelHeadingHome.frame = CGRect(x: 140, y: 440, width: 140, height: 50)
        labelHeadingHome.text = "Heading Home"
        labelHeadingHome.textColor = UIColor.black
        labelHeadingHome.font = UIFont.systemFont(ofSize: 16)
        view.addSubview(labelHeadingHome)
        
        
        //create labelPlayingFromAlbum
        labelPlayinFromAlbum.frame = CGRect(x: 115, y: 112, width: 160, height: 50)
        labelPlayinFromAlbum.text = "Playing from album"
        labelPlayinFromAlbum.textColor = UIColor.systemGray
        view.addSubview(labelPlayinFromAlbum)
        
        
        //create label
        label.frame = CGRect(x: 140, y: 135, width: 140, height: 50)
        label.text = "Heading Houme"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14)
        view.addSubview(label)
        
        //create buttonLeft
        buttonLeft.frame = CGRect(x: 120, y: 690, width: 60, height: 60)
        buttonLeft.setImage(UIImage(systemName: "arrowtriangle.backward.fill"), for: .normal)
        buttonLeft.setImage(UIImage(systemName: "arrowtriangle.left"), for: .highlighted)
        buttonLeft.tintColor = .black
        buttonLeft.addTarget(self, action: #selector(method), for: .touchUpInside)
        view.addSubview(buttonLeft)
        
        //create buttonright
        buttonRight.frame = CGRect(x: 210, y: 690, width: 60, height: 60)
        buttonRight.setImage(UIImage(systemName: "arrowtriangle.right.fill"), for: .normal)
        buttonRight.setImage(UIImage(systemName: "arrowtriangle.right"), for: .highlighted)
        buttonRight.addTarget(self, action: #selector(method), for: .touchUpInside)
        buttonRight.tintColor = .black
        view.addSubview(buttonRight)
        
        
        //create buttonShare
        buttonShare.frame = CGRect(x: 300, y: 10, width: 70, height: 70)
        buttonShare.setImage(UIImage(systemName: "square.and.arrow.down"), for: .normal)
        buttonShare.setImage(UIImage(systemName: "square.and.arrow.down.fill"), for: .normal)
        buttonShare.tintColor = UIColor.systemGray
        buttonShare.addTarget(self, action: #selector(activituContr(sender:)), for:  .touchUpInside)
        view.addSubview(buttonShare)
        
        
        
        //create timeSongLabel
        timeSongLabel.frame = CGRect(x: 280, y: 500, width: 50, height: 50)
        timeSongLabel.textColor = UIColor.systemGray6
        view.addSubview(timeSongLabel)
        
        //create sliderVolume
        sliderVolume.frame = CGRect(x: 50, y: 610, width: 280, height: 40)
        sliderVolume.maximumValue = 100.0
        sliderVolume.minimumValue = 0.0
        sliderVolume.addTarget(self, action: #selector(sliderVolume(sender:)), for: .valueChanged)
        view.addSubview(sliderVolume)
        
        //create imageFon
        imageFon.frame = CGRect(x: 30, y: 180, width: 320, height: 280)
        imageFon.image = UIImage(named: "ee68ff60081ec672e98efa36b0deaed0.jpg")
        view.addSubview(imageFon)
        
        //create sliderDurration
        sliderDurration.frame = CGRect(x: 50, y: 540, width: 280, height: 50)
        sliderDurration.maximumValue = 100.0
        sliderDurration.minimumValue = 0.0
        sliderDurration.addTarget(self, action: #selector(sliderDurrat(sender:)), for: .valueChanged)
        view.addSubview(sliderDurration)
        
       //create buttonClear
        buttonClear.frame = CGRect(x: 10, y: 10, width: 70, height: 70)
        buttonClear.setImage(UIImage(systemName: "arrow.down.to.line"), for: .normal)
        buttonClear.setImage(UIImage(systemName: "arrow.down.to.line"), for: .normal)
        buttonClear.tintColor = UIColor.systemGray
        buttonClear.addTarget(self, action: #selector(buttonClear(sender:)), for: .touchUpInside)
        view.addSubview(buttonClear)
    
        //create buttonPause
        buttonPause.frame = CGRect(x: 165, y: 690, width: 60, height: 60)
        buttonPause.setImage(UIImage(systemName: "playpause.fill"), for: .normal)
        buttonPause.setImage(UIImage(systemName: "playpause"), for: .highlighted)
        buttonPause.setTitleColor(UIColor.systemBlue, for: .normal)
        buttonPause.setTitleColor(UIColor.systemGray6, for: .highlighted)
        buttonPause.tintColor = .black
        buttonPause.addTarget(self, action: #selector(buttonPausePlay(sender:)), for: .touchUpInside)
        view.addSubview(buttonPause)
        
    }
    
    //MARK: Method buttonClear
    @objc func buttonClear(sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }

    //MARK: Method updateSliderDurrat
    @objc func updatesliderDurat(sende: UISlider) {
        sliderDurration.value = Float(player.currentTime)
        timeSongLabel.text = player.currentTime.currentTime()
    }
    
    //MARK: Method sliderDurrat
    @objc func sliderDurrat(sender: UISlider) {
        if sender == sliderDurration {
            self.player.currentTime = TimeInterval(sender.value)
        }
    }
    //MARK: Method buttonPause
    
    @objc func buttonPausePlay(sender: UIButton) {
        if player.isPlaying {
            player.pause()
            buttonPause.setImage(UIImage(systemName: "playpause.fill"), for: .normal)
        } else {
            player.play()
            buttonPause.setImage(UIImage(systemName: "playpause"), for: .normal)
        }
    }
     
     //MARK: Method sliderVolume
    
    @objc func sliderVolume(sender: UISlider) {
        player.volume = sliderVolume.value
    }

//  9. Добавить функционал для кнопки share (UIActivityController) (заменить картинку бургеры в правом верхнем углу на кнопку share)
   //MARK: Method acrivituContr
    @objc func activituContr(sender: UIButton) {
        let activityController = UIActivityViewController(activityItems:  [timeSongLabel.text ?? ""], applicationActivities: nil)
        present(activityController, animated: true, completion: nil)
    }

}

extension TimeInterval {
    func currentTime() -> String {
        
        let time = NSInteger(self)
        let minute = time % 99
        let seconde = (time / 2) % 60
       return String(format: "%0.2d:%0.2d", minute, seconde)
    }
}
