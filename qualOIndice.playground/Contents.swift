import Foundation


class Book {
    var name: String
    var genre: String
    var pages: Int
    
    init(name: String, genre: String, pages: Int) {
        self.name = name
        self.genre = genre
        self.pages = pages
    }
}

let book1 = Book(name: "Só sei que foi assim", genre: "Drama", pages: 210)
let book2 = Book(name: "O que é isso?", genre: "Tecnico", pages: 85)
let book3 = Book(name: "Mamãe", genre: "Infantil", pages: 42)
let book4 = Book(name: "Como resolvo esse bug?", genre: "Tecnico", pages: 110)
let book5 = Book(name: "Livro Legal", genre: "Infantil", pages: 35)
let book6 = Book(name: "Xcode - E agora?", genre: "Drama", pages: 200)
let book7 = Book(name: "Meu mouse - O terror", genre: "Drama", pages: 107)

var books = [book1, book2, book3, book4, book5, book6, book7]


// Function: Book with Less pages!
func findBookWithLessPages(listOfBooks: [Book]) -> Book{
    var result: Book = listOfBooks[0]
    for book in listOfBooks {
        if book.pages < result.pages {
            result = book
        }
    }
    return result
}

let bookWithLessPages = findBookWithLessPages(listOfBooks: books)
print("The book with less pages is: \(bookWithLessPages.name). With \(bookWithLessPages.pages) pages in total! ")


// Function: Book with more pages!
func findBookWithMorePages (listOfBooks: [Book]) -> Book{
    var result: Book = listOfBooks[0]
    
    for book in listOfBooks {
        if book.pages > result.pages {
            result = book
        }
    }
    return result
}

let bookWithMorePages = findBookWithMorePages(listOfBooks: books)
print("The book with more pages is: \(bookWithMorePages.name). With \(bookWithMorePages.pages) pages in total! ")


//Function: Book of technical genre with more pages!
func findTechnicalBookWithMorePages (listOfBooks: [Book]) -> Book{
    var technicalBooks: [Book] = []
    var technicalBookWithMorePages: Book
   
    for book in listOfBooks {
        if book.genre == "Tecnico" {
            technicalBooks.append(book)
        }
    }
    
    technicalBookWithMorePages = technicalBooks[0]
    for book in technicalBooks {
        if book.pages > technicalBookWithMorePages.pages{
            technicalBookWithMorePages = book
        }
    }
    return technicalBookWithMorePages
    
   
    
}
let TechnicalbookWithMorePages = findTechnicalBookWithMorePages(listOfBooks: books)
print("The technical book with more pages is: \(TechnicalbookWithMorePages.name). With \(TechnicalbookWithMorePages.pages) pages in total! ")


//Function: Book of drama genre with more pages!
func findDramaBookWithMorePages (listOfBooks: [Book]) -> Book{
    var dramaBooks: [Book] = []
    var dramaBookWithMorePages: Book
   
    for book in listOfBooks {
        if book.genre == "Drama" {
            dramaBooks.append(book)
        }
    }
    
    dramaBookWithMorePages = dramaBooks[0]
    for book in dramaBooks {
        if book.pages > dramaBookWithMorePages.pages{
            dramaBookWithMorePages = book
        }
    }
    return dramaBookWithMorePages
    
}

let DramaBookWithMorePages = findDramaBookWithMorePages(listOfBooks: books)
print("The drama book with more pages is: \(DramaBookWithMorePages.name). With \(DramaBookWithMorePages.pages) pages in total! ")


//Function: Book of Children genre with more pages!
func findChildrenBookWithMorePages (listOfBooks: [Book]) -> Book{
    var childrenBooks: [Book] = []
    var childrenBookWithMorePages: Book
   
    for book in listOfBooks {
        if book.genre == "Infantil" {
            childrenBooks.append(book)
        }
    }
    
    childrenBookWithMorePages = childrenBooks[0]
    for book in childrenBooks {
        if book.pages > childrenBookWithMorePages.pages{
            childrenBookWithMorePages = book
        }
    }
    
    return childrenBookWithMorePages
}

let childrenBookWithMorePages = findChildrenBookWithMorePages(listOfBooks: books)
print("The children's book with more pages is: \(childrenBookWithMorePages.name). With \(childrenBookWithMorePages.pages) pages in total! ")


func comparingGenres (listOfBooks: [Book]){
    
    var childrenBooksTotalPages = 0
    var technicalBooksTotalPages = 0
    var dramaBooksTotalPages = 0
    
    for book in books {
        if book.genre == "Infantil" {
            childrenBooksTotalPages += book.pages
        } else if book.genre == "Drama" {
            dramaBooksTotalPages += book.pages
        } else {
            technicalBooksTotalPages += book.pages
        }
    }
    
    if childrenBooksTotalPages < technicalBooksTotalPages && childrenBooksTotalPages < dramaBooksTotalPages{
        print("The genre of books with less pages is the \"Children\" Books with \(childrenBooksTotalPages) pages in total!")
    } else if technicalBooksTotalPages < childrenBooksTotalPages && technicalBooksTotalPages < dramaBooksTotalPages {
        print("The genre of books with less pages is the \"technical\" Books with \(technicalBooksTotalPages) pages in total!")
    } else {
        print("The genre of books with less page is the \"Drama\" Books with \(dramaBooksTotalPages) pages in total!")
    }
    
    
    if childrenBooksTotalPages > technicalBooksTotalPages && childrenBooksTotalPages > dramaBooksTotalPages{
        print("The genre of books with more pages is the \"Children\" Books with \(childrenBooksTotalPages) pages in total!")
    } else if technicalBooksTotalPages > childrenBooksTotalPages && technicalBooksTotalPages > dramaBooksTotalPages {
        print("The genre of books with more pages is the \"technical\" Books with \(technicalBooksTotalPages) pages in total!")
    } else {
        print("The genre of books with more page is the \"Drama\" Books with \(dramaBooksTotalPages) pages in total!")
    }
}

comparingGenres(listOfBooks: books)


func sortListOfBooks(listOfBooks: [Book]) {
    var orderedListOfBooks: [Book] = []
    //var morePagesToLessPages: Book
    
    for book in listOfBooks{
        if book.pages > 0{
            orderedListOfBooks.append(book)
        }
    }
    print("The list of books in descending order is:")
    for book in orderedListOfBooks.sorted(by: { $0.pages > $1.pages }){
        print(book.name)
    }
    
    print("The list of books alphabetically sorted is:")
    for book in  orderedListOfBooks.sorted(by: { $0.name < $1.name }){
        print(book.name)
    }
    
}

sortListOfBooks(listOfBooks: books)

