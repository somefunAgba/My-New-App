function myOrientationCallback(Event)
webcoder.console.log('Recieved orientation event');
orientation = [Event.gamma,Event.beta,Event.alpha];
StoreData.setAttitude(orientation);
end