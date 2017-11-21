package dungeoneering;

import java.io.FileWriter;
import java.io.IOException;

/**
 * Created by cal on 3/23/17.
 */
public class KMLOUPUT {


    static public void main(String[] args){
        String fileName = "res.kml";
        String head = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" +
                "<kml xmlns=\"http://earth.google.com/kml/2.0\">\n" +
                "<Document>\n" +
                "<Style id=\"z1\">\n" +
                "<IconStyle><Icon><href>http://www.google.com/intl/en_us/mapfiles/ms/micons/blue-dot.png</href></Icon></IconStyle>\n" +
                "</Style>\n";
        double R = 5, r=1,a=4;

        double la = 34.021240;
        double lo = -118.289162;
    
        String open = "<Placemark>" +
                "<Point><coordinates>";
        String end = "</coordinates></Point>" +
                "</Placemark>\n";

        try {
            FileWriter fw = new FileWriter(fileName);
            fw.write(head);

            for (double t = 0; t < (Math.PI*10); t+=0.01) {
            	double x = (R+r)*Math.cos((r/R)*t) - a*Math.cos((1+r/R)*t);
            	double y = (R+r)*Math.sin((r/R)*t) - a*Math.sin((1+r/R)*t);
                fw.write(open);
                fw.write((x + lo) + ","+(y + la));
                fw.write(end);
                System.out.println(t);
            }
            fw.write("</Document></kml>");
            fw.close();
            System.out.print("true");
        } catch (IOException e) {
            e.printStackTrace();
        }


    }
}

