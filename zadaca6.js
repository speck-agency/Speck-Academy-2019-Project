var halls = ['dvorana1', 'dvorana2', 'dvorana3', 'dvoran4', 'dvorana5'];
var dvorana1 = {
id:1,
name: 'DvoranaGlavna',
reservation : {
isReserved:new Boolean(false),
reservedFrom:null,
reservedUntil:null,
}
}

var dvorana2 = {
    id:2,
    name: 'DvoranaSporedna',
    reservation : {
    isReserved:new Boolean(false),
    reservedFrom:null,
    reservedUntil:null,
    }
    }

    var dvorana3 = {
        id:3,
        name: 'DvoranaSkolska',
        reservation : {
        isReserved:new Boolean(false),
        reservedFrom:null,
        reservedUntil:null,
        }
        }

        var dvorana4 = {
            id:4,
            name: 'DvoranaKoncertna',
            reservation : {
            isReserved:new Boolean(false),
            reservedFrom:null,
            reservedUntil:null,
            }
            }

            var dvorana5 = {
                id:5,
                name: 'DvoranaMala',
                reservation : {
                isReserved:new Boolean(false),
                reservedFrom:null,
                reservedUntil:null,
                }
                }

// prva funkcija "add"
function add(namenew) {
    var namenew = {
      ID: 5,
      name: 'Dvorananova',
      reservation: {
        isReserved:new Boolean (false),
        reservedFrom: null,
        reservedUntil: null,
      }
    }
    return halls.push(namenew);
   }
   
   // druga funkcija "remove"
   function remove(uvjet) {
    for (i = 0; i <= halls.length - 1; i++) {
      if (uvjet === halls[i].ID)
        return delete halls[i];
    }
   }
   
   // treća funkcija "reservation"
   function reservation(sifra, vrijeme_od, vrijeme_do) {
    for (i = 0; i <= halls.length - 1; i++) {
      if (sifra === halls[i].ID) {
        return halls[i].reservedFrom = vrijeme_od,
          halls[i].reservedUntil = vrijeme_do
      }
    }
   }
   
   // četvrta funkcija "reservation"
   function checkReservation(funk) {
       var date = new Date();
       var timestamp = date.getTime();
    for (i = 0; i <= halls.length - 1; i++) {
      if (funk === halls[i].ID) {
               if (halls[i].reservedUntil < timestamp) {
                  return halls[i].reservedFrom = null,
                    halls[i].reservedUntil = null,
                  halls[i].isReserved = false
              }
           }
       }
   }
   
   
   console.log(halls);

   //nadam se da je to okej 
