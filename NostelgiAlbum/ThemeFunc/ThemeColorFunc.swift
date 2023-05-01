import UIKit
import RealmSwift

extension HomeScreenViewController {
    func setThemeColor() {
        let HomeSettingInfo = realm.objects(HomeSetting.self).first!
        if let ThemeColorSet = getColorSet(color: HomeSettingInfo.themeColor) {
            view.backgroundColor = ThemeColorSet["mainColor"]
            NostelgiAlbumLabel.backgroundColor = ThemeColorSet["mainColor"]
            homeTitleView.backgroundColor = ThemeColorSet["mainColor"]
            collectionView.backgroundColor = ThemeColorSet["subColor_1"]
            topLabel.backgroundColor = ThemeColorSet["subColor_2"]
        } else {
            return
        }
    }
}

extension HomeScreenCollectionViewCell {
    func setThemeColor() {
        let HomeSettingInfo = realm.objects(HomeSetting.self).first!
        if let ThemeColorSet = getColorSet(color: HomeSettingInfo.themeColor) {
            self.backgroundColor = ThemeColorSet["subColor_1"]
            bottomLabel.backgroundColor = ThemeColorSet["subColor_2"]
            firstButton.backgroundColor = ThemeColorSet["subColor_3"]
            secondButton.backgroundColor = ThemeColorSet["subColor_3"]
        } else {
            return
        }
    }
}

extension HomeEditViewController {
    func setThemeColor() {
        let HomeSettingInfo = realm.objects(HomeSetting.self).first!
        if let ThemeColorSet = getColorSet(color: HomeSettingInfo.themeColor) {
            createButton.backgroundColor = ThemeColorSet["subColor_3"]
            cancleButton.backgroundColor = ThemeColorSet["subColor_3"]
            selectButton.backgroundColor = ThemeColorSet["subColor_3"]
            coverImage.backgroundColor = .white
            albumName.backgroundColor = .white
            divideLine.backgroundColor = ThemeColorSet["subColor_2"]
            editView.backgroundColor = ThemeColorSet["subColor_1"]
            editTitle.backgroundColor = ThemeColorSet["mainColor"]
            editTitle.textColor = .white
        } else {
            return
        }
    }
}

extension AlbumScreenViewController {
    func setThemeColor() {
        let HomeSettingInfo = realm.objects(HomeSetting.self).first!
        if let ThemeColorSet = getColorSet(color: HomeSettingInfo.themeColor) {
            self.view.backgroundColor = ThemeColorSet["mainColor"]
            self.navigationController?.navigationBar.backgroundColor = ThemeColorSet["mainColor"]
            self.navigationController?.toolbar.backgroundColor = ThemeColorSet["mainColor"]
            collectionView.backgroundColor = ThemeColorSet["subColor_1"]
            topLabel.backgroundColor = ThemeColorSet["subColor_2"]
            bottomLabel.backgroundColor = ThemeColorSet["subColor_2"]
        } else {
            return
        }
    }
}

extension AlbumScreenCollectionViewCell {
    func setThemeColor() {
        let HomeSettingInfo = realm.objects(HomeSetting.self).first!
        if let ThemeColorSet = getColorSet(color: HomeSettingInfo.themeColor) {
            self.backgroundColor = ThemeColorSet["subColor_1"]
            self.pictureImgButton?.backgroundColor = ThemeColorSet["subColor_3"]
        } else {
            return
        }
    }
}

extension AlbumEditViewController {
    func setThemeColor() {
        let HomeSettingInfo = realm.objects(HomeSetting.self).first!
        if let ThemeColorSet = getColorSet(color: HomeSettingInfo.themeColor) {
            view.backgroundColor = ThemeColorSet["mainColor"]
            bodyView.backgroundColor = ThemeColorSet["subColor_1"]
            topLabel.backgroundColor = ThemeColorSet["subColor_2"]
            bottomLabel.backgroundColor = ThemeColorSet["subColor_2"]
            editPicture.backgroundColor = ThemeColorSet["subColor_3"]
            saveButton.backgroundColor = ThemeColorSet["subColor_4"]
        } else {
            return
        }
    }
}

