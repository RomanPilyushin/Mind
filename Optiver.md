---
tags:
  - optiver
  - finance
  - algorithm
  - python
  - trading
---

## Rules of the game

- [[#Fees|Fees]]
- [[#Manual hedging|Manual hedging]]
- [[#Exchange rules|Exchange rules]]
- [[#Glossary|Glossary]]

### Fees

To attract market makers to their market, the exchange has agreed to provide incentives and services as described below. Each trade attracts a small fee paid to the exchange. In the Ready Trader Go ETF market, the aggressor in a trade pays the taker fee, which is 2bps, or 0.02% of the value of the trade. However, to incentivise market making the exchange pays the initiator of the passive order in the trade a maker fee – 1bp or 0.01% of the value of the trade.

### Manual hedging

- To help you manage your risk the exchange has a dedicated unit which maintains a pool of futures contracts which you can draw upon to hedge your position in the ETF at current market prices.

### Exchange rules

Each team will need to adhere to the following exchange rules:

- No “wash trades” allowed. Any inserted orders that are in cross with an active order from the same participant will be rejected.
- No more than 50 order operation requests (insert, cancel or amend) may be sent in any rolling one second period. Breaching this will see the participant’s access to the exchange revoked for the rest of the round.
- No more than ten unhedged lots may be held in any instrument for more than one minute. Breaching this will see the participant’s access to the exchange revoked for the rest of the round.
- Positions will be limited to 100 lots. Breaching this will see the participant’s access to the exchange revoked for the rest of the round.
- Active order counts will be limited to 10 orders. Any inserted orders in excess of this will be rejected.
- Active volume limit will be limited to 200 lots. The active volume is the sum of the volume of all the orders you have on the exchange. Any inserted orders in excess of this will be rejected.
- The OPTI-100 Index Future closing price is the last traded price.
- The OPTI ETF closing price is the larger of min (OPTI-ETF Last Traded Price, OPTI-100 Index Future Closing Price * 1.002) and OPTI-100 Index Future Closing Price * 0.998.


### Glossary

**Aggressor**: the market participant that inserted an order in cross with an existing order already on the exchange, causing a trade to occur.

**Amend:** to modify the price or volume of an existing order. In Ready Trader Go you can only reduce the volume of an order, you cannot change the price, side or type of an order.

**Ask**: i) a SELL order, or ii) refers to the price of the lowest sell order in the market (i.e. the ask is $10.13).

**Bid:** i) a BUY order, or ii) refers to the price of the highest buy order in the market (i.e. the bid is $10.12).

**Counterparty:** refers to the person or company on the other side of a trade (e.g. “Optiver was my counterparty”).

**Exchange Traded Fund ([ETF](https://www.optiver.com/insights/guides/etfs/))** – a popular tool for investors to access a range of markets and asset classes. The ETF asset manager holds futures to track the index so the “Fair value” of the ETF exactly tracks the future price. However, the ETF price can deviate from the future fair price due to supply and demand in the ETF. The ETF can be created and redeemed at the end of each day for a fee which restricts how far the ETF price can deviate from the future before presenting an arbitrage opportunity.

**Execution:** refers to messages between you and the exchange relating to your orders; e.g. you place an order by sending an “order insert” execution message, you are notified that you have traded via a “order filled” execution message etc.

**Filled:** means “traded” – e.g. if you try to buy 1,000 lots but you only get 500, your order is said to be “partially filled”.

**Hit:** means to “sell” – e.g. “hitting the bid” means crossing the spread to sell an existing buy order.

**Index:** a measurement of the value of a particular segment of the market, used for monitoring returns and benchmarking the performance of portfolios. For example, the EURO STOXX 50 is an index comprised of 50 of the largest and most liquid stocks in Europe.

**Index Futures**: Enables investors to gain exposure to the Index.

**Lift:** means to “buy” – e.g. “lifting the offer” means crossing the spread to buy an existing sell order.

**Limit Order:** an order with a limit price, i.e. a minimum or maximum price at which it’s willing to trade – as opposed to a market order.

[**Liquidity**](https://www.optiver.com/insights/guides/liquidity/): How quickly and easily an asset can be bought or sold in large quantities for a fair price.

**Lots:** refers to the number of units / order volume (e.g. 1,000 lots means a quantity of 1,000 shares/futures/units).

[**Market Making**](https://www.optiver.com/insights/guides/market-making/): a market participant that’s willing to both buy and sell simultaneously. They make a profit on the difference between the buy and sell prices, this is also called “the spread”.

**Market Order:** an order without a limit price, i.e. indicates willingness to buy or sell a specified volume at any price. Optiver recommends that you never use a market order.

**Market Information:** refers to public data disseminated by the matching engine about the state of the market, such as what orders are in the book and what trades have occurred.

**Matching Engine:** a computer program responsible for matching buy and sell orders to generate trades between counterparties.

**Offer:** same as ask.

**Order Book:** a collection of orders arranged according to the rule of price-time priority.

**Price-time priority:** orders with a better price (higher bids and lower offers) are matched / allocated a trade first. If orders are at the same price, whichever one arrives at the matching engine first will be matched / allocated a trade first.

**[Spread](https://www.optiver.com/insights/guides/bid-ask-spread/):** the difference between the bid and ask.

**Unfilled:** not filled.

**Volumes:** see Order Book.