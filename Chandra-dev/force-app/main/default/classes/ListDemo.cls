public class ListDemo {
    
    public static void addColors(){
        
        List<String> colors = new List<String>();
        colors.add('Red');
        colors.add('Yellow');
        colors.add('Blue');
        colors.add('Green');
        colors.sort();
        system.debug('colors : '+ colors);
        
        List<String> compcolors = new List<String>();
        compcolors.add('Yellow');
        compcolors.add('Red');
        compcolors.add('Blue');
        compcolors.add('Green');
        //compcolors.add('Black');
        compcolors.sort();
        system.debug('compcolors : '+ compcolors);
        
        Boolean valComp = compcolors.equals(colors);
        
        system.debug('valComp : '+valComp);
        
        
        
    }
    
}