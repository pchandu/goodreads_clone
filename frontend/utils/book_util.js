export const fetchBook = (bookId) => {
    return $.ajax({
        url: `/api/books/${bookId}`,
        method: 'GET'
    });
};

export const fetchBooks = () => {
    return $.ajax({
        url: `/api/books`,
        method: 'GET'
    });
};