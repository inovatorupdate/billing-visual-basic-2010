int i;

void setup()
{
 Serial.begin(9600);
}

void loop()
{
	Serial.print(i);
	i++;
	delay(100);
}
