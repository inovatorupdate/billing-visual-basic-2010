int LEDA=13;
int LEDB=12;
int LEDC=8;

void setup() {
  // put your setup code here, to run once:
 Serial.begin(9600);
 pinMode(LEDA,OUTPUT);
 pinMode(LEDB,OUTPUT);
 pinMode(LEDC,OUTPUT);
 digitalWrite(LEDA, LOW); //turn off LED
}

void loop() {
  // put your main code here, to run repeatedly:
if (Serial.available())
{
  char inChar = (char)Serial.read();
  if(inChar=='a')digitalWrite(LEDA,1);
  else if (inChar=='b')digitalWrite(LEDB,1);
  else if (inChar=='c')digitalWrite(LEDC,1);
  else if (inChar=='d')digitalWrite(LEDA,0);
  else if (inChar=='e')digitalWrite(LEDB,0);
  else if (inChar=='f')digitalWrite(LEDC,0);
  else {
    digitalWrite(LEDA,0);
    digitalWrite(LEDB,0);
    digitalWrite(LEDC,0);
  }
}  
}
