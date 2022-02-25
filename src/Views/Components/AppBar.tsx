import { FC } from "react";
import Logo from "./Logo";

const AppBar: FC = (props) => {
  return (
    <div style={{ position: "relative" }} className="w-screen">
      <Logo />
    </div>
  );
};

export default AppBar;
