const suits = Object.freeze({
  HEARTS: 'HEARTS',
  CLUBS: 'CLUBS',
  DIAMONDS: 'DIAMONDS',
  SPADES: 'SPADES',
  STARS: 'STARS',
});

const ranks = Object.freeze({
  ONE: '1',
  TWO: '2',
  THREE: '3',
  FOUR: '4',
  FIVE: '5',
  SIX: '6',
  SEVEN: '7',
  EIGHT: '8',
  NINE: '9',
  TEN: '10',
  JACK: 'J',
  QUEEN: 'Q',
  KING: 'K',
  JOKER: 'JOKER',
});

class Card {
  constructor(suit, rank) {
    this.suit = suit;
    this.rank = rank;
  }
}

export class FiveCrowns {
  constructor(players) {
    this.players = players;
    this.deck = [];
    this.roundNumber = 1;
  }

  resetDeck() {
    let cards = [];

    for(const suit of Object.values(suits)) {
      for(const rank of Object.values(ranks)) {
        cards.push(new Card(suit, rank));
      }
    }

    this.deck = cards;
  }

  shuffle() {
    let cards = [...this.deck];
    const size = cards.length;

    for(let i = size - 1; i >= 1; i--) {
      const j = Math.floor(Math.random() * (i + 1));

      [cards[i], cards[j]] = [cards[j], cards[i]];
    }

    this.deck = cards;
  }

  deal() {
    let cards = [...this.deck];

    console.log(`Dealing cards for round ${this.roundNumber}`);

    const totalCardsToDeal = this.roundNumber * this.players.length;

    for(let i = 1; i <= totalCardsToDeal; i++) {
      for(const player of this.players) {
        player.hand.push(cards.shift());
      }
    }
  }
}
