import AppBar from "./Components/AppBar";
import { ListItem } from "./Components/ListItem";
import { Page } from "./Components/Page";
import Scaffold from "./Components/Scaffold";
import { Section } from "./Components/Section";

function App() {
  let sampleItems: any = {
    "2020-02-02": ["Sup", "You", "Beautiful", "Bastard"],
    "2020-02-03": ["Sup", "You", "Beautiful", "Bastard"],
    "2020-02-04": ["Sup", "You", "Beautiful", "Bastard"],
  };

  return (
    <Page>
      <AppBar />
      <Scaffold toolbar={<p>Sup</p>}>
        {Object.keys(sampleItems).map((key) => (
          <Section header={key}>
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
