import AppBar from "./Components/AppBar";
import { ListItem } from "./Components/ListItem";
import { Page } from "./Components/Page";
import Scaffold from "./Components/Scaffold";
import { Section } from "./Components/Section";
import { Toolbar } from "./Components/Toolbar";

function App() {
  let sampleItems: any = {
    "2020-02-02": ["Sup", "You", "Beautiful", "Bastard"],
    "2020-02-03": ["Sup", "You", "Beautiful", "Bastard"],
    "2020-02-04": ["Sup", "You", "Beautiful", "Bastard"],
    "2020-02-05": ["Sup", "You", "Beautiful", "Bastard"],
  };

  let toolbar = (
    <Toolbar heading={<p>Sup</p>}>
      <button className="text-action">Add from Clipboard</button>
    </Toolbar>
  );

  return (
    <Page>
      <AppBar />
      <Scaffold toolbar={toolbar}>
        {Object.keys(sampleItems).map((key) => (
          <Section header={key} footer={`${sampleItems[key].length} Items`}>
            {sampleItems[key].map((item: String) => (
              <ListItem>{item}</ListItem>
            ))}
          </Section>
        ))}
      </Scaffold>
    </Page>
  );
}

export default App;
