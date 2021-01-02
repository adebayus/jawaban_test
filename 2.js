const data = [1,4,6,2,6,8,9,21,20, 14, 3,6,11,1,1,2,3,4,6,8,9,2,1,5,2,5,6,8,3,2]
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



tigaTerbesar(data)