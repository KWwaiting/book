package com;

import java.awt.*;
import java.awt.image.*;
import java.io.*;
import java.util.*;

public class Image {

	private String sRand="";
 	 
   //��ȡ�����ɫ 
   public	Color getRandColor(int fc,int bc){
        Random random = new Random();
        if(fc>255) fc=255;
        if(bc>255) bc=255;
        int r=fc+random.nextInt(bc-fc);
        int g=fc+random.nextInt(bc-fc);
        int b=fc+random.nextInt(bc-fc);
        return new Color(r,g,b);
   }
   //������֤��
   public  BufferedImage getImage() throws IOException{
        int width=60, height=20;
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        Graphics g = image.getGraphics();
        Random random = new Random();
        g.setColor(getRandColor(200,250));
        g.fillRect(0, 0, width, height);
        g.setFont(new Font("Times New Roman",Font.PLAIN,18));
        g.setColor(getRandColor(160,200));
        //����155�����������
        for (int i=0;i<155;i++)
        {
           int x = random.nextInt(width);
           int y = random.nextInt(height);
           int xl = random.nextInt(12);
           int yl = random.nextInt(12);
           g.drawLine(x,y,x+xl,y+yl);
        } 
        //����4λ����� 
       for (int i=0;i<4;i++) 
        {
       String rand=String.valueOf(random.nextInt(10));
       sRand+=rand;
       g.setColor(new Color(20+random.nextInt(110),20+random.nextInt(110),20+random.nextInt(110)));
       g.drawString(rand,13*i+6,16);
        }
       g.dispose(); 
       return image;
    }
   //��ȡ��λ�����
   public String  getRand()
   {
	   return sRand;
   }
}
