sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'cities/test/integration/FirstJourney',
		'cities/test/integration/pages/citiesList',
		'cities/test/integration/pages/citiesObjectPage'
    ],
    function(JourneyRunner, opaJourney, citiesList, citiesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('cities') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThecitiesList: citiesList,
					onThecitiesObjectPage: citiesObjectPage
                }
            },
            opaJourney.run
        );
    }
);