// https://www.myfxbook.com/forex-calculators/pip-calculator

function findSymbol(symbol){
    symbol = symbol.replace(/\//g, "").toUpperCase();
    const standardPip = parseFloat(document.querySelector(`#standardLot${symbol}`).innerText.slice(1))
    const miniPip = parseFloat(document.querySelector(`#miniLot${symbol}`).innerText.slice(1))
    const microPip = parseFloat(document.querySelector(`#microLot${symbol}`).innerText.slice(1))
    
    return {
        standardPip,
        miniPip,
        microPip
    }
}

findSymbol("USD/JPY")

const positionForm = document.createElement("form");
