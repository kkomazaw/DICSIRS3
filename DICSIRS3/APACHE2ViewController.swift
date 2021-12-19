//
//  APACHE2ViewController.swift
//  DICSIRS3
//
//  Created by Matsui Keiji on 2015/01/13.
//  Copyright (c) 2015年 Matsui Keiji. All rights reserved.
//

import UIKit

class APACHE2ViewController: UIViewController {
    @IBOutlet var Shinpakusu:UIButton!
    @IBOutlet var Heikindoumyakuatsu:UIButton!
    @IBOutlet var Taion:UIButton!
    @IBOutlet var Kokyusu:UIButton!
    @IBOutlet var Sansokano:UIButton!
    @IBOutlet var Hct:UIButton!
    @IBOutlet var WBC:UIButton!
    @IBOutlet var Creatinin:UIButton!
    @IBOutlet var UrineOutput:UIButton!
    @IBOutlet var BUN:UIButton!
    @IBOutlet var Natrium:UIButton!
    @IBOutlet var Albumin:UIButton!
    @IBOutlet var Bilirubin:UIButton!
    @IBOutlet var Glucose:UIButton!
    @IBOutlet var Nenrei:UIButton!
    @IBOutlet var Heizonsho:UIButton!
    @IBOutlet var Konsuido:UIButton!
    @IBOutlet var AcidBase:UIButton!
    
    @IBOutlet var FirstButton:UIButton!
    @IBOutlet var SecondButton:UIButton!
    @IBOutlet var ThirdButton:UIButton!
    @IBOutlet var FourthButton:UIButton!
    @IBOutlet var FifthButton:UIButton!
    @IBOutlet var SixthButton:UIButton!
    @IBOutlet var SeventhButton:UIButton!
    @IBOutlet var EighthButton:UIButton!
    @IBOutlet var NinthButton:UIButton!
    
    @IBOutlet var ShinpakusuLabel:UILabel!
    @IBOutlet var HeikindoumyakuatsuLabel:UILabel!
    @IBOutlet var TaionLabel:UILabel!
    @IBOutlet var KokyusuLabel:UILabel!
    @IBOutlet var SansokanoLabel:UILabel!
    @IBOutlet var HctLabel:UILabel!
    @IBOutlet var WBCLabel:UILabel!
    @IBOutlet var CreatininLabel:UILabel!
    @IBOutlet var UrineOutputLabel:UILabel!
    @IBOutlet var BUNLabel:UILabel!
    @IBOutlet var NatriumLabel:UILabel!
    @IBOutlet var AlbuminLabel:UILabel!
    @IBOutlet var BilirubinLabel:UILabel!
    @IBOutlet var GlucoseLabel:UILabel!
    @IBOutlet var NenreiLabel:UILabel!
    @IBOutlet var HeizonshoLabel:UILabel!
    @IBOutlet var KonsuidoLabel:UILabel!
    @IBOutlet var AcidBaseLabel:UILabel!
    
    @IBOutlet var ResetButton:UIButton!
    @IBOutlet var FiO2Label:UILabel!
    @IBOutlet var APACHEpoint:UILabel!
    
    var flagOfUpperButton=1
    var appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    var vShinpakusu=0 //flag=1
    var vHeikindoumyakuatsu=0 //flag=2
    var vTaion=0 //flag=3
    var vKokyusu=0 //flag=4
    var vSansokano=0 //flag=5
    var vHct=0 //flag=6
    var vWBC=0 //flag=7
    var vCreatinin=0 //flag=8
    var vUrineOutput=0 //flag=9
    var vBUN=0 //flag=10
    var vNatrium=0 //flag=11
    var vAlbumin=0 //flag=12
    var vBilirubin=0 //flag=13
    var vGlucose=0 //flag=14
    var vNenrei=0 //flag=15
    var vHeizonsho=0 //flag=16
    var vKonsuido=0 //flag(-)
    var vAcidBase=0 //flag(-)
    var vAPACHE=0
    
    func CalculateAPACHE(){
        vAPACHE=vShinpakusu+vHeikindoumyakuatsu+vTaion+vKokyusu+vSansokano+vHct+vWBC+vCreatinin+vUrineOutput+vBUN+vNatrium+vAlbumin+vBilirubin+vGlucose+vNenrei+vHeizonsho+vKonsuido+vAcidBase
        APACHEpoint.text="\(vAPACHE)"
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
        NinthButton.isHidden=true
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
        NinthButton.isHidden=false
    }
    
