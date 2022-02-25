import { motion } from "framer-motion";

export default function Logo() {
  return (
    <motion.h1
      animate={{ opacity: [0, 1], translateY: [-20, 0] }}
      transition={{
        duration: 0.4,
      }}
      className="text-2xl font-light text-white p-4"
    >
      Pasteboard
    </motion.h1>
  );
}
