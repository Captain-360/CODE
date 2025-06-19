/*int pirPin = D2;       // PIR sensor output pin connected to digital pin 2
int ledPin = D1;      // Onboard LED or external LED connected to pin 13
int motionState = LOW; // Current state of motion

void setup() {
  pinMode(pirPin, INPUT);     // Set PIR sensor pin as input
  pinMode(ledPin, OUTPUT);    // Set LED pin as output
  Serial.begin(9600);         // Start serial communication for debugging
}

void loop() {
  int pirValue = digitalRead(pirPin); // Read PIR sensor

  if (pirValue == HIGH) {
    digitalWrite(ledPin, HIGH);  // Turn LED on
    if (motionState == LOW) {
      Serial.println("Motion detected!");
      motionState = HIGH;
    }
  } else {
    digitalWrite(ledPin, LOW);   // Turn LED off
    if (motionState == HIGH) {
      Serial.println("Motion ended.");
      motionState = LOW;
    }
  }
}*/
/*int irSensor = D2;     // IR sensor connected to digital pin 2
int led = D1;         // On-board LED for indication

void setup() {
  Serial.begin(9600);
  pinMode(irSensor, INPUT);
  pinMode(led, OUTPUT);
}

void loop() {
  int value = digitalRead(irSensor);
  Serial.println(value);

  if (value == LOW) { // LOW when obstacle is detected
    digitalWrite(led, HIGH);
    Serial.println("Obstacle detected!");
  } else {
    digitalWrite(led, LOW);
    Serial.println("Obstacle not detected!");
  }

  delay(100);
}*/

