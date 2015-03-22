package JavaBrite;

import java.lang.*;
import JavaBrite.XmlScript.BWAssginType;

final public class BriteToXML {
    private static BWAssginType fromInt(String x) {
        int y = Integer.parseInt(x);
        switch(y) {
            case 0:
                return BWAssginType.CONSTANT;
            case 1:
                return BWAssginType.UNIFORM;
            case 2:
                return BWAssginType.HEAVYTAILED;
            case 3:
                return BWAssginType.EXPONENTIAL;
        }
        return null;
    }

    public static void main (String args[]) {
        if (args.length > 0) {
            try {
                String input = args[0];

                int minsubnetnum = Integer.parseInt(args[1]);
                int maxsubnetnum = Integer.parseInt(args[2]);
                boolean duplicatesubnets = Boolean.parseBoolean(args[3]);
                int minrtnum = Integer.parseInt(args[4]);
                int maxrtnum = Integer.parseInt(args[5]);
                int minhostnum = Integer.parseInt(args[6]);
                int maxhostnum = Integer.parseInt(args[7]);
                float minrtbw = Float.parseFloat(args[8]);
                float maxrtbw = Float.parseFloat(args[9]);
                BWAssginType rtbw = fromInt(args[10]);
                float minrtlatency = Float.parseFloat(args[11]);
                float maxrtlatency = Float.parseFloat(args[12]);
                BWAssginType rtlt = fromInt(args[13]);
                float minhostbw = Float.parseFloat(args[14]);
                float maxhostbw = Float.parseFloat(args[15]);
                BWAssginType hostbw = fromInt(args[16]);
                float minhostlatency = Float.parseFloat(args[17]);
                float maxhostlatency = Float.parseFloat(args[18]);
                BWAssginType hostlt = fromInt(args[19]);

                XmlScript xs = new XmlScript(input ,null);
                
                //if AS or RT
                xs.Brite2XmlFlat();
                //else if topdown or bottom up
                //xs.Brite2XmlHierarchical()
                xs.AttachLanNet(minsubnetnum, maxsubnetnum, duplicatesubnets,
                                minrtnum, maxrtnum, 
                                minhostnum, maxhostnum,
                                minrtbw, maxrtbw, rtbw,
                                minrtlatency, maxrtlatency, rtlt,
                                minhostbw, maxhostbw, hostbw,
                                minhostlatency, maxhostlatency, hostlt);

                input = input.replaceAll(".brite", ".xml");
                xs.WriteXml(input);
            } catch (Exception e) {
                System.out.println("Invalid file");
                System.exit(1);
            }
        }
    }
}

