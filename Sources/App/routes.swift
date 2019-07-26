import Vapor
import Leaf

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
//    router.get { req in
//        return "It works!"
//    }
//
//    // Basic "Hello, world!" example
//    router.get("hello1") { req in
//        return "Hello, world!"
//    }
//
//    let values = [
//        "name": "Taylor Swift",
//        "city": "Nashville",
//        "vaporSkill": "11/10",
//        ]
//    router.get("hello") { req -> Future<View> in
//        return try req.view().render("home", values)
//    }
    router.get { req -> Future<View> in
        return try req.view().render("home")
    }
    
    router.get("pin") { req -> Future<View> in
        return try req.view().render("pin")
    }
    
    router.get("person") { req -> Future<View> in
        return try req.view().render("person")
    }
    
    router.get("toast") { req -> Future<View> in
        return try req.view().render("toast")
    }
    
    router.get("closeup") { req -> Future<View> in
        return try req.view().render("closeup")
    }
    
    router.get("modals") { req -> Future<View> in
        return try req.view().render("modals")
    }

    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
    router.get("greet", use: todoController.greet)
}
