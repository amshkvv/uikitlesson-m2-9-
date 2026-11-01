//
//  MockData.swift
//  m2l9
//
//  Created by AndreyM on 31.10.2026.
//

struct MockData {
    var userName : String
    var contentImage : String
    var title : String
    var date : String
    var content : String
    
    static func getData() -> [MockData] {[
        MockData(userName: "Ivan Ivanov", contentImage: "img3", title: "Title", date: "20 ноября 2026", content: "lorem fsd fsd fsd fs fs dfsd fsd f dsfs df sdf sdf sdf"),
        MockData(userName: "Monte Cristo", contentImage: "img2", title: "Title", date: "20 ноября 2026", content: "lorem fsd fsd fsd fs fs dfsd fsd f dsfs df sdf sdf sdfs dfsd fs df sdf sdf sf sf sdf sf sf sd fsd fds"),
        MockData(userName: "Jack", contentImage: "img1", title: "Title", date: "20 ноября 2026", content: "lorem fsd fsd fsd fs fs dfsd fsd f dsfs df sdf sdf sdf"),
        MockData(userName: "Morris", contentImage: "img2", title: "Title", date: "20 ноября 2026", content: "lorem fsd fsd fsd fs fs dfsd fsd f dsfs df sdf sdf sdf"),
        MockData(userName: "Nikita", contentImage: "img1", title: "Title", date: "20 ноября 2026", content: "lorem fsd fsd fsd fs fs dfsd fsd f dsfs df sdf sdf sdf"),
        MockData(userName: "Andrey", contentImage: "img2", title: "Title", date: "20 ноября 2026", content: "lorem fsd fsd fsd fs fs dfsd fsd f dsfs df sdf sdf sdf"),
        ]
    }
    
}
