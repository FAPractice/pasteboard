import { v4 as uuidv4 } from "uuid";

export default class Item {
  public id: Number;
  public text: String;
  public date: Number;

  constructor(text: String) {
    this.text = text;
    this.date = Date.now();
  }
}
