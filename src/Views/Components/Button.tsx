import React, { FC } from "react";

export const Button: FC = (props) => {
  return (
    <div className="hover:bg-object hover:shadow-lg m-3 hover:m-0 hover:p-3 rounded-md transition-all">
      {props.children}
    </div>
  );
};
