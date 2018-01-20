const initialState = {clickCount: 0};

const clickCounter = (state = initialState, action) => {
  switch(action.type){
    case 'incrementCount':
      const clickCount = state.clickCount + 1;
      return { ...state, clickCount }
    default:
      return state
  }
}

export default clickCounter;
