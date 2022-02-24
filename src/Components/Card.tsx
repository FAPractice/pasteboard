import React, { FC } from "react";

export const Card: FC = (props) => {
  return (
    <div
      className="bg-object shadow-lg rounded-lg p-3"
    >
      {props.children}
    </div>
  );
};
