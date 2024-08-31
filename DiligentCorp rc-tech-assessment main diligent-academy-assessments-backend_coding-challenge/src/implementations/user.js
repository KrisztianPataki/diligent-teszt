export class User {
    constructor() {
        this.books = [];
        this.borrowedbooks = [];
    }

    borrow(book, library) {
        if (library.getBooks().includes(book)) { 
            this.borrowedBooks.push(book);
            library.removeBook(book);
        }
    }

    hasBook(book) {
        return this.borrowedBooks.includes(book);
    }

    return(book, library) {
        if (this.hasBook(book)) { 
            this.borrowedBooks = this.borrowedBooks.filter(b => b !== book); 
            library.addBook(book); 
            return true; 
        } else {
            return false;
        }
    }

    getBookNames() {
        return this.borrowedBooks.map(book => book.name);
    }
}