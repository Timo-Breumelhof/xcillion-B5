document.addEventListener('DOMContentLoaded', function () {
    var search = document.querySelector('.search');
    var searchButton = search ? search.querySelector('.SearchButton') : null;

    if (!search || !searchButton) {
        return;
    }

    searchButton.addEventListener('click', function () {
        search.classList.add('search-open');
    });

    document.addEventListener('click', function (event) {
        if (search.contains(event.target)) {
            return;
        }

        search.classList.remove('search-open');
    });
});
