package ;

typedef Card = {
    var title: String;
    var damages: String;
}

function create(t, d) {
    var c:Card = { title: t, damages: d };
    return c;
}

