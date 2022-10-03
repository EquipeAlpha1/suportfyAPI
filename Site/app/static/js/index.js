/* GRID.JS */

new gridjs.Grid({
    columns: [{
        name: "Name",
        sort: true,
      }, {
        name: "Email"
      }, {
        name: "Phone Number",
        width: '50%'
      }]
  }).render(document.getElementById("wrapper"));

/*   const grid = new Grid({
    columns: ['Title', 'Director', 'Producer'],
    server: {
      url: 'https://swapi.dev/api/films/',
      then: data => data.results.map(movie => [movie.title, movie.director, movie.producer])
    } 
  }); */