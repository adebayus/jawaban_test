const pecahan = [100000, 50000, 20000, 10000, 5000, 2000, 1000, 500, 200 , 100];

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

hitungUangKembalian(200000, 184600);
