package iuh.fit.se.model;

import java.util.ArrayList;

public class CartBean {
    private ArrayList<CartItemBean> alCartItems = new ArrayList<>();
    private double dblOrderTotal;

    public int getLineItemCount() {
        return alCartItems.size();
    }

    public void deleteCartItem(String strItemIndex) {
        try {
            int iItemIndex = Integer.parseInt(strItemIndex);
            alCartItems.remove(iItemIndex - 1);
            calculateOrderTotal();
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
    }

    public void updateCartItem(String strItemIndex, String strQuantity) {
        try {
            int iItemIndex = Integer.parseInt(strItemIndex);
            int iQuantity = Integer.parseInt(strQuantity);
            if (iQuantity > 0) {
                CartItemBean cartItem = alCartItems.get(iItemIndex - 1);
                double dblUnitCost = cartItem.getUnitCost();
                double dblTotalCost = dblUnitCost * iQuantity;
                cartItem.setQuantity(iQuantity);
                cartItem.setTotalCost(dblTotalCost);
                calculateOrderTotal();
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
    }

    public void addCartItem(String strModelNo, String strDescription, String strUnitCost, String strQuantity) {
        try {
            double dblUnitCost = Double.parseDouble(strUnitCost);
            int iQuantity = Integer.parseInt(strQuantity);
            if (iQuantity > 0) {
                double dblTotalCost = dblUnitCost * iQuantity;
                CartItemBean cartItem = new CartItemBean();
                cartItem.setPartNumber(strModelNo);
                cartItem.setModelDescription(strDescription);
                cartItem.setUnitCost(dblUnitCost);
                cartItem.setQuantity(iQuantity);
                cartItem.setTotalCost(dblTotalCost);
                alCartItems.add(cartItem);
                calculateOrderTotal();
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
    }

    public void addCartItem(CartItemBean cartItem) {
        alCartItems.add(cartItem);
    }

    public CartItemBean getCartItem(int iItemIndex) {
        if (alCartItems.size() > iItemIndex) {
            return alCartItems.get(iItemIndex);
        }
        return null;
    }

    public ArrayList<CartItemBean> getCartItems() {
        return alCartItems;
    }

    public void setCartItems(ArrayList<CartItemBean> alCartItems) {
        this.alCartItems = alCartItems;
    }

    public double getOrderTotal() {
        return dblOrderTotal;
    }

    public void setOrderTotal(double dblOrderTotal) {
        this.dblOrderTotal = dblOrderTotal;
    }

    protected void calculateOrderTotal() {
        double dblTotal = 0;
        for (CartItemBean cartItem : alCartItems) {
            dblTotal += cartItem.getTotalCost();
        }
        setOrderTotal(dblTotal);
    }
}
