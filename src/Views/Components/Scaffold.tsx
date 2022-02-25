import { motion } from "framer-motion";
import { FC, ReactElement } from "react";

interface ScaffoldProps {
  toolbar?: ReactElement;
}

const Scaffold: FC<ScaffoldProps> = (props) => {
  return (
    <motion.div
      animate={{ translateY: [100, 0], opacity: [0, 1] }}
      transition={{ duration: 0.4 }}
      className="w-full h-full rounded-t-lg grid bg-scaffold overflow-scroll"
    >
      {props.toolbar && (
        <div className="relative h-12 rounded-t-lg overflow-hidden">
          <div className="w-full backdrop-blur-lg rounded-t-lg overflow-hidden backdrop-filter fixed">
            {props.toolbar}
          </div>
        </div>
      )}
      <div className="flex flex-col p-4">{props.children}</div>
    </motion.div>
  );
};

export default Scaffold;
