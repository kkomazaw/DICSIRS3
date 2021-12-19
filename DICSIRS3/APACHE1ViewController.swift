//
//  APACHE1ViewController.swift
//  DICSIRS3
//
//  Created by Matsui Keiji on 2015/01/13.
//  Copyright (c) 2015年 Matsui Keiji. All rights reserved.
//

import UIKit

class APACHE1ViewController: UIViewController {
    
    @IBOutlet var ShinbuTaion:UIButton!
    @IBOutlet var HeikinDoumyakuatsu:UIButton!
    @IBOutlet var Shinpakusu:UIButton!
    @IBOutlet var Kokyusu:UIButton!
    @IBOutlet var Sansokano:UIButton!
    @IBOutlet var DoumyakuketsuPH:UIButton!
    @IBOutlet var Natrium:UIButton!
    @IBOutlet var Karium:UIButton!
    @IBOutlet var Creatinin:UIButton!
    @IBOutlet var Hct:UIButton!
    @IBOutlet var WBC:UIButton!
    @IBOutlet var GCS:UIButton!
    @IBOutlet var Nenrei:UIButton!
    @IBOutlet var Manseibyoutai:UIButton!
    
    @IBOutlet var FirstButton:UIButton!
    @IBOutlet var SecondButton:UIButton!
    @IBOutlet var ThirdButton:UIButton!
    @IBOutlet var FourthButton:UIButton!
    @IBOutlet var FifthButton:UIButton!
    @IBOutlet var SixthButton:UIButton!
    @IBOutlet var SeventhButton:UIButton!
    @IBOutlet var EighthButton:UIButton!
    @IBOutlet var SansokanoLabel:UILabel!
    
    @IBOutlet var ShinbuTaionLabel:UILabel!
    @IBOutlet var HeikinDoumyakuatsuLabel:UILabel!
    @IBOutlet var ShinpakusuLabel:UILabel!
    @IBOutlet var KokyusuLabel:UILabel!
    @IBOutlet var SansokanoUpperLabel:UILabel!
    @IBOutlet var DoumyakuketsuLabel:UILabel!
    @IBOutlet var NatriumLabel:UILabel!
    @IBOutlet var KariumLabel:UILabel!
    @IBOutlet var CreatininLabel:UILabel!
    @IBOutlet var HctLabel:UILabel!
    @IBOutlet var WBCLabel:UILabel!
    @IBOutlet var GCSLabel:UILabel!
    @IBOutlet var NenreiLabel:UILabel!
    @IBOutlet var ManseibyoutaiLabel:UILabel!
    @IBOutlet var resetButton:UIButton!
    
    @IBOutlet var Kyuseijinfuzen:UISegmentedControl!
    @IBOutlet var APACHEPoint:UILabel!
    
    var flagOfUpperButton=1
    var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    var receivedGCSpoint=0
    
    var vShinbuTaion=0
    var vHeikinDoumyakuatsu=0
    var vShinpakusu=0
    var vKokyusu=0
    var vSansokano=0
    var vDoumyakuketsuPH=0
    var vNatrium=0
    var vKarium=0
    var vCreatinin=0
    var vHct=0
    var vWBC=0
    var vNenrei=0
    var vManseibyoutai=0
    var vAPACHE=0
    
    func CalculateAPACHE(){
        vAPACHE=vShinbuTaion+vHeikinDoumyakuatsu+vShinpakusu+vKokyusu+vSansokano+vDoumyakuketsuPH+vNatrium+vKarium+vCreatinin+vHct+vWBC+vNenrei+vManseibyoutai+receivedGCSpoint
        APACHEPoint.text="\(vAPACHE)"
    }
    
    func HideLowerButtons(){
        FirstButton.isHidden=true
        SecondButton.isHidden=true
        ThirdButton.isHidden=true
        FourthButton.isHidden=true
        FifthButton.isHidden=true
        SixthButton.isHidden=true
        SeventhButton.isHidden=true
        EighthButton.isHidden=true
    }
    
    func ShowLowerButtons(){
        FirstButton.isHidden=false
        SecondButton.isHidden=false
        ThirdButton.isHidden=false
        FourthButton.isHidden=false
        FifthButton.isHidden=false
        SixthButton.isHidden=false
        SeventhButton.isHidden=false
        EighthButton.isHidden=false
    }
    
