import UIKit
import Screeb

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickSetIdentity(_ sender: Any) {
        Screeb.setIdentity(uniqueVisitorId: "demo@screebdemo.app")
    }
    
    @IBAction func clickTrackScreen(_ sender: Any) {
        Screeb.trackScreen(
            name: "StoreScreen",
            trackingEventProperties: [
                "userFirstName": AnyEncodable("John"),
                "userLastName": AnyEncodable("Doe")
            ]
        )
    }
    
    @IBAction func clickTrackEvent(_ sender: Any) {
        Screeb.trackEvent(
            name: "BuyProduct",
            trackingEventProperties: [
                "product": AnyEncodable("bicycle"),
                "price": AnyEncodable(425.99)
            ]
        )
    }
    
    @IBAction func clickVisitorProperties(_ sender: Any) {
        Screeb.visitorProperty(visitorProperty: [
            "age": AnyEncodable(27),
            "category": AnyEncodable("cycle"),
            "purchasedAt": AnyEncodable(Date())
        ])
    }
}
