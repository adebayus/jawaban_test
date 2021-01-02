### Aplikasi Yang Digunakan

1. Vs Code

### Cara Menjalakan Aplikasi

2. node "nama_file.js"

# Soal 1

1. mendeklarasikan array berisi uang pecahan
```javascript
const pecahan = [100000, 50000, 20000, 10000, 5000, 2000, 1000, 500, 200 , 100];
```

2. membuat function untuk menghitung kembalian
```javascript
function hitungUangKembalian(uangBayar, totalBayar) {
	console.log("Uang Dibayarkan : ", uangBayar);
	console.log("Total Bayar : ", totalBayar);
	console.log(`\n`, "===================");

	var totalKembalian = uangBayar - totalBayar;
    
    // console.log(totalKembalian);
    var tempFor = totalKembalian;
    for (let index = 0; index < pecahan.length; index++) {
        tempFor
        if (tempFor>=pecahan[index]){
            var jenis = "lembar"
            if(pecahan[index] < 1000 ){
                jenis = "buah"
            }
            var banyakPecahan = Math.floor(tempFor / pecahan[index])
            tempFor = tempFor - (pecahan[index] * banyakPecahan)
            console.log(`Uang Pecahan RP ${pecahan[index]} sebanyak ${banyakPecahan} ${jenis}` )
        }
    }

    console.log(`\n`, "===================");
    var kembalianLocale = totalKembalian.toLocaleString(['ban', 'id'])
    console.log(`kembalian : Rp ${kembalianLocale}`)
    

}
```

3. memanggil fungsi yang sudah dibuat

```javascript
hitungUangKembalian(200000, 184600);
```



# Soal 2

1. mendeklarasikan array 
```javascript
const data = [1,4,6,2,6,8,9,21,20, 14, 3,6,11,1,1,2,3,4,6,8,9,2,1,5,2,5,6,8,3,2]
```

2. membuat function untuk memilah nilai yang ganjil kemudian mereduce nilai yang sama dan mensorting dari tinggi ke besar
```javascript
function tigaTerbesar(data) {
    const ganjilReduceAndSort =  reduceValue(data)
    return ganjilReduceAndSort.forEach((x,index )=> { index <= 2 && console.log(`nilai Tertinggi ${index + 1} : ${x} `)   })
}

function reduceValue(ganjil){
    var tampungValue = [];
        
        // Loop through array values
        for(var value of ganjil){
            if(tampungValue.indexOf(value) === -1){
                tampungValue.push(value);
            }
        }
        tampungValue.sort(function(a, b) {
            return b - a;
          });

        return tampungValue;
}
```

3. memanggil fungsi yang sudah dibuat

```javascript
tigaTerbesar(data)
```



# Soal 3

1. membuat file html beserta membuat div dengan id root

```html
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

</head>
<body>
    <div id="root">

    </div>
</body>
</html>

``` 
2. menambahkan javascript

```html

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="index.css">
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous"> -->
</head>
<body>
    <div id="root">

    </div>
    <script>
        const kata="DUMBWAYS"
        var kataLength = kata.length-1
        const kataToArray = kata.split("")
        
        //  row 
        var makeRow = document.createElement("div")
        makeRow.className = "row"

        // col
        var makeCol = document.createElement("div")
        makeCol.className = "col"


        for (let i = 0; i < kata.length; i++) {
            document.getElementById('root').appendChild(makeRow.cloneNode(true))
            var classRowLength = document.getElementsByClassName("row")
            var lastIndexRow = classRowLength.length-1
            
            for (let y = 0; y < kata.length; y++) {
                document.getElementsByClassName('row')[lastIndexRow].appendChild(makeCol.cloneNode(true))
                var classColLength = document.getElementsByClassName("col")
                var lastIndexCol = classColLength.length-1
                if(i === y || kataLength === y ){

                    var text = document.createTextNode(`${kataToArray[y]}`)
                    document.getElementsByClassName('col')[lastIndexCol].appendChild(text)

                }
                else{
                    var text = document.createTextNode(` `)
                    document.getElementsByClassName('col')[lastIndexCol].appendChild(text)  
                }
                
            }

            kataLength--
            
        }

    </script>
</body>
</html>

```
3. menambahkan css
```css
*{
    box-sizing: border-box;
    padding: 0;
    margin: 0;
}

#root {
    margin: 100px auto;
    max-width: fit-content;
}

.row{
    
    display: flex;
    max-width: fit-content;

}

.col{
    border: 1px solid darkgray;
    display: flex;
    justify-content: center;
    align-items: center;
    width: 20px;

}

```
