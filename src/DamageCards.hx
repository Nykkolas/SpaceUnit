package;

var damageCards = [
    Card.create ("IL FAUT TENIR !", "Dégâts x1"),
    Card.create ("RIPOSTE !", "Dégâts x1\nSi le groupe est blessé à l'issue du tour, infligez à nouveau dégâts x1 avant de commencer un nouveau tour de combat."),
    Card.create ("FRAPPE DECISIVE !", "Dégâts x3"),
    Card.create ("ILS SONT A COUVERT !", "Dégâts x1 si couverture 0\nAucun dégât sinon"),
    Card.create ("TOUCHE !", "Dégâts x2 si couverture 0"),
    Card.create ("ATTAQUE COORDONEE !", "Dégâts x3 si couverture 0 ou 1\nDégâts x2 si couverture 2 ou +"),
    Card.create ("ARME ENRAYEE !", "Dégâts x2\nL'arme de tir d'un des soldats est enrayée. Elle n'est plus utilisable au cours de ce combat. Déduisez sa valeur des dégâts infligés à chaque tour."),
    Card.create ("BON TIR !", "Dégâts x2 si couverture 0 ou 1\nDégâts x1 si couverture supérieure à 1"),
    Card.create ("COMBAT ACHARNE !", "Dégâts x1\nTirez immédiatement une nouvelle carte et appliquez-en les effets."),
    Card.create ("FRAPPE MAGISTRALE !", "Dégâts x4 si couverture 0\nDégâts x3 si couverture 1\nDégâts x2 si couverture 2"),
    Card.create ("EXTREME PRECISION !", "Dégâts x4"),
    Card.create ("COUP PERFORANT !", "Dégâts x1\nNe déduisez pas la Résistance de l'ennemi pour calculer les dégâts."),
    Card.create ("CHAAAAARGEZ !", "Eliminez immédiatement un adversaire au choix\nDégâts x1 sur les autres"),
    Card.create ("ILS SONT SUR NOUS !", "Aucun dégât ce tour"),
    Card.create ("EN FORCE !", "Dégâts x4 si couverture 0\nDégâts x3 si couverture 1\nDégâts x1 si couverture 2")
];

