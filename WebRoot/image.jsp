<%@ page contentType="image/jpeg"%>
<%@ page import="javax.imageio.*,java.awt.image.*"%>
<jsp:useBean id="img" class="com.Image"></jsp:useBean>
  <%
          BufferedImage image=img.getImage();
          session.setAttribute("rand",img.getRand());   
          ImageIO.write(image,"JPEG",response.getOutputStream());
          response.getOutputStream().close();
  %>
