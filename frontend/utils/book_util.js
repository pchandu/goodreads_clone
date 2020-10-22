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

export const createReview = review => (
  $.ajax({
    url: '/api/reviews',
    method: 'POST',
    data: { review }
  })
);