import React, { FC, MouseEventHandler } from "react";

interface ButtonInterface {
  onClick?: MouseEventHandler;
}

export const Button: FC<ButtonInterface> = (props) => {
  return (
    <div
      onClick={props.onClick}
      className="text-action hover:text-theme hover:bg-object hover:shadow-lg m-3 hover:m-0 hover:p-3 rounded-md transition-all"
    >
      {props.children}
    </div>
  );
};
