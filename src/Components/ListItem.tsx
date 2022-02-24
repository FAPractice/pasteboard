import React, { FC } from "react";

interface ListItemProps {
  id?: number;
}

export const ListItem: FC<ListItemProps> = (props) => {
  return (
    <div className={"bg-object p-3"} style={{ marginBottom: "1px" }}>
      {props.children}
    </div>
  );
};
