import React, { FC, ReactElement } from "react";

interface ToolbarProps {
  title?: string;
  background?: string;
}

export const Toolbar: FC<ToolbarProps> = (props) => {
  return (
    <div className={"p-2 flex flex-row justify-between align-middle" + (props.background ?? "")}>
      {props.title && <p className="text-md h-full p-2">{props.title}</p>}
      {props.children}
    </div>
  );
};
