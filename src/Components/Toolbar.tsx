import React, { FC, ReactElement } from "react";

interface ToolbarProps {
  heading: ReactElement;
}

export const Toolbar: FC<ToolbarProps> = (props) => {
  return (
    <div className="flex flex-row place-content-between">
      {props.heading} {props.children}
    </div>
  );
};
