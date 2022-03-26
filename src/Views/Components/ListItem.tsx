import React, { FC } from "react";

interface ListItemProps {
  id?: number;
}

export const ListItem: FC<ListItemProps> = (props) => {
  return (
    <div
      className={"bg-object p-3 hover:bg-theme hover:text-theme-foreground"}
      style={{ marginBottom: "1px" }}
    >
      {props.children}
    </div>
  );
};
