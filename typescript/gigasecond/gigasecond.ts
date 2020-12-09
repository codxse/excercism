const GIGA_SECONDS = 1_000_000_000

export default class Gigasecond {
  private readonly _datePlusGigasecond: Date;

  constructor(date: Date) {
    this._datePlusGigasecond = new Date(date.getTime() + GIGA_SECONDS * 1_000)
  }

  date = () => this._datePlusGigasecond
}