import React from 'react';
import {NativeModules, Button, StyleSheet, View} from 'react-native';

const NewModuleButton = () => {
  const {CalendarModule} = NativeModules;

  const onPress = () => {
    CalendarModule.createCalendarEvent('testName', 'testLocation');
  };

  return (
    <View style={styles.container}>
      <Button
        title="Click to invoke your native module!"
        color="#841584"
        onPress={onPress}
      />
    </View>
  );
};

export default NewModuleButton;

const styles = StyleSheet.create({
  container: {
    flex: 1,
    marginTop: 100,
  },
});
