var halls = []

halls[0] = {
    id: 0,
    name: "Velika sportska dvorana",
    reservation: {
        isReserved: true,
        reservedFrom: new Date(2019, 12, 03, 14, 00, 00, 0),
        reservedUntil: new Date(2019, 12, 03, 14, 00, 00, 0),
    }
}

halls[1] = {
    id: 1,
    name: "Dvorana Hrvatskog doma",
    reservation: {
        isReserved: true,
        reservedFrom: new Date(2019, 10, 03, 14, 00, 00, 0),
        reservedUntil: new Date(2019, 10, 03, 14, 00, 00, 0),
    }
}

halls[2] = {
    id: 2,
    name: "Dvorana Gradske knjižnice",
    reservation: {
        isReserved: true,
        reservedFrom: null,
        reservedUntil: null,
    }
}

halls[3] = {
    id: 3,
    name: "Dvorana TIC",
    reservation: {
        isReserved: false,
        reservedFrom: null,
        reservedUntil: null,
    }
}

//Hall with the same name below 

halls[4] = {
    id: 4,
    name: "Dvorana TIC",
    reservation: {
        isReserved: false,
        reservedFrom: null,
        reservedUntil: null,
    }
}

module.exports = halls;