    func HideUpperButtons(){
        ShinbuTaion.isHidden=true
        HeikinDoumyakuatsu.isHidden=true
        Shinpakusu.isHidden=true
        Kokyusu.isHidden=true
        Sansokano.isHidden=true
        DoumyakuketsuPH.isHidden=true
        Natrium.isHidden=true
        Karium.isHidden=true
        Creatinin.isHidden=true
        Hct.isHidden=true
        WBC.isHidden=true
        GCS.isHidden=true
        Nenrei.isHidden=true
        Manseibyoutai.isHidden=true
        resetButton.isHidden=true
    }
    
    func ShowUpperButtons(){
        ShinbuTaion.isHidden=false
        HeikinDoumyakuatsu.isHidden=false
        Shinpakusu.isHidden=false
        Kokyusu.isHidden=false
        Sansokano.isHidden=false
        DoumyakuketsuPH.isHidden=false
        Natrium.isHidden=false
        Karium.isHidden=false
        Creatinin.isHidden=false
        Hct.isHidden=false
        WBC.isHidden=false
        GCS.isHidden=false
        Nenrei.isHidden=false
        Manseibyoutai.isHidden=false
        resetButton.isHidden=false
        SansokanoLabel.text=""
        Kyuseijinfuzen.isHidden=true
    }
    
    func HideLabels(){
        ShinbuTaionLabel.isHidden=true
        HeikinDoumyakuatsuLabel.isHidden=true
        ShinpakusuLabel.isHidden=true
        KokyusuLabel.isHidden=true
        SansokanoUpperLabel.isHidden=true
        DoumyakuketsuLabel.isHidden=true
        NatriumLabel.isHidden=true
        KariumLabel.isHidden=true
        CreatininLabel.isHidden=true
        HctLabel.isHidden=true
        WBCLabel.isHidden=true
        GCSLabel.isHidden=true
        NenreiLabel.isHidden=true
        ManseibyoutaiLabel.isHidden=true
    }
    
    func ShowLabels(){
        ShinbuTaionLabel.isHidden=false
        HeikinDoumyakuatsuLabel.isHidden=false
        ShinpakusuLabel.isHidden=false
        KokyusuLabel.isHidden=false
        SansokanoUpperLabel.isHidden=false
        DoumyakuketsuLabel.isHidden=false
        NatriumLabel.isHidden=false
        KariumLabel.isHidden=false
        CreatininLabel.isHidden=false
        HctLabel.isHidden=false
        WBCLabel.isHidden=false
        GCSLabel.isHidden=false
        NenreiLabel.isHidden=false
        ManseibyoutaiLabel.isHidden=false
    }
    
    func ClearLabels(){
        ShinbuTaionLabel.text=""
        HeikinDoumyakuatsuLabel.text=""
        ShinpakusuLabel.text=""
        KokyusuLabel.text=""
        SansokanoUpperLabel.text=""
        DoumyakuketsuLabel.text=""
        NatriumLabel.text=""
        KariumLabel.text=""
        CreatininLabel.text=""
        HctLabel.text=""
        WBCLabel.text=""
        GCSLabel.text=""
        NenreiLabel.text=""
        ManseibyoutaiLabel.text=""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.HideLowerButtons()
        self.ClearLabels()
        SansokanoLabel.text=""
        Kyuseijinfuzen.isHidden=true
        // Do any additional setup after loading the view.
    }//override func viewDidLoad()
    
    @IBAction func resetButtonTapped(){
        self.ShowUpperButtons()
        self.ClearLabels()
        self.HideLowerButtons()
        Kyuseijinfuzen.selectedSegmentIndex=0
        receivedGCSpoint=0
        vShinbuTaion=0
        vHeikinDoumyakuatsu=0
        vShinpakusu=0
        vKokyusu=0
        vSansokano=0
        vDoumyakuketsuPH=0
        vNatrium=0
        vKarium=0
        vCreatinin=0
        vHct=0
        vWBC=0
        vNenrei=0
        vManseibyoutai=0
        SansokanoLabel.text=""
        APACHEPoint.text="0"
        vAPACHE=0
    }
    
