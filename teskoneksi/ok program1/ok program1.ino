//------------- START OF ARDUINO SKETCH -----------------
//
// Mixed by: Hazim Bitar
// Based on: Science Guy 14 youTube tutorial http://youtu.be/g0pSfyXOXj8

int ledPin = 13; // the number of the LED pin

void setup() {
Serial.begin(9600); // set serial speed
pinMode(ledPin, OUTPUT); // set LED as output
digitalWrite(ledPin, LOW); //turn off LED
}


void loop(){
while (Serial.available() == 0); // do nothing if nothing sent
char inChar = (char)Serial.read(); // deduct ascii value of '0' to find numeric value of sent number

if (inChar=='A') { // test for command 1 then turn on LED
Serial.println("LED ON");
digitalWrite(ledPin, HIGH); // turn on LED

}
else if (inChar=='a') // test for command 0 then turn off LED
{
Serial.println("LED OFF");
digitalWrite(ledPin, LOW); // turn off LED

}
else // if not one of above command, do nothing
{
//val = val;
}
Serial.println(inChar);
Serial.flush(); // clear serial port
}

//------------- END OF ARDUINO SKETCH -----------------