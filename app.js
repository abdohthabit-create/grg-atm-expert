const data = {
"101":"Power Failure - Check power supply",
"202":"Card Reader Error - Clean reader",
"303":"Network Error - Check connection"
};

function searchCode(){
let val = document.getElementById('search').value;
let result = data[val] || "No data found";
document.getElementById('result').innerText = result;
}
