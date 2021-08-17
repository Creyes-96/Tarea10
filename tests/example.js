const playwright = require("playwright")
const config = require("../config/development2.js")

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
        await page.click('text=New Car');

        await page.goto(config.url.base_path + '/cars/new')
        await page.waitForLoadState();
        await page.waitForTimeout(2000)

        //fill inputs
        //Comentario de prueba y otras cosas de github
        //Comentario de prueba para commit y push con Git Bash
        page.fill(`#car_model`, '4000')
        await page.waitForTimeout(200);
        page.fill(`#car_brand`, 'Tesla')
        await page.waitForTimeout(200);
        page.fill(`#car_driver_id`, '1')
        await page.waitForTimeout(200);
        page.fill(`#car_code`, '1')
        await page.waitForTimeout(200);

        page.click('input[name=commit]') //create car
        await page.waitForTimeout();
        await page.waitForTimeout(2000);

        //go to cars index
        await page.goto(config.url.base_path + '/cars')
    })()
}

demo()