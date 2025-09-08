package iuh.fit.se.model;

import java.util.ArrayList;
import java.util.List;

public class ProductList {
    private static final List<Product> ds = new ArrayList<>();

    static {
        initData();
    }

    public static List<Product> queryProducts() {
        return ds;
    }

    private static void initData() {
        Product sp;

        sp = new Product();
        sp.setId("PRO01");
        sp.setModel("Iphone 17 Pro Max");
        sp.setDescription("Smartphone Nokia Lumia");
        sp.setPrice(99000);
        sp.setQuantity(10);
        sp.setImgURL("images/dt1.jpg");
        ds.add(sp);

        sp = new Product();
        sp.setId("PRO02");
        sp.setModel("Iphone 16 Plus - Green");
        sp.setDescription("Blackberry Business Phone");
        sp.setPrice(48000);
        sp.setQuantity(10);
        sp.setImgURL("images/dt2.jpg");
        ds.add(sp);

        sp = new Product();
        sp.setId("PRO03");
        sp.setModel("Iphone 16 Plus - Blue");
        sp.setDescription("Sony Xperia Smartphone");
        sp.setPrice(52000);
        sp.setQuantity(10);
        sp.setImgURL("images/dt3.jpg");
        ds.add(sp);

        sp = new Product();
        sp.setId("PRO04");
        sp.setModel("Iphone 16 Plus - Pink");
        sp.setDescription("HTC Flagship Phone");
        sp.setPrice(83000);
        sp.setQuantity(10);
        sp.setImgURL("images/dt4.jpg");
        ds.add(sp);

        sp = new Product();
        sp.setId("PRO05");
        sp.setModel("Iphone 17 Pro Max - RED");
        sp.setDescription("Samsung Note Series");
        sp.setPrice(71000);
        sp.setQuantity(10);
        sp.setImgURL("images/dt5.jpg");
        ds.add(sp);

        sp = new Product();
        sp.setId("PRO06");
        sp.setModel("Iphone 16 Pro Max");
        sp.setDescription("Apple iPhone 7 Plus");
        sp.setPrice(120000);
        sp.setQuantity(10);
        sp.setImgURL("images/dt6.jpg");
        ds.add(sp);
    }
}
