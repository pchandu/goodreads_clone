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

export const deleteReview = reviewId => (
  $.ajax({
    url: `/api/reviews/${reviewId}`,
    method: `DELETE`,
    data: { reviewId }
  })
)

// export const updateReview = review => (
//   $.ajax({
//     url: `/api/reviews/${review.id}/edit`,
//     method: `PATCH`,
//     data: { review }
//   })
// )
