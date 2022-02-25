import AppBar from "./Views/Components/AppBar";
import { ListItem } from "./Views/Components/ListItem";
import { Page } from "./Views/Components/Page";
import Scaffold from "./Views/Components/Scaffold";
import { Section } from "./Views/Components/Section";
import { Toolbar } from "./Views/Components/Toolbar";
import { Button } from "./Views/Components/Button";

import { Clipboard } from "react-feather";

function App() {
  let sampleItems: any = {
    "2020-02-02": ["Sup", "You", "Beautiful", "Bastard"],
    "2020-02-03": ["Sup", "You", "Beautiful", "Bastard"],
    "2020-02-04": ["Sup", "You", "Beautiful", "Bastard"],
    "2020-02-05": ["Sup", "You", "Beautiful", "Bastard"],
  };

  let toolbar = (
    <Toolbar title="History">
      <Button>
        <Clipboard className="w-4 h-4" />
      </Button>
    </Toolbar>
  );

  return (
    <Page>
      <AppBar />
      <Scaffold toolbar={toolbar}>
        {Object.keys(sampleItems)
          .reverse()
          .map((key) => (
            <Section header={`${key}`}>
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
