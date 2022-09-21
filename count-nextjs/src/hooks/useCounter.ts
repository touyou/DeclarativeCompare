import { useCallback, useState } from "react";

export const useCounter = (initialValue: number = 0) => {
  const [count, setCount] = useState(initialValue);
  const increment = useCallback(() => setCount(count + 1), [count]);
  const decrement = useCallback(() => setCount(count - 1), [count]);
  const reset = useCallback(() => setCount(initialValue), [initialValue]);
  return { count, increment, decrement, reset };
};
