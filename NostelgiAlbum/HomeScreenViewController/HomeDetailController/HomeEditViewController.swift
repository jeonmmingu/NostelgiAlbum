import UIKit
import RealmSwift

class HomeEditViewController: UIViewController {
    // MARK: - Properties
    // UIView
    @IBOutlet weak var editView: UIView!
    @IBOutlet weak var editTitle: UILabel!
    @IBOutlet weak var albumName: UITextField!
    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var cancleButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    var collectionViewInHome : UICollectionView!
    // Modifying
    var IsModifyingView : Bool = false
    var albumNameBeforeModify : String = ""
    var coverImageBeforeModify : String = ""
    var id : Int = 0
    
    // MARK: - View Life Cycle
    override func viewDidLoad(){
        super.viewDidLoad()
        setSubViews()
    }
    
    // MARK: - Methods
    func setSubViews() {
        // editView
        editView.layer.cornerRadius = 20
        // coverImage
        coverImage.image = UIImage(systemName: "photo")
        coverImage.layer.cornerRadius = 10
        if !coverImageBeforeModify.isEmpty {
            let realm = try! Realm()
            let coverImageData = realm.objects(albumCover.self).filter("id = \(id)")
            if coverImageData.first?.isCustomCover == false {
                setCoverImage(color: coverImageBeforeModify)
            } else {
                let customCoverImage = loadImageFromDocumentDirectory(imageName: "\(albumName.text!)_CoverImage.jpeg", albumTitle: albumName.text!)
                coverImage.image = customCoverImage
            }
        }
        // albumName
        albumName.placeholder = "앨범 명을 입력하세요"
        albumName.delegate = self
        if !albumNameBeforeModify.isEmpty {
            albumName.text = albumNameBeforeModify
        }
        // creatButton
        createButton.layer.cornerRadius = 10
        // cancleButton
        cancleButton.layer.cornerRadius = 10
        // backButton
        backButton.layer.cornerRadius = 16
        // editTitle
        if IsModifyingView {
            editTitle.text = "앨범 수정"
        }
    }
    
    // - MARK: touchesBegan :: view를 누를 시 editing이 종료되도록 하는 함수
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        self.view.endEditing(true)
    }
}

