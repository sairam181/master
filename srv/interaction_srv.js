// const cds = require("@sap/cds");

// module.exports = cds.service.impl(async function (srv) { 
//     const {cities  } =this.entities;
//     const db = await cds.connect.to("db");
//     //const service = await cds.connect.to("CatalogService");

//     this.on('READ', 'cities', async (req) => {
//       const data = await this.tx(req).run(req.query);
//       return data;
//     });

//   //   srv.on("READ", "cities", async (req) => {
//   //     let arr = db.run(SELECT.from('cities'));
//   //   const density = arr.population / arr.area;
//   //    await srv.update('cities',{ density: density });


//   // });

// });


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
      city.isPopulationOverOneMillion = city.population > 1000000;
    });
  });




});
