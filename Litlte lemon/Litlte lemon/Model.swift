import Foundation

struct MenuResponse: Codable {
    let menu: [MenuItem]
}

struct MenuItem: Codable {
    let name: String
    let price: Float
    let description: String
    let image: String
}

let jsonString = """
{
  "menu": [
    {
      "name": "Greek Salad",
      "price": 12.99,
      "description": "Our delicious salad is served with Feta cheese and peeled cucumber. Includes tomatoes, onions, olives, salt and oregano in the ingredients.",
      "image": "greekSalad.jpg"
    },
    {
      "name": "Bruschetta",
      "price": 7.99,
      "description": "Delicious grilled bread rubbed with garlic and topped with olive oil and salt. Our Bruschetta includes tomato and cheese.",
      "image": "bruschetta.jpg"
    },
    {
      "name": "Grilled Fish",
      "price": 20.00,
      "description": "Fantastic grilled fish seasoned with salt.",
      "image": "grilledFish.jpg"
    }
  ]
}
"""

func decodeJSON() {
    if let jsonData = jsonString.data(using: .utf8) {
        do {
            let decoder = JSONDecoder()
            let menuResponse = try decoder.decode(MenuResponse.self, from: jsonData)
            
            let menuItems = menuResponse.menu
            
            for item in menuItems {
                item.name;
                item.price;
                item.description;
                item.image;
            }
        } catch {
            print("Error decoding JSON:", error.localizedDescription)
        }
    }
}








