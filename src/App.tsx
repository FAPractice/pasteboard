import { motion } from "framer-motion";

function App() {
  return (
    <div className="w-screen h-screen place-content-center grid bg-blue-600">
      <motion.h1
        animate={{ opacity: [0, 1], translateY: [-100, 0] }}
        transition={{
          duration: 0.4,
        }}
        className="text-9xl font-black text-white"
      >
        Hello, World
      </motion.h1>
    </div>
  );
}

export default App;