    @IBAction func ShinbuTaionButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        ShinbuTaion.isHidden=false
        flagOfUpperButton=1
        FirstButton.setTitle("    ≧41        (4点)", for: UIControlState())
        SecondButton.setTitle(" 39-40.9      (3点)", for: UIControlState())
        ThirdButton.setTitle("38.5-38.9     (1点)", for: UIControlState())
        FourthButton.setTitle(" 36-38.4      (0点)", for: UIControlState())
        FifthButton.setTitle(" 34-35.9      (1点)", for: UIControlState())
        SixthButton.setTitle(" 32-33.9      (2点)", for: UIControlState())
        SeventhButton.setTitle(" 30-31.9     (3点)", for: UIControlState())
        EighthButton.setTitle("  ≦29.9       (4点)", for: UIControlState())
    }
    
    @IBAction func HeikinDoumyakuatsuButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        HeikinDoumyakuatsu.isHidden=false
        flagOfUpperButton=2
        FirstButton.setTitle("   ≧160       (4点)", for: UIControlState())
        SecondButton.setTitle(" 130-159      (3点)", for: UIControlState())
        ThirdButton.setTitle("  110-129      (2点)", for: UIControlState())
        FourthButton.setTitle(" 70-109      (0点)", for: UIControlState())
        FifthButton.setTitle("   50-69       (2点)", for: UIControlState())
        SixthButton.setTitle("    ≦49        (4点)", for: UIControlState())
        SeventhButton.isHidden=true
        EighthButton.isHidden=true
    }
    
    @IBAction func ShinpakusuButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        Shinpakusu.isHidden=false
        flagOfUpperButton=3
        FirstButton.setTitle("   ≧180       (4点)", for: UIControlState())
        SecondButton.setTitle(" 140-179      (3点)", for: UIControlState())
        ThirdButton.setTitle("  110-139      (2点)", for: UIControlState())
        FourthButton.setTitle(" 70-109      (0点)", for: UIControlState())
        FifthButton.setTitle("   55-69       (2点)", for: UIControlState())
        SixthButton.setTitle("   40-54       (3点)", for: UIControlState())
        SeventhButton.setTitle("    ≦39        (4点)", for: UIControlState())
        EighthButton.isHidden=true
    }
    
    @IBAction func KokyusuButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        Kokyusu.isHidden=false
        flagOfUpperButton=4
        FirstButton.setTitle("   ≧50        (4点)", for: UIControlState())
        SecondButton.setTitle("  35-49       (3点)", for: UIControlState())
        ThirdButton.setTitle("   25-34       (1点)", for: UIControlState())
        FourthButton.setTitle("  12-24       (0点)", for: UIControlState())
        FifthButton.setTitle("   10-11       (1点)", for: UIControlState())
        SixthButton.setTitle("     6-9         (2点)", for: UIControlState())
        SeventhButton.setTitle("     ≦5         (4点)", for: UIControlState())
        EighthButton.isHidden=true
    }
    
    @IBAction func SansokanoButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        Sansokano.isHidden=false
        flagOfUpperButton=5
        SansokanoLabel.text="FiO2>0.5はA-aDO2, FiO2<0.5はPaO2で評価"
        FirstButton.setTitle("  A-aDO2     ≧500       (4点)", for: UIControlState())
        SecondButton.setTitle("  A-aDO2   350-499     (3点)", for: UIControlState())
        ThirdButton.setTitle("  A-aDO2   200-349     (2点)", for: UIControlState())
        FourthButton.setTitle("  A-aDO2     <200         (0点)", for: UIControlState())
        FifthButton.setTitle("   PaO2        >70          (0点)", for: UIControlState())
        SixthButton.setTitle("   PaO2       61-70       (1点)", for: UIControlState())
        SeventhButton.setTitle("   PaO2       55-60       (3点)", for: UIControlState())
        EighthButton.setTitle("   PaO2        <55          (4点)", for: UIControlState())
    }
    
    @IBAction func DoumyakuketsuPHButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        DoumyakuketsuPH.isHidden=false
        flagOfUpperButton=6
        FirstButton.setTitle(" pH≧7.7/ HCO3≧ 52 (4点)", for: UIControlState())
        SecondButton.setTitle("p7.6-7.69/H41-51.9    (3点)", for: UIControlState())
        ThirdButton.setTitle("p7.5-7.59/H32-40.9    (1点)", for: UIControlState())
        FourthButton.setTitle("p7.33-.49/H22-31.9     (0点)", for: UIControlState())
        FifthButton.setTitle("p7.25-.32/H18-21.9     (2点)", for: UIControlState())
        SixthButton.setTitle("p7.15-.24/H15-17.9     (3点)", for: UIControlState())
        SeventhButton.setTitle("pH<7.15/ HCO3<15    (4点)", for: UIControlState())
        EighthButton.isHidden=true
    }
    
    @IBAction func NatriumButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        Natrium.isHidden=false
        flagOfUpperButton=7
        FirstButton.setTitle("   ≧180       (4点)", for: UIControlState())
        SecondButton.setTitle(" 160-179      (3点)", for: UIControlState())
        ThirdButton.setTitle(" 155-159      (2点)", for: UIControlState())
        FourthButton.setTitle(" 150-154      (1点)", for: UIControlState())
        FifthButton.setTitle("  130-149      (0点)", for: UIControlState())
        SixthButton.setTitle("  120-129      (2点)", for: UIControlState())
        SeventhButton.setTitle("   ≦119       (4点)", for: UIControlState())
        EighthButton.isHidden=true
    }
    
    @IBAction func KariumButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        Karium.isHidden=false
        flagOfUpperButton=8
        FirstButton.setTitle("     ≧7         (4点)", for: UIControlState())
        SecondButton.setTitle("  6.0-6.9      (3点)", for: UIControlState())
        ThirdButton.setTitle("  5.5-5.9      (1点)", for: UIControlState())
        FourthButton.setTitle("  3.5-5.4      (0点)", for: UIControlState())
        FifthButton.setTitle("    3-3.4       (1点)", for: UIControlState())
        SixthButton.setTitle("  2.5-2.9      (2点)", for: UIControlState())
        SeventhButton.setTitle("    <2.5         (4点)", for: UIControlState())
        EighthButton.isHidden=true
    }
    
    @IBAction func CreatininButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        Creatinin.isHidden=false
        flagOfUpperButton=9
        Kyuseijinfuzen.isHidden=false
        switch Kyuseijinfuzen.selectedSegmentIndex{
        case 0:
            FirstButton.setTitle("   ≧3.5        (4点)", for: UIControlState())
            SecondButton.setTitle("  2.0-3.4      (3点)", for: UIControlState())
            ThirdButton.setTitle("  1.5-1.9      (2点)", for: UIControlState())
            FourthButton.setTitle("  0.6-1.4      (0点)", for: UIControlState())
            FifthButton.setTitle("    <0.6         (2点)", for: UIControlState())
            SixthButton.isHidden=true
            SeventhButton.isHidden=true
            EighthButton.isHidden=true
        case 1:
            FirstButton.setTitle("   ≧3.5        (8点)", for: UIControlState())
            SecondButton.setTitle("  2.0-3.4      (6点)", for: UIControlState())
            ThirdButton.setTitle("  1.5-1.9      (4点)", for: UIControlState())
            FourthButton.setTitle("  0.6-1.4      (0点)", for: UIControlState())
            FifthButton.setTitle("    <0.6         (4点)", for: UIControlState())
            SixthButton.isHidden=true
            SeventhButton.isHidden=true
            EighthButton.isHidden=true
        default:
            FirstButton.setTitle("   ≧3.5        (4点)", for: UIControlState())
            SecondButton.setTitle("  2.0-3.4      (3点)", for: UIControlState())
            ThirdButton.setTitle("  1.5-1.9      (2点)", for: UIControlState())
            FourthButton.setTitle("  0.6-1.4      (0点)", for: UIControlState())
            FifthButton.setTitle("    <0.6         (2点)", for: UIControlState())
            SixthButton.isHidden=true
            SeventhButton.isHidden=true
            EighthButton.isHidden=true
        }//switch Kyuseijinfuzen.selectedSegmentIndex
    }//@IBAction func CreatininButtonTapped()
    
    @IBAction func KyuseijinfuzenValueChanged(){
        switch Kyuseijinfuzen.selectedSegmentIndex{
        case 0:
            FirstButton.setTitle("   ≧3.5        (4点)", for: UIControlState())
            SecondButton.setTitle("  2.0-3.4      (3点)", for: UIControlState())
            ThirdButton.setTitle("  1.5-1.9      (2点)", for: UIControlState())
            FourthButton.setTitle("  0.6-1.4      (0点)", for: UIControlState())
            FifthButton.setTitle("    <0.6         (2点)", for: UIControlState())
            SixthButton.isHidden=true
            SeventhButton.isHidden=true
            EighthButton.isHidden=true
        case 1:
            FirstButton.setTitle("   ≧3.5        (8点)", for: UIControlState())
            SecondButton.setTitle("  2.0-3.4      (6点)", for: UIControlState())
            ThirdButton.setTitle("  1.5-1.9      (4点)", for: UIControlState())
            FourthButton.setTitle("  0.6-1.4      (0点)", for: UIControlState())
            FifthButton.setTitle("    <0.6         (4点)", for: UIControlState())
            SixthButton.isHidden=true
            SeventhButton.isHidden=true
            EighthButton.isHidden=true
        default:
            FirstButton.setTitle("   ≧3.5        (4点)", for: UIControlState())
            SecondButton.setTitle("  2.0-3.4      (3点)", for: UIControlState())
            ThirdButton.setTitle("  1.5-1.9      (2点)", for: UIControlState())
            FourthButton.setTitle("  0.6-1.4      (0点)", for: UIControlState())
            FifthButton.setTitle("    <0.6         (2点)", for: UIControlState())
            SixthButton.isHidden=true
            SeventhButton.isHidden=true
            EighthButton.isHidden=true
        }//switch Kyuseijinfuzen.selectedSegmentIndex
    }//@IBAction func KyuseijinfuzenValueChanged()
    
    @IBAction func HctButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        Hct.isHidden=false
        flagOfUpperButton=10
        FirstButton.setTitle("    ≧60         (4点)", for: UIControlState())
        SecondButton.setTitle("  50-59.9     (2点)", for: UIControlState())
        ThirdButton.setTitle("  46-49.9     (1点)", for: UIControlState())
        FourthButton.setTitle("  30-45.9     (0点)", for: UIControlState())
        FifthButton.setTitle("  20-29.9     (2点)", for: UIControlState())
        SixthButton.setTitle("    <20          (4点)", for: UIControlState())
        SeventhButton.isHidden=true
        EighthButton.isHidden=true
    }
    
    @IBAction func WBCButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        WBC.isHidden=false
        flagOfUpperButton=11
        FirstButton.setTitle("≧40,000     (4点)", for: UIControlState())
        SecondButton.setTitle(" 20,000 -   39,900       (2点)", for: UIControlState())
        ThirdButton.setTitle(" 15,000 -   19,900       (1点)", for: UIControlState())
        FourthButton.setTitle("  3,000 -   14,900       (0点)", for: UIControlState())
        FifthButton.setTitle("  1,000 -     2,900        (2点)", for: UIControlState())
        SixthButton.setTitle("  <1,000       (4点)", for: UIControlState())
        SeventhButton.isHidden=true
        EighthButton.isHidden=true
    }
    
    @IBAction func GCSButtonTapped(){
        self.ShowUpperButtons()
        self.HideLowerButtons()
        self.HideLabels()
        flagOfUpperButton=12
    }
    
    @IBAction func backFromSecondView(_ segue:UIStoryboardSegue){
        resetButton.isHidden=false
        receivedGCSpoint=15-appDelegate.vGCSpoint
        GCSLabel.text="\(receivedGCSpoint)"
        self.ShowLabels()
        self.CalculateAPACHE()
    }
    
    @IBAction func NenreiButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        Nenrei.isHidden=false
        flagOfUpperButton=13
        FirstButton.setTitle("   ≦44歳       (0点)", for: UIControlState())
        SecondButton.setTitle("  45-54歳      (1点)", for: UIControlState())
        ThirdButton.setTitle("  55-64歳     (3点)", for: UIControlState())
        FourthButton.setTitle("  65-74歳     (5点)", for: UIControlState())
        FifthButton.setTitle("  ≧75歳       (6点)", for: UIControlState())
        SixthButton.isHidden=true
        SeventhButton.isHidden=true
        EighthButton.isHidden=true
    }
    
    @IBAction func ManseibyoutaiButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        Manseibyoutai.isHidden=false
        SansokanoLabel.text="慢性病態:入院前からある臓器不全や免疫不全"
        flagOfUpperButton=14
        FirstButton.setTitle("   慢性病　態なし       (0点)", for: UIControlState())
        SecondButton.setTitle("既往+待機手術後         (2点)", for: UIControlState())
        ThirdButton.setTitle("重篤な臓器/免疫不全 (5点)", for: UIControlState())
        FourthButton.isHidden=true
        FifthButton.isHidden=true
        SixthButton.isHidden=true
        SeventhButton.isHidden=true
        EighthButton.isHidden=true
    }
    
    @IBAction func FirstButtonTapped(){
        self.HideLowerButtons()
        self.ShowUpperButtons()
        self.ShowLabels()
        switch flagOfUpperButton{
        case 1:
            vShinbuTaion=4
            ShinbuTaionLabel.text="\(vShinbuTaion)"
        case 2:
            vHeikinDoumyakuatsu=4
            HeikinDoumyakuatsuLabel.text="\(vHeikinDoumyakuatsu)"
        case 3:
            vShinpakusu=4
            ShinpakusuLabel.text="\(vShinpakusu)"
        case 4:
            vKokyusu=4
            KokyusuLabel.text="\(vKokyusu)"
        case 5:
            vSansokano=4
            SansokanoUpperLabel.text="\(vSansokano)"
        case 6:
            vDoumyakuketsuPH=4
            DoumyakuketsuLabel.text="\(vDoumyakuketsuPH)"
        case 7:
            vNatrium=4
            NatriumLabel.text="\(vNatrium)"
        case 8:
            vKarium=4
            KariumLabel.text="\(vKarium)"
        case 9:
            vCreatinin=4+4*Kyuseijinfuzen.selectedSegmentIndex
            CreatininLabel.text="\(vCreatinin)"
        case 10:
            vHct=4
            HctLabel.text="\(vHct)"
        case 11:
            vWBC=4
            WBCLabel.text="\(vWBC)"
        case 12:
            GCSLabel.isHidden=false
        case 13:
            vNenrei=0
            NenreiLabel.text="\(vNenrei)"
        case 14:
            vManseibyoutai=0
            ManseibyoutaiLabel.text="\(vManseibyoutai)"
        default:
            vShinbuTaion=4
        }//switch flagOfUpperButton
        self.CalculateAPACHE()
    }//@IBAction func FirstButtonTapped()
    
    @IBAction func SecondButtonTapped(){
        self.HideLowerButtons()
        self.ShowUpperButtons()
        self.ShowLabels()
        switch flagOfUpperButton{
        case 1:
            vShinbuTaion=3
            ShinbuTaionLabel.text="\(vShinbuTaion)"
        case 2:
            vHeikinDoumyakuatsu=3
            HeikinDoumyakuatsuLabel.text="\(vHeikinDoumyakuatsu)"
        case 3:
            vShinpakusu=3
            ShinpakusuLabel.text="\(vShinpakusu)"
        case 4:
            vKokyusu=3
            KokyusuLabel.text="\(vKokyusu)"
        case 5:
            vSansokano=3
            SansokanoUpperLabel.text="\(vSansokano)"
        case 6:
            vDoumyakuketsuPH=3
            DoumyakuketsuLabel.text="\(vDoumyakuketsuPH)"
        case 7:
            vNatrium=3
            NatriumLabel.text="\(vNatrium)"
        case 8:
            vKarium=3
            KariumLabel.text="\(vKarium)"
        case 9:
            vCreatinin=3+3*Kyuseijinfuzen.selectedSegmentIndex
            CreatininLabel.text="\(vCreatinin)"
        case 10:
            vHct=2
            HctLabel.text="\(vHct)"
        case 11:
            vWBC=2
            WBCLabel.text="\(vWBC)"
        case 12:
            GCSLabel.isHidden=false
        case 13:
            vNenrei=1
            NenreiLabel.text="\(vNenrei)"
        case 14:
            vManseibyoutai=2
            ManseibyoutaiLabel.text="\(vManseibyoutai)"
        default:
            vShinbuTaion=4
        }//switch flagOfUpperButton
        self.CalculateAPACHE()
    }
    
    @IBAction func ThirdButtonTapped(){
        self.HideLowerButtons()
        self.ShowUpperButtons()
        self.ShowLabels()
        switch flagOfUpperButton{
        case 1:
            vShinbuTaion=1
            ShinbuTaionLabel.text="\(vShinbuTaion)"
        case 2:
            vHeikinDoumyakuatsu=2
            HeikinDoumyakuatsuLabel.text="\(vHeikinDoumyakuatsu)"
        case 3:
            vShinpakusu=2
            ShinpakusuLabel.text="\(vShinpakusu)"
        case 4:
            vKokyusu=1
            KokyusuLabel.text="\(vKokyusu)"
        case 5:
            vSansokano=2
            SansokanoUpperLabel.text="\(vSansokano)"
        case 6:
            vDoumyakuketsuPH=1
            DoumyakuketsuLabel.text="\(vDoumyakuketsuPH)"
        case 7:
            vNatrium=2
            NatriumLabel.text="\(vNatrium)"
        case 8:
            vKarium=1
            KariumLabel.text="\(vKarium)"
        case 9:
            vCreatinin=2+2*Kyuseijinfuzen.selectedSegmentIndex
            CreatininLabel.text="\(vCreatinin)"
        case 10:
            vHct=1
            HctLabel.text="\(vHct)"
        case 11:
            vWBC=1
            WBCLabel.text="\(vWBC)"
        case 12:
            GCSLabel.isHidden=false
        case 13:
            vNenrei=3
            NenreiLabel.text="\(vNenrei)"
        case 14:
            vManseibyoutai=5
            ManseibyoutaiLabel.text="\(vManseibyoutai)"
        default:
            resetButton.isHidden=false
        }//switch flagOfUpperButton
        self.CalculateAPACHE()
    }
    
    @IBAction func FourthButtonTapped(){
        self.HideLowerButtons()
        self.ShowUpperButtons()
        self.ShowLabels()
        switch flagOfUpperButton{
        case 1:
            vShinbuTaion=0
            ShinbuTaionLabel.text="\(vShinbuTaion)"
        case 2:
            vHeikinDoumyakuatsu=0
            HeikinDoumyakuatsuLabel.text="\(vHeikinDoumyakuatsu)"
        case 3:
            vShinpakusu=0
            ShinpakusuLabel.text="\(vShinpakusu)"
        case 4:
            vKokyusu=0
            KokyusuLabel.text="\(vKokyusu)"
        case 5:
            vSansokano=0
            SansokanoUpperLabel.text="\(vSansokano)"
        case 6:
            vDoumyakuketsuPH=0
            DoumyakuketsuLabel.text="\(vDoumyakuketsuPH)"
        case 7:
            vNatrium=1
            NatriumLabel.text="\(vNatrium)"
        case 8:
            vKarium=0
            KariumLabel.text="\(vKarium)"
        case 9:
            vCreatinin=0+0*Kyuseijinfuzen.selectedSegmentIndex
            CreatininLabel.text="\(vCreatinin)"
        case 10:
            vHct=0
            HctLabel.text="\(vHct)"
        case 11:
            vWBC=0
            WBCLabel.text="\(vWBC)"
        case 12:
            GCSLabel.isHidden=false
        case 13:
            vNenrei=5
            NenreiLabel.text="\(vNenrei)"
        default:
            resetButton.isHidden=false
        }//switch flagOfUpperButton
        self.CalculateAPACHE()
    }
    
    @IBAction func FifthButtonTapped(){
        self.HideLowerButtons()
        self.ShowUpperButtons()
        self.ShowLabels()
        switch flagOfUpperButton{
        case 1:
            vShinbuTaion=1
            ShinbuTaionLabel.text="\(vShinbuTaion)"
        case 2:
            vHeikinDoumyakuatsu=2
            HeikinDoumyakuatsuLabel.text="\(vHeikinDoumyakuatsu)"
        case 3:
            vShinpakusu=2
            ShinpakusuLabel.text="\(vShinpakusu)"
        case 4:
            vKokyusu=1
            KokyusuLabel.text="\(vKokyusu)"
        case 5:
            vSansokano=0
            SansokanoUpperLabel.text="\(vSansokano)"
        case 6:
            vDoumyakuketsuPH=2
            DoumyakuketsuLabel.text="\(vDoumyakuketsuPH)"
        case 7:
            vNatrium=0
            NatriumLabel.text="\(vNatrium)"
        case 8:
            vKarium=1
            KariumLabel.text="\(vKarium)"
        case 9:
            vCreatinin=2+2*Kyuseijinfuzen.selectedSegmentIndex
            CreatininLabel.text="\(vCreatinin)"
        case 10:
            vHct=2
            HctLabel.text="\(vHct)"
        case 11:
            vWBC=2
            WBCLabel.text="\(vWBC)"
        case 12:
            GCSLabel.isHidden=false
        case 13:
            vNenrei=6
            NenreiLabel.text="\(vNenrei)"
        default:
            resetButton.isHidden=false
        }//switch flagOfUpperButton
        self.CalculateAPACHE()
    }
    
    @IBAction func SixthButtonTapped(){
        self.HideLowerButtons()
        self.ShowUpperButtons()
        self.ShowLabels()
        switch flagOfUpperButton{
        case 1:
            vShinbuTaion=2
            ShinbuTaionLabel.text="\(vShinbuTaion)"
        case 2:
            vHeikinDoumyakuatsu=4
            HeikinDoumyakuatsuLabel.text="\(vHeikinDoumyakuatsu)"
        case 3:
            vShinpakusu=3
            ShinpakusuLabel.text="\(vShinpakusu)"
        case 4:
            vKokyusu=2
            KokyusuLabel.text="\(vKokyusu)"
        case 5:
            vSansokano=1
            SansokanoUpperLabel.text="\(vSansokano)"
        case 6:
            vDoumyakuketsuPH=3
            DoumyakuketsuLabel.text="\(vDoumyakuketsuPH)"
        case 7:
            vNatrium=2
            NatriumLabel.text="\(vNatrium)"
        case 8:
            vKarium=2
            KariumLabel.text="\(vKarium)"
        case 10:
            vHct=4
            HctLabel.text="\(vHct)"
        case 11:
            vWBC=4
            WBCLabel.text="\(vWBC)"
        case 12:
            GCSLabel.isHidden=false
        default:
            resetButton.isHidden=false
        }//switch flagOfUpperButton
        self.CalculateAPACHE()
    }
    
    @IBAction func SeventhButtonTapped(){
        self.HideLowerButtons()
        self.ShowUpperButtons()
        self.ShowLabels()
        switch flagOfUpperButton{
        case 1:
            vShinbuTaion=3
            ShinbuTaionLabel.text="\(vShinbuTaion)"
        case 3:
            vShinpakusu=4
            ShinpakusuLabel.text="\(vShinpakusu)"
        case 4:
            vKokyusu=4
            KokyusuLabel.text="\(vKokyusu)"
        case 5:
            vSansokano=3
            SansokanoUpperLabel.text="\(vSansokano)"
        case 6:
            vDoumyakuketsuPH=4
            DoumyakuketsuLabel.text="\(vDoumyakuketsuPH)"
        case 7:
            vNatrium=4
            NatriumLabel.text="\(vNatrium)"
        case 8:
            vKarium=4
            KariumLabel.text="\(vKarium)"
        case 12:
            GCSLabel.isHidden=false
        default:
            resetButton.isHidden=false
        }//switch flagOfUpperButton
        self.CalculateAPACHE()
    }
    
    @IBAction func EighthButtonTapped(){
        self.HideLowerButtons()
        self.ShowUpperButtons()
        self.ShowLabels()
        switch flagOfUpperButton{
        case 1:
            vShinbuTaion=4
            ShinbuTaionLabel.text="\(vShinbuTaion)"
        case 5:
            vSansokano=4
            SansokanoUpperLabel.text="\(vSansokano)"
        case 12:
            GCSLabel.isHidden=false
        default:
            resetButton.isHidden=false
        }//switch flagOfUpperButton
        self.CalculateAPACHE()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }//override func didReceiveMemoryWarning()
    
}//class APACHE1ViewController: UIViewController
