var dataPoints = [{
        latitude: 52.523407,
        longitude: 13.4114,
        svgPath: 'M26.492,9.493c-0.771,0.343-1.602,0.574-2.473,0.678c0.89-0.533,1.562-1.376,1.893-2.382c-0.832,0.493-1.753,0.852-2.734,1.044c-0.785-0.837-1.902-1.359-3.142-1.359c-2.377,0-4.306,1.928-4.306,4.306c0,0.337,0.039,0.666,0.112,0.979c-3.578-0.18-6.75-1.894-8.874-4.499c-0.371,0.636-0.583,1.375-0.583,2.165c0,1.494,0.76,2.812,1.915,3.583c-0.706-0.022-1.37-0.216-1.95-0.538c0,0.018,0,0.036,0,0.053c0,2.086,1.484,3.829,3.454,4.222c-0.361,0.099-0.741,0.147-1.134,0.147c-0.278,0-0.547-0.023-0.81-0.076c0.548,1.711,2.138,2.955,4.022,2.99c-1.474,1.146-3.33,1.842-5.347,1.842c-0.348,0-0.69-0.021-1.027-0.062c1.905,1.225,4.168,1.938,6.6,1.938c7.919,0,12.248-6.562,12.248-12.25c0-0.187-0.002-0.372-0.01-0.557C25.186,11.115,25.915,10.356,26.492,9.493',
        color: '#0084B4',

        fixedSize: false,
        alpha: 1.0,
        height: 50,
        width: 50,
        centered: false
    }];

      // add all your code to this method, as this will ensure that page is loaded
      AmCharts.ready(function() {
          // create AmMap object
          var map = new AmCharts.AmMap();
          // set path to images
          map.pathToImages = "../../assets/images/";

          /* create data provider object
           mapVar tells the map name of the variable of the map data. You have to
           view source of the map file you included in order to find the name of the
           variable - it's the very first line after commented lines.

           getAreasFromMap indicates that amMap should read all the areas available
           in the map data and treat them as they are included in your data provider.
           in case you don't set it to true, all the areas except listed in data
           provider will be treated as unlisted.
          */
          var dataProvider = {
              mapVar: AmCharts.maps.worldLow,
              getAreasFromMap:true,
              images: dataPoints
          };
          // pass data provider to the map object
          map.dataProvider = dataProvider;

          /* create areas settings
           * autoZoom set to true means that the map will zoom-in when clicked on the area
           * selectedColor indicates color of the clicked area.
           */
          map.areasSettings = {
              autoZoom: true,
              selectedColor: "#FFFFFF",
              color: "#2ecc71",
              outlineColor: "#FFFFFF",
              selectedOutlineColor: "#FFFFFF",
              rollOverOutlineColor: "#FFFFFF"
          };

          // let's say we want a small map to be displayed, so let's create and add it to the map
          map.smallMap = new AmCharts.SmallMap();

          // write the map to container div
          map.write("mapdiv");

      });