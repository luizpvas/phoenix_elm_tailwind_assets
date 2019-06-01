import "phoenix_html";
import css from "../css/app.css";

import { Elm } from "../elm/Counter.elm";

window.addEventListener("load", ev => {
  let counter = document.querySelector("#counter");
  if (counter) {
    Elm.Counter.init({
      node: counter
    });
  }
});
