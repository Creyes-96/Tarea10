const playwright = require("playwright")
const config = require("../config/development2.js")
var faker = require('faker');

function demo(browserType = "chromium") {
    (async () => {


        //launch a new browser
        const browser = await playwright [browserType].launch({ headless:false});
        const context = await browser.newContext();
        const page = await context.newPage();

        //go to projects page and wait for it to load
        await page.goto(config.url.base_path)
        await page.waitForLoadState()
        await page.waitForTimeout(2000)

        //Go to cars indexe
        await page.goto(config.url.base_path + '/cars')
        await page.waitForLoadState()
        await page.waitForTimeout(2000)

        //go to car creation
        for(var i=0; i <=3; i++){

            await page.click('text=New Car');
    
            await page.goto(config.url.base_path + '/cars/new')
            await page.waitForLoadState();
            await page.waitForTimeout(2000)
    
            //fill inputs
            page.fill(`#car_model` , faker.datatype.number({min: 1980, max: 2022}).toString())
            await page.waitForTimeout(200);
            page.fill(`#car_brand`, faker.vehicle.manufacturer())
            await page.waitForTimeout(200);
            page.fill(`#car_driver_id`, faker.datatype.number({min: 0050, max:001000 }).toString())
            //page.fill(`#car_driver_id`, faker.datatype.hexaDecimal())
            await page.waitForTimeout(200);
            page.fill(`#car_code`, faker.datatype.hexaDecimal(5))
            await page.waitForTimeout(200);
    
            page.click('input[name=commit]') //create car
            await page.waitForTimeout();
            await page.waitForTimeout(2000);
    
            //go to cars index
            await page.goto(config.url.base_path + '/cars')

            i = i++;
        }

    
    })()
}

demo()