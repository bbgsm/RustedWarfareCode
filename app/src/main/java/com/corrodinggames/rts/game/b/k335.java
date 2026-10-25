package com.corrodinggames.rts.game.b;

import java.util.ArrayList;
import java.util.Properties;

import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public final class k335 {

    public int a;
    public String b;
    public ArrayList<a325> c;
    public int d;
    public int e;
    public Properties f;

    public  k335(Element element, b326 map) {
        this.b = element.getAttribute("name");

        if (element.hasAttribute("width")) {
            this.d = Integer.parseInt(element.getAttribute("width"));
        }

        if (element.hasAttribute("height")) {
            this.e = Integer.parseInt(element.getAttribute("height"));
        }

        this.c = new ArrayList<>();

        NodeList propertiesNodes = element.getElementsByTagName("properties");
        Element propertiesElement = (Element) propertiesNodes.item(0);

        if (propertiesElement != null) {
            NodeList propertyNodes =
                    propertiesElement.getElementsByTagName("property");

            if (propertyNodes != null) {
                this.f = new Properties();

                for (int i = 0; i < propertyNodes.getLength(); i++) {
                    Element property =
                            (Element) propertyNodes.item(i);

                    String name = property.getAttribute("name");
                    String value = property.getAttribute("value");

                    this.f.setProperty(name, value);
                }
            }
        }

        NodeList objectNodes = element.getElementsByTagName("object");

        for (int i = 0; i < objectNodes.getLength(); i++) {
            Element objectElement = (Element) objectNodes.item(i);
            try {
                a325 object = new a325(objectElement, map, this);
                object.a = i;
                this.c.add(object);
            } catch (h332 ex) {
                ex.printStackTrace();
            }
        }
    }

    public final strictfp a325 a(String name) {
        if (this.c != null) {
            for (a325 object : this.c) {
                if (name.equalsIgnoreCase(object.b)) {
                    return object;
                }
            }
        }

        return null;
    }
}
