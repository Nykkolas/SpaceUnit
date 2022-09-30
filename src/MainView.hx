package ;

import DamageCards.damageCards;
import haxe.ui.containers.VBox;
import haxe.ui.events.MouseEvent;
import haxe.ui.containers.dialogs.Dialog;
import Random;

@:build(haxe.ui.ComponentBuilder.build("assets/main-view.xml"))
class MainView extends VBox {
    public function new() {
        super ();
        for (card in damageCards) {
            cardList.dataSource.add (card);
        }
    }

    // Mise à jour de la carte
    private function updateCard() {
        damagesCard.text = cardList.selectedItem.title;
        damagesContent.text = cardList.selectedItem.damages;
        damagesCard.hidden = false;
    }
    // Sélection d'un item à la souris
    @:bind(cardList, MouseEvent.CLICK)
    private  function onCardListClick(e:MouseEvent) {
        updateCard();
    }

    // "Random pick" Button
    @:bind(randomPick, MouseEvent.CLICK)
    private function onRandomPickButton(e:MouseEvent) {
        cardList.selectedIndex = Random.int(0, cardList.dataSource.size - 1);
        updateCard();
    }

    // "+" Button
    @:bind(addCard, MouseEvent.CLICK)
    private function onAddCardButton(e:MouseEvent) {
        addCard.text = Const.ADD_CARD_WAIT;
        var dialog = new AddCardDialog();
        dialog.onDialogClosed = function(e:DialogEvent) {
            if (e.button == Const.CREATE_BUTTON_TEXT) {
                trace(dialog.cardTitle.text);
                trace(dialog.cardDamages.text);
                cardList.dataSource.add (Card.create (dialog.cardTitle.text, dialog.cardDamages.text));
            }
            addCard.text = Const.ADD_CARD_OK;
        }
        dialog.showDialog();
    }
}