extension AlbumPicViewController {
    func setThemeColor() {
        let HomeSettingInfo = realm.objects(HomeSetting.self).first!
        if let ThemeColorSet = getColorSet(color: HomeSettingInfo.themeColor) {
            view.backgroundColor = ThemeColorSet["mainColor"]
            bodyView.backgroundColor = ThemeColorSet["subColor_1"]
            topLabel.backgroundColor = ThemeColorSet["subColor_2"]
            bottomLabel.backgroundColor = ThemeColorSet["subColor_2"]
            picImage.backgroundColor = ThemeColorSet["subColor_3"]
            settingBtn.tintColor = ThemeColorSet["mainColor"]
        } else {
            return
        }
    }
}

extension ImageViewController {
    func setThemeColor() {
        let HomeSettingInfo = realm.objects(HomeSetting.self).first!
        if let ThemeColorSet = getColorSet(color: HomeSettingInfo.themeColor) {
            scrollView.backgroundColor = ThemeColorSet["subColor_1"]
            closeButton.tintColor = ThemeColorSet["mainColor"]
        } else {
            return
        }
    }
}

extension InfoTableViewController {
    func setThemeColor() {
        let HomeSettingInfo = realm.objects(HomeSetting.self).first!
        if let ThemeColorSet = getColorSet(color: HomeSettingInfo.themeColor) {
            view.backgroundColor = ThemeColorSet["subColor_1"]
            tableView.backgroundColor = ThemeColorSet["subColor_1"]
        } else {
            return
        }
    }
}

extension PageSearchViewController {
    func setThemeColor() {
        let HomeSettingInfo = realm.objects(HomeSetting.self).first!
        if let ThemeColorSet = getColorSet(color: HomeSettingInfo.themeColor) {
            stackView.backgroundColor = ThemeColorSet["mainColor"]
            collectionView.backgroundColor = ThemeColorSet["subColor_1"]
            button.backgroundColor = ThemeColorSet["subColor_1"]
            firstPicture.backgroundColor = ThemeColorSet["subColor_4"]
            secondPicture.backgroundColor = ThemeColorSet["subColor_4"]
            fpTitle.backgroundColor = ThemeColorSet["subColor_3"]
            fpContent.backgroundColor = ThemeColorSet["subColor_3"]
            spTitle.backgroundColor = ThemeColorSet["subColor_3"]
            spContent.backgroundColor = ThemeColorSet["subColor_3"]
        }
        
    }
    func setThemeColorButton(_ sender: PageButton) {
        let HomeSettingInfo = realm.objects(HomeSetting.self).first!
        if let ThemeColorSet = getColorSet(color: HomeSettingInfo.themeColor) {
            sender.backgroundColor = ThemeColorSet["subColor_4"]
        }
    }
}

extension ContentsCells {
    func setThemeColor() {
        let realm = try! Realm()
        let HomeSettingInfo = realm.objects(HomeSetting.self).first!
        if let ThemeColorSet = getColorSet(color: HomeSettingInfo.themeColor) {
            button.backgroundColor = ThemeColorSet["subColor_2"]
            title.backgroundColor = ThemeColorSet["subColor_3"]
            contents.backgroundColor = ThemeColorSet["subColor_4"]
        }
    }
}

extension ContentsSearchViewController {
    func setThemeColor() {
        let realm = try! Realm()
        let HomeSettingInfo = realm.objects(HomeSetting.self).first!
        if let ThemeColorSet = getColorSet(color: HomeSettingInfo.themeColor) {
            view.backgroundColor = ThemeColorSet["mainColor"]
            searchBar.barTintColor = ThemeColorSet["subColor_1"]
            contentsSearchCollectionView.backgroundColor = ThemeColorSet["subColor_1"]
        }
    }
}

extension InfoTableCell {
//    func setThemeColor() {
//        let HomeSettingInfo = realm.objects(HomeSetting.self).first!
//        if let ThemeColorSet = getColorSet(color: HomeSettingInfo.themeColor) {
//            self.backgroundColor = ThemeColorSet["subColor_1"]
//        } else {
//            return
//        }
//    }
}

func getColorSet(color: String) -> [String: UIColor]? {
    let ThemeColorSet = ThemeColorSet()
    var colorSet: [String: UIColor]? = nil
    switch color {
    case "blue": colorSet = ThemeColorSet.blue
    case "brown": colorSet = ThemeColorSet.brown
    case "green": colorSet = ThemeColorSet.green
    default: print("error occur")
    }
    return colorSet
}

