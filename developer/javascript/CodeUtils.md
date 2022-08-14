## **CONSOLE FETCHING**
```js
const myHeaders = new Headers({
    'Content-Type': 'application/json',
    'Authorization': 'Bearer eyJhbGciOiJI...'
});

fetch('http://apiqctoolsbyt/api/system-logs', {
    headers: myHeaders
}).then(response=>response.json())
.then(data=>{ console.log(data); })

```

___

## EXCEL FILE MANAGEMENT

https://www.npmjs.com/package/xlsx

___

## **JS BIN CLI FOR SYSTEM DEVELOPMENT**

https://github.dev/Kira272921/tailwindcsscli/blob/main/package.json

https://github.dev/fireship-io/javascript-millionaire

___
## **WORD DOCUMENT GENERATION USING NODEJS**

https://syrettconsultancy.com/blog/automating-word-document-generation

https://npm.io/package/docxtemplater

https://npm.io/package/docx-builder

https://www.npmjs.com/package/docx-merger

https://docxtemplater.com/docs/get-started-node/

___

## **QUICK HELPER ON JS DATE**
- **Format** : 
https://www.commentcoder.com/formater-date-javascript/#:~:text=Le%20format%20jj%2Fmm%2Faaaa%20est%20le%20format%20de%20date,applique%20sur%20l'objet%20Date%20.&text=C'est%20la%20m%C3%A9thode%20la,%C3%A7a%20donne%20new%20Date().

- **Javascript Intl.RelativeTimeFormat** :
https://cdn.discordapp.com/attachments/893106843101048852/1003952141041410068/IMG_7756.jpg
```js
const rtf1 = new Intl.RelativeTimeFormat('en', { 
		style: 'narrow' 
	}
);

console.log(rtf1.format(3, 'quarter'));
//expected output: "in 3 qtrs."

console.log(rtf1.format(-1, 'day'));
//expected output: "1 day ago"

const rtf2 = new Intl.RelativeTimeFormat('es', { numeric: 'auto' });

console.log(rtf2.format(2, 'day'));
//expected output: "pasado mañana"


const english = new Intl.RelativeTimeFormat('en-us')
const spanish = new Intl.RelativeTimeFormat('es-es')

english.format(-2, 'days')
// 2 days ago
spanish.format(10, 'hours')
// dentro de 10 horas
```

```
- **Javascript Intl.NumberFormat** :
```js
const mnt = 1212432;

new Intl.NumberFormat('fr-FR', {
    style: 'currency',
    currency: 'XOF'
}).format(mnt);

const number = 123456.789;

console.log(
	new Intl.NumberFormat('de-DE', { 
		style: 'currency', currency: 'EUR' 
	}).format(number)
);
// expected output: "123.456,79 €"

// the Japanese yen doesn't use a minor unit
console.log(
	new Intl.NumberFormat('ja-JP', { 
		style: 'currency', currency: 'JPY' 
	}).format(number)
);
// expected output: "￥123,457"

// limit to three significant digits
console.log(
	new Intl.NumberFormat('en-IN', { 
		maximumSignificantDigits: 3 
	}).format(number)
);
// expected output: "1,23,000"
```

