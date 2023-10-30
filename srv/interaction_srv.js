
const cds = require('@sap/cds');

module.exports = cds.service.impl((srv) => {
  const {cities  } = srv.entities;

  srv.after('READ', 'cities', (each) => {
    each.density = calculateDensity(each.population, each.area);
  });

  srv.before('CREATE', 'cities', (req) => {
    req.data.density = calculateDensity(req.data.population, req.data.area);
  });

  srv.before('UPDATE', 'cities', (req) => {
    req.data.density = calculateDensity(req.data.population, req.data.area);
  });

  function calculateDensity(population, area) {
    return population / area;
  }

  srv.after('READ', 'cities', (cities) => {
    cities.forEach((city) => {
      city.criticality = city.population > 1000000 ? 1 :3;
    });
  });

});
