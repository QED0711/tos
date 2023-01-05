// https://www.myfxbook.com/forex-calculators/pip-calculator

function getTableData(){

    const body = document.querySelector("#symbols tbody")
    const rows = body.querySelectorAll("tr")


    let data = {};

    let symbol,
        standardLot, 
        miniLot,
        microLot;
    for (let row of rows){
        symbol = row.id
        data[row.id.slice(0, 3) + "/" + row.id.slice(3)] = {
            standardLot: parseFloat(row.querySelector("#standardLot" + symbol).innerText.slice(1)),
            miniLot: parseFloat(row.querySelector("#miniLot" + symbol).innerText.slice(1)),
            microLot: parseFloat(row.querySelector("#microLot" + symbol).innerText.slice(1)),

        }

    }
    data = JSON.stringify(data)

    return data
}

getTableData()