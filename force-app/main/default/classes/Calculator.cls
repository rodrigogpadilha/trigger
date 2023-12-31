public class Calculator {
	
    public Decimal value;
    
     
    public Decimal sum(Decimal operationValue){
    this.value += operationValue;
    return this.value;
	}
    public Decimal sub(Decimal operationValue){
    this.value -= operationValue;
    return this.value;
	}
    public Decimal mult(Decimal operationValue){
    this.value *= operationValue;
    return this.value;
	}
    public Decimal div(Decimal operationValue){
    this.value /= operationValue;
    return this.value;
	}
    
    public Decimal getResult(){
        return this.value;
    }
    
    public void clear(){
       this.value = 0;
    }
       	
     
     public Calculator(Decimal dValue){
       this.value = dValue;
    }
   
    	
    public Decimal exp(Decimal exponent){
  
        Double doubleValue = this.value;
        Double doubleExponent = exponent;
        
        Double doubleResult = Math.pow(doubleValue, doubleExponent);
        
        Decimal result = Decimal.valueOf(doubleResult);
        return result;
       
    }   
    
    public String convertTo(CurrencyRatio currencyParam){
        Decimal convertedValue = this.value * currencyParam.conversionRatio;
        convertedValue = convertedvalue.setScale(2);
        System.debug('convertedValue => ' + convertedValue);
        
        
        String formattedValue = convertedValue.format();
        System.debug('formattedValue => ' + formattedValue);
        
        return currencyParam.currencyInitials + ' ' + formattedValue;
        
    }
    
}