    func HideUpperButtons(){
        Shinpakusu.isHidden=true
        Heikindoumyakuatsu.isHidden=true
        Taion.isHidden=true
        Kokyusu.isHidden=true
        Sansokano.isHidden=true
        Hct.isHidden=true
        WBC.isHidden=true
        Creatinin.isHidden=true
        UrineOutput.isHidden=true
        BUN.isHidden=true
        Natrium.isHidden=true
        Albumin.isHidden=true
        Bilirubin.isHidden=true
        Glucose.isHidden=true
        Nenrei.isHidden=true
        Heizonsho.isHidden=true
        Konsuido.isHidden=true
        AcidBase.isHidden=true
        ResetButton.isHidden=true
    }
    
    func ShowUpperButtons(){
        Shinpakusu.isHidden=false
        Heikindoumyakuatsu.isHidden=false
        Taion.isHidden=false
        Kokyusu.isHidden=false
        Sansokano.isHidden=false
        Hct.isHidden=false
        WBC.isHidden=false
        Creatinin.isHidden=false
        UrineOutput.isHidden=false
        BUN.isHidden=false
        Natrium.isHidden=false
        Albumin.isHidden=false
        Bilirubin.isHidden=false
        Glucose.isHidden=false
        Nenrei.isHidden=false
        Heizonsho.isHidden=false
        Konsuido.isHidden=false
        AcidBase.isHidden=false
        ResetButton.isHidden=false
        FiO2Label.text=""
    }
    
    func HideLabels(){
        ShinpakusuLabel.isHidden=true
        HeikindoumyakuatsuLabel.isHidden=true
        TaionLabel.isHidden=true
        KokyusuLabel.isHidden=true
        SansokanoLabel.isHidden=true
        HctLabel.isHidden=true
        WBCLabel.isHidden=true
        CreatininLabel.isHidden=true
        UrineOutputLabel.isHidden=true
        BUNLabel.isHidden=true
        NatriumLabel.isHidden=true
        AlbuminLabel.isHidden=true
        BilirubinLabel.isHidden=true
        GlucoseLabel.isHidden=true
        NenreiLabel.isHidden=true
        HeizonshoLabel.isHidden=true
        KonsuidoLabel.isHidden=true
        AcidBaseLabel.isHidden=true
    }
    
    func ShowLabels(){
        ShinpakusuLabel.isHidden=false
        HeikindoumyakuatsuLabel.isHidden=false
        TaionLabel.isHidden=false
        KokyusuLabel.isHidden=false
        SansokanoLabel.isHidden=false
        HctLabel.isHidden=false
        WBCLabel.isHidden=false
        CreatininLabel.isHidden=false
        UrineOutputLabel.isHidden=false
        BUNLabel.isHidden=false
        NatriumLabel.isHidden=false
        AlbuminLabel.isHidden=false
        BilirubinLabel.isHidden=false
        GlucoseLabel.isHidden=false
        NenreiLabel.isHidden=false
        HeizonshoLabel.isHidden=false
        KonsuidoLabel.isHidden=false
        AcidBaseLabel.isHidden=false
    }
    
    func ClearLabels(){
        ShinpakusuLabel.text=""
        HeikindoumyakuatsuLabel.text=""
        TaionLabel.text=""
        KokyusuLabel.text=""
        SansokanoLabel.text=""
        HctLabel.text=""
        WBCLabel.text=""
        CreatininLabel.text=""
        UrineOutputLabel.text=""
        BUNLabel.text=""
        NatriumLabel.text=""
        AlbuminLabel.text=""
        BilirubinLabel.text=""
        GlucoseLabel.text=""
        NenreiLabel.text=""
        HeizonshoLabel.text=""
        KonsuidoLabel.text=""
        AcidBaseLabel.text=""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.HideLowerButtons()
        self.ClearLabels()
        FiO2Label.text=""
        // Do any additional setup after loading the view.
    }
    
    @IBAction func resetButtonTapped(){
        self.ShowUpperButtons()
        self.ClearLabels()
        self.HideLowerButtons()
        vShinpakusu=0
        vHeikindoumyakuatsu=0
        vTaion=0
        vKokyusu=0
        vSansokano=0
        vHct=0
        vWBC=0
        vCreatinin=0
        vUrineOutput=0
        vBUN=0
        vNatrium=0
        vAlbumin=0
        vBilirubin=0
        vGlucose=0
        vNenrei=0
        vHeizonsho=0
        vKonsuido=0
        vAcidBase=0
        vAPACHE=0
        APACHEpoint.text="0"
        FiO2Label.text=""
    }
    
