import React, { FC } from "react";

interface SectionProps {
  header?: String;
  footer?: String;
}

export const Section: FC<SectionProps> = (props) => {
  return (
    <div className="grid pb-4" style={{ gridTemplateRows: "auto 1fr auto" }}>
      <p className="text-primary text-sm pb-3">{props.header}</p>
      <div className="shadow-xl rounded-lg">
        <div className="flex flex-col rounded-lg overflow-hidden">
          {props.children}
        </div>
      </div>
      <p className="text-secondary text-sm pt-3">{props.footer}</p>
    </div>
  );
};
