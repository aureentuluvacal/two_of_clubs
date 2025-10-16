import { Controller } from "@hotwired/stimulus"
import { FiveCrowns } from 'five_crowns';

export default class extends Controller {
  static targets = [ "board" ];
  static values = { name: String, players: Array };

  initialize() {
    this.startGame();
  }

  startGame() {
    const game = new FiveCrowns(this.playersValue);

    game.resetDeck();
    game.shuffle();
    game.deal();
  }
}