    @IBAction func backFromKonsuidoView(_ Segue:UIStoryboardSegue){
        self.ShowLabels()
        vKonsuido=appDelegate.vSecondKonsuido
        if vKonsuido == -1{
            KonsuidoLabel.text="NA"
        }
        else{
            KonsuidoLabel.text="\(vKonsuido)"
        }
        if vKonsuido == -1{
            vKonsuido=0
        }
        self.CalculateAPACHE()
    }
    
    @IBAction func backFromAcidBaseView(_ Segue:UIStoryboardSegue){
        self.ShowLabels()
        vAcidBase=appDelegate.vSecondAcidBase
        AcidBaseLabel.text="\(vAcidBase)"
        self.CalculateAPACHE()
    }
    
    @IBAction func ShinpakusuButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        Shinpakusu.isHidden=false
        flagOfUpperButton=1
        FirstButton.setTitle("   ≦39      (8点)", for: UIControlState())
        SecondButton.setTitle("  40-49     (5点)", for: UIControlState())
        ThirdButton.setTitle("  50-99     (0点)", for: UIControlState())
        FourthButton.setTitle("100-109   (1点)", for: UIControlState())
        FifthButton.setTitle("110-119   (5点)", for: UIControlState())
        SixthButton.setTitle("120-139   (7点)", for: UIControlState())
        SeventhButton.setTitle("140-154  (13点)", for: UIControlState())
        EighthButton.setTitle("  ≧155    (17点)", for: UIControlState())
        NinthButton.isHidden=true
    }
    
    @IBAction func HeikindoumyakuatsuButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        Heikindoumyakuatsu.isHidden=false
        flagOfUpperButton=2
        FirstButton.setTitle("   ≦39     (23点)", for: UIControlState())
        SecondButton.setTitle("  40-59    (15点)", for: UIControlState())
        ThirdButton.setTitle("  60-69     (7点)", for: UIControlState())
        FourthButton.setTitle("  70-79    (6点)", for: UIControlState())
        FifthButton.setTitle("  80-99     (0点)", for: UIControlState())
        SixthButton.setTitle("100-119   (4点)", for: UIControlState())
        SeventhButton.setTitle("120-129   (7点)", for: UIControlState())
        EighthButton.setTitle("130-139   (9点)", for: UIControlState())
        NinthButton.setTitle("  ≧140    (10点)", for: UIControlState())
    }
    
    @IBAction func TaionButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        Taion.isHidden=false
        flagOfUpperButton=3
        FirstButton.setTitle(" ≦32.9    (20点)", for: UIControlState())
        SecondButton.setTitle("33-33.4   (16点)", for: UIControlState())
        ThirdButton.setTitle("   33.5-     33.9     (13点)", for: UIControlState())
        FourthButton.setTitle("34-34.9    (8点)", for: UIControlState())
        FifthButton.setTitle("35-35.9    (2点)", for: UIControlState())
        SixthButton.setTitle("36-39.9    (0点)", for: UIControlState())
        SeventhButton.setTitle("   ≧40      (4点)", for: UIControlState())
        EighthButton.isHidden=true
        NinthButton.isHidden=true
    }
    
    @IBAction func KokyusuButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        Kokyusu.isHidden=false
        flagOfUpperButton=4
        FirstButton.setTitle("   ≦17     (17点)", for: UIControlState())
        SecondButton.setTitle("   6-11      (8点)", for: UIControlState())
        ThirdButton.setTitle("  12-13     (7点)", for: UIControlState())
        FourthButton.setTitle("  14-24     (0点)", for: UIControlState())
        FifthButton.setTitle("  25-34     (6点)", for: UIControlState())
        SixthButton.setTitle("  35-39     (9点)", for: UIControlState())
        SeventhButton.setTitle("  40-49    (11点)", for: UIControlState())
        EighthButton.setTitle("   ≧50     (18点)", for: UIControlState())
        NinthButton.isHidden=true
    }
    
    @IBAction func SansokanoButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        Sansokano.isHidden=false
        flagOfUpperButton=5
        FiO2Label.text="FiO2≧50%: AaDO2(上段), FiO2<50%: PaO2(下段)"
        FirstButton.setTitle(" AaDO2   <100      (0点)", for: UIControlState())
        SecondButton.setTitle(" AaDO2 100-249   (7点)", for: UIControlState())
        ThirdButton.setTitle(" AaDO2 250-349   (9点)", for: UIControlState())
        FourthButton.setTitle(" AaDO2 350-499  (11点)", for: UIControlState())
        FifthButton.setTitle(" AaDO2   ≧500    (14点)", for: UIControlState())
        SixthButton.setTitle("   PaO2     ≦49     (15点)", for: UIControlState())
        SeventhButton.setTitle("   PaO2    50-69     (5点)", for: UIControlState())
        EighthButton.setTitle("   PaO2    70-79     (2点)", for: UIControlState())
        NinthButton.setTitle("   PaO2     ≧80      (0点)", for: UIControlState())
    }
    
    @IBAction func HctButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        Hct.isHidden=false
        flagOfUpperButton=6
        FirstButton.setTitle(" ≦40.9     (3点)", for: UIControlState())
        SecondButton.setTitle("  41-49     (0点)", for: UIControlState())
        ThirdButton.setTitle("   ≧50      (3点)", for: UIControlState())
        FourthButton.isHidden=true
        FifthButton.isHidden=true
        SixthButton.isHidden=true
        SeventhButton.isHidden=true
        EighthButton.isHidden=true
        NinthButton.isHidden=true
    }
    
    @IBAction func WBCButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        WBC.isHidden=false
        flagOfUpperButton=7
        FirstButton.setTitle("  <1000    (19点)", for: UIControlState())
        SecondButton.setTitle("  1000-     2999      (5点)", for: UIControlState())
        ThirdButton.setTitle("  3000-   19999      (0点)", for: UIControlState())
        FourthButton.setTitle(" 20000-   24999      (1点)", for: UIControlState())
        FifthButton.setTitle("≧25000   (5点)", for: UIControlState())
        SixthButton.isHidden=true
        SeventhButton.isHidden=true
        EighthButton.isHidden=true
        NinthButton.isHidden=true
    }
    
    @IBAction func CreatininButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        Creatinin.isHidden=false
        flagOfUpperButton=8
        FirstButton.setTitle(" ARF(-)    ≦0.4      (3点)", for: UIControlState())
        SecondButton.setTitle(" ARF(-)   0.5-1.4    (0点)", for: UIControlState())
        ThirdButton.setTitle(" ARF(-)  1.5-1.94   (4点)", for: UIControlState())
        FourthButton.setTitle(" ARF(-)   ≧1.95     (7点)", for: UIControlState())
        FifthButton.setTitle(" ARF(+)     0-1.4     (0点)", for: UIControlState())
        SixthButton.setTitle(" ARF(+)    ≧1.5     (10点)", for: UIControlState())
        SeventhButton.isHidden=true
        EighthButton.isHidden=true
        NinthButton.isHidden=true
    }
    
    @IBAction func UrineOutputButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        UrineOutput.isHidden=false
        flagOfUpperButton=9
        FirstButton.setTitle("  ≦399    (15点)", for: UIControlState())
        SecondButton.setTitle("   400-      599       (8点)", for: UIControlState())
        ThirdButton.setTitle("   600-      899       (7点)", for: UIControlState())
        FourthButton.setTitle("   900-     1499       (5点)", for: UIControlState())
        FifthButton.setTitle("  1500-     1999       (4点)", for: UIControlState())
        SixthButton.setTitle("  2000-     3999       (0点)", for: UIControlState())
        SeventhButton.setTitle(" ≧4000   (1点)", for: UIControlState())
        EighthButton.isHidden=true
        NinthButton.isHidden=true
    }
    
    @IBAction func BUNButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        BUN.isHidden=false
        flagOfUpperButton=10
        FirstButton.setTitle(" ≦16.9     (0点)", for: UIControlState())
        SecondButton.setTitle("  17-19     (2点)", for: UIControlState())
        ThirdButton.setTitle("  20-39     (7点)", for: UIControlState())
        FourthButton.setTitle("  40-79    (11点)", for: UIControlState())
        FifthButton.setTitle("   ≧80     (12点)", for: UIControlState())
        SixthButton.isHidden=true
        SeventhButton.isHidden=true
        EighthButton.isHidden=true
        NinthButton.isHidden=true
    }
    
    @IBAction func NatriumButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        Natrium.isHidden=false
        flagOfUpperButton=11
        FirstButton.setTitle("  ≦119     (3点)", for: UIControlState())
        SecondButton.setTitle("120-134   (2点)", for: UIControlState())
        ThirdButton.setTitle("135-154   (0点)", for: UIControlState())
        FourthButton.setTitle("  ≧155     (4点)", for: UIControlState())
        FifthButton.isHidden=true
        SixthButton.isHidden=true
        SeventhButton.isHidden=true
        EighthButton.isHidden=true
        NinthButton.isHidden=true
    }
    
    @IBAction func AlbuminButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        Albumin.isHidden=false
        flagOfUpperButton=12
        FirstButton.setTitle("  ≦1.9     (11点)", for: UIControlState())
        SecondButton.setTitle(" 2.0-2.4    (6点)", for: UIControlState())
        ThirdButton.setTitle(" 2.5-4.4    (0点)", for: UIControlState())
        FourthButton.setTitle("  ≧4.5     (4点)", for: UIControlState())
        FifthButton.isHidden=true
        SixthButton.isHidden=true
        SeventhButton.isHidden=true
        EighthButton.isHidden=true
        NinthButton.isHidden=true
    }
    
    @IBAction func BilirubinButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        Bilirubin.isHidden=false
        flagOfUpperButton=13
        FirstButton.setTitle("  ≦1.9      (0点)", for: UIControlState())
        SecondButton.setTitle(" 2.0-2.9    (5点)", for: UIControlState())
        ThirdButton.setTitle(" 3.0-4.9    (6点)", for: UIControlState())
        FourthButton.setTitle(" 5.0-7.9    (8点)", for: UIControlState())
        FifthButton.setTitle("  ≧8.0     (16点)", for: UIControlState())
        SixthButton.isHidden=true
        SeventhButton.isHidden=true
        EighthButton.isHidden=true
        NinthButton.isHidden=true
    }
    
    @IBAction func GlucoseButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        Glucose.isHidden=false
        flagOfUpperButton=14
        FirstButton.setTitle("   ≦39      (8点)", for: UIControlState())
        SecondButton.setTitle("  40-59     (9点)", for: UIControlState())
        ThirdButton.setTitle(" 60-199    (0点)", for: UIControlState())
        FourthButton.setTitle("200-349   (3点)", for: UIControlState())
        FifthButton.setTitle("  ≧350     (5点)", for: UIControlState())
        SixthButton.isHidden=true
        SeventhButton.isHidden=true
        EighthButton.isHidden=true
        NinthButton.isHidden=true
    }
    
    @IBAction func NenreiButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        Nenrei.isHidden=false
        flagOfUpperButton=15
        FirstButton.setTitle("   ≦44      (0点)", for: UIControlState())
        SecondButton.setTitle("  45-59     (5点)", for: UIControlState())
        ThirdButton.setTitle("  60-64    (11点)", for: UIControlState())
        FourthButton.setTitle("  65-69    (13点)", for: UIControlState())
        FifthButton.setTitle("  70-74    (16点)", for: UIControlState())
        SixthButton.setTitle("  75-84    (17点)", for: UIControlState())
        SeventhButton.setTitle("   ≧85     (24点)", for: UIControlState())
        EighthButton.isHidden=true
        NinthButton.isHidden=true
    }
    
    @IBAction func HeizonshoButtonTapped(){
        self.ShowLowerButtons()
        self.HideUpperButtons()
        self.HideLabels()
        Heizonsho.isHidden=false
        flagOfUpperButton=16
        FirstButton.setTitle("   AIDS    (23点)", for: UIControlState())
        SecondButton.setTitle("  肝不全   (16点)", for: UIControlState())
        ThirdButton.setTitle("リンパ腫  (13点)", for: UIControlState())
        FourthButton.setTitle("  転移癌   (11点)", for: UIControlState())
        FifthButton.setTitle("  白血病   骨髄腫   (10点)", for: UIControlState())
        SixthButton.setTitle("免疫不全  (10点)", for: UIControlState())
        SeventhButton.setTitle("  肝硬変    (4点)", for: UIControlState())
        EighthButton.setTitle("   なし      (0点)", for: UIControlState())
        NinthButton.isHidden=true
    }
    
    @IBAction func FirstButtonTapped(){
        self.HideLowerButtons()
        self.ShowUpperButtons()
        self.ShowLabels()
        switch flagOfUpperButton{
        case 1:
            vShinpakusu=8
            ShinpakusuLabel.text="\(vShinpakusu)"
        case 2:
            vHeikindoumyakuatsu=23
            HeikindoumyakuatsuLabel.text="\(vHeikindoumyakuatsu)"
        case 3:
            vTaion=20
            TaionLabel.text="\(vTaion)"
        case 4:
            vKokyusu=17
            KokyusuLabel.text="\(vKokyusu)"
        case 5:
            vSansokano=0
            SansokanoLabel.text="\(vSansokano)"
        case 6:
            vHct=3
            HctLabel.text="\(vHct)"
        case 7:
            vWBC=19
            WBCLabel.text="\(vWBC)"
        case 8:
            vCreatinin=3
            CreatininLabel.text="\(vCreatinin)"
        case 9:
            vUrineOutput=15
            UrineOutputLabel.text="\(vUrineOutput)"
        case 10:
            vBUN=0
            BUNLabel.text="\(vBUN)"
        case 11:
            vNatrium=3
            NatriumLabel.text="\(vNatrium)"
        case 12:
            vAlbumin=11
            AlbuminLabel.text="\(vAlbumin)"
        case 13:
            vBilirubin=0
            BilirubinLabel.text="\(vBilirubin)"
        case 14:
            vGlucose=8
            GlucoseLabel.text="\(vGlucose)"
        case 15:
            vNenrei=0
            NenreiLabel.text="\(vNenrei)"
        case 16:
            vHeizonsho=23
            HeizonshoLabel.text="\(vHeizonsho)"
        default:
            ResetButton.isHidden=false
        }//switch flagOfUpperButton
        self.CalculateAPACHE()
    }//@IBAction func FirstButtonTapped()
    
    @IBAction func SecondButtonTapped(){
        self.HideLowerButtons()
        self.ShowUpperButtons()
        self.ShowLabels()
        switch flagOfUpperButton{
        case 1:
            vShinpakusu=5
            ShinpakusuLabel.text="\(vShinpakusu)"
        case 2:
            vHeikindoumyakuatsu=15
            HeikindoumyakuatsuLabel.text="\(vHeikindoumyakuatsu)"
        case 3:
            vTaion=16
            TaionLabel.text="\(vTaion)"
        case 4:
            vKokyusu=8
            KokyusuLabel.text="\(vKokyusu)"
        case 5:
            vSansokano=7
            SansokanoLabel.text="\(vSansokano)"
        case 6:
            vHct=0
            HctLabel.text="\(vHct)"
        case 7:
            vWBC=5
            WBCLabel.text="\(vWBC)"
        case 8:
            vCreatinin=0
            CreatininLabel.text="\(vCreatinin)"
        case 9:
            vUrineOutput=8
            UrineOutputLabel.text="\(vUrineOutput)"
        case 10:
            vBUN=2
            BUNLabel.text="\(vBUN)"
        case 11:
            vNatrium=2
            NatriumLabel.text="\(vNatrium)"
        case 12:
            vAlbumin=6
            AlbuminLabel.text="\(vAlbumin)"
        case 13:
            vBilirubin=5
            BilirubinLabel.text="\(vBilirubin)"
        case 14:
            vGlucose=9
            GlucoseLabel.text="\(vGlucose)"
        case 15:
            vNenrei=5
            NenreiLabel.text="\(vNenrei)"
        case 16:
            vHeizonsho=16
            HeizonshoLabel.text="\(vHeizonsho)"
        default:
            ResetButton.isHidden=false
        }//switch flagOfUpperButton
        self.CalculateAPACHE()
    }//@IBAction func SecondButtonTapped()
    
    @IBAction func ThirdButtonTapped(){
        self.HideLowerButtons()
        self.ShowUpperButtons()
        self.ShowLabels()
        switch flagOfUpperButton{
        case 1:
            vShinpakusu=0
            ShinpakusuLabel.text="\(vShinpakusu)"
        case 2:
            vHeikindoumyakuatsu=7
            HeikindoumyakuatsuLabel.text="\(vHeikindoumyakuatsu)"
        case 3:
            vTaion=13
            TaionLabel.text="\(vTaion)"
        case 4:
            vKokyusu=7
            KokyusuLabel.text="\(vKokyusu)"
        case 5:
            vSansokano=9
            SansokanoLabel.text="\(vSansokano)"
        case 6:
            vHct=3
            HctLabel.text="\(vHct)"
        case 7:
            vWBC=0
            WBCLabel.text="\(vWBC)"
        case 8:
            vCreatinin=4
            CreatininLabel.text="\(vCreatinin)"
        case 9:
            vUrineOutput=7
            UrineOutputLabel.text="\(vUrineOutput)"
        case 10:
            vBUN=7
            BUNLabel.text="\(vBUN)"
        case 11:
            vNatrium=0
            NatriumLabel.text="\(vNatrium)"
        case 12:
            vAlbumin=0
            AlbuminLabel.text="\(vAlbumin)"
        case 13:
            vBilirubin=6
            BilirubinLabel.text="\(vBilirubin)"
        case 14:
            vGlucose=0
            GlucoseLabel.text="\(vGlucose)"
        case 15:
            vNenrei=11
            NenreiLabel.text="\(vNenrei)"
        case 16:
            vHeizonsho=13
            HeizonshoLabel.text="\(vHeizonsho)"
        default:
            ResetButton.isHidden=false
        }//switch flagOfUpperButton
        self.CalculateAPACHE()
    }//@IBAction func ThirdButtonTapped()
    
    @IBAction func FourthButtonTapped(){
        self.HideLowerButtons()
        self.ShowUpperButtons()
        self.ShowLabels()
        switch flagOfUpperButton{
        case 1:
            vShinpakusu=1
            ShinpakusuLabel.text="\(vShinpakusu)"
        case 2:
            vHeikindoumyakuatsu=6
            HeikindoumyakuatsuLabel.text="\(vHeikindoumyakuatsu)"
        case 3:
            vTaion=8
            TaionLabel.text="\(vTaion)"
        case 4:
            vKokyusu=0
            KokyusuLabel.text="\(vKokyusu)"
        case 5:
            vSansokano=11
            SansokanoLabel.text="\(vSansokano)"
        case 7:
            vWBC=1
            WBCLabel.text="\(vWBC)"
        case 8:
            vCreatinin=7
            CreatininLabel.text="\(vCreatinin)"
        case 9:
            vUrineOutput=5
            UrineOutputLabel.text="\(vUrineOutput)"
        case 10:
            vBUN=11
            BUNLabel.text="\(vBUN)"
        case 11:
            vNatrium=4
            NatriumLabel.text="\(vNatrium)"
        case 12:
            vAlbumin=4
            AlbuminLabel.text="\(vAlbumin)"
        case 13:
            vBilirubin=8
            BilirubinLabel.text="\(vBilirubin)"
        case 14:
            vGlucose=3
            GlucoseLabel.text="\(vGlucose)"
        case 15:
            vNenrei=13
            NenreiLabel.text="\(vNenrei)"
        case 16:
            vHeizonsho=11
            HeizonshoLabel.text="\(vHeizonsho)"
        default:
            ResetButton.isHidden=false
        }//switch flagOfUpperButton
        self.CalculateAPACHE()
    }//@IBAction func FourthButtonTapped()
    
    @IBAction func FifthButtonTapped(){
        self.HideLowerButtons()
        self.ShowUpperButtons()
        self.ShowLabels()
        switch flagOfUpperButton{
        case 1:
            vShinpakusu=5
            ShinpakusuLabel.text="\(vShinpakusu)"
        case 2:
            vHeikindoumyakuatsu=0
            HeikindoumyakuatsuLabel.text="\(vHeikindoumyakuatsu)"
        case 3:
            vTaion=2
            TaionLabel.text="\(vTaion)"
        case 4:
            vKokyusu=6
            KokyusuLabel.text="\(vKokyusu)"
        case 5:
            vSansokano=14
            SansokanoLabel.text="\(vSansokano)"
        case 7:
            vWBC=5
            WBCLabel.text="\(vWBC)"
        case 8:
            vCreatinin=0
            CreatininLabel.text="\(vCreatinin)"
        case 9:
            vUrineOutput=4
            UrineOutputLabel.text="\(vUrineOutput)"
        case 10:
            vBUN=12
            BUNLabel.text="\(vBUN)"
        case 13:
            vBilirubin=16
            BilirubinLabel.text="\(vBilirubin)"
        case 14:
            vGlucose=5
            GlucoseLabel.text="\(vGlucose)"
        case 15:
            vNenrei=16
            NenreiLabel.text="\(vNenrei)"
        case 16:
            vHeizonsho=10
            HeizonshoLabel.text="\(vHeizonsho)"
        default:
            ResetButton.isHidden=false
        }//switch flagOfUpperButton
        self.CalculateAPACHE()
    }//@IBAction func FifthButtonTapped()
    
    @IBAction func SixthButtonTapped(){
        self.HideLowerButtons()
        self.ShowUpperButtons()
        self.ShowLabels()
        switch flagOfUpperButton{
        case 1:
            vShinpakusu=7
            ShinpakusuLabel.text="\(vShinpakusu)"
        case 2:
            vHeikindoumyakuatsu=4
            HeikindoumyakuatsuLabel.text="\(vHeikindoumyakuatsu)"
        case 3:
            vTaion=0
            TaionLabel.text="\(vTaion)"
        case 4:
            vKokyusu=9
            KokyusuLabel.text="\(vKokyusu)"
        case 5:
            vSansokano=15
            SansokanoLabel.text="\(vSansokano)"
        case 8:
            vCreatinin=10
            CreatininLabel.text="\(vCreatinin)"
        case 9:
            vUrineOutput=0
            UrineOutputLabel.text="\(vUrineOutput)"
        case 15:
            vNenrei=17
            NenreiLabel.text="\(vNenrei)"
        case 16:
            vHeizonsho=10
            HeizonshoLabel.text="\(vHeizonsho)"
        default:
            ResetButton.isHidden=false
        }//switch flagOfUpperButton
        self.CalculateAPACHE()
    }//@IBAction func SixthButtonTapped()
    
    @IBAction func SeventhButtonTapped(){
        self.HideLowerButtons()
        self.ShowUpperButtons()
        self.ShowLabels()
        switch flagOfUpperButton{
        case 1:
            vShinpakusu=13
            ShinpakusuLabel.text="\(vShinpakusu)"
        case 2:
            vHeikindoumyakuatsu=7
            HeikindoumyakuatsuLabel.text="\(vHeikindoumyakuatsu)"
        case 3:
            vTaion=4
            TaionLabel.text="\(vTaion)"
        case 4:
            vKokyusu=11
            KokyusuLabel.text="\(vKokyusu)"
        case 5:
            vSansokano=5
            SansokanoLabel.text="\(vSansokano)"
        case 9:
            vUrineOutput=1
            UrineOutputLabel.text="\(vUrineOutput)"
        case 15:
            vNenrei=24
            NenreiLabel.text="\(vNenrei)"
        case 16:
            vHeizonsho=4
            HeizonshoLabel.text="\(vHeizonsho)"
        default:
            ResetButton.isHidden=false
        }//switch flagOfUpperButton
        self.CalculateAPACHE()
    }//@IBAction func SeventhButtonTapped()
    
    @IBAction func EighthButtonTapped(){
        self.HideLowerButtons()
        self.ShowUpperButtons()
        self.ShowLabels()
        switch flagOfUpperButton{
        case 1:
            vShinpakusu=17
            ShinpakusuLabel.text="\(vShinpakusu)"
        case 2:
            vHeikindoumyakuatsu=9
            HeikindoumyakuatsuLabel.text="\(vHeikindoumyakuatsu)"
        case 4:
            vKokyusu=18
            KokyusuLabel.text="\(vKokyusu)"
        case 5:
            vSansokano=2
            SansokanoLabel.text="\(vSansokano)"
        case 16:
            vHeizonsho=0
            HeizonshoLabel.text="\(vHeizonsho)"
        default:
            ResetButton.isHidden=false
        }//switch flagOfUpperButton
        self.CalculateAPACHE()
    }//@IBAction func EighthButtonTapped()
    
    @IBAction func NinthButtonTapped(){
        self.HideLowerButtons()
        self.ShowUpperButtons()
        self.ShowLabels()
        switch flagOfUpperButton{
        case 2:
            vHeikindoumyakuatsu=10
            HeikindoumyakuatsuLabel.text="\(vHeikindoumyakuatsu)"
        case 5:
            vSansokano=0
            SansokanoLabel.text="\(vSansokano)"
        default:
            ResetButton.isHidden=false
        }//switch flagOfUpperButton
        self.CalculateAPACHE()
    }//@IBAction func NinthButtonTapped()
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
