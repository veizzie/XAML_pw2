   M S B A M L   `   `   `  ����>  :PW2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:PW2PW2  5   	       PW2.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   #localclr-namespace:PW2     5   	     � Title$  
MainWindow��5   	   $	��600��6   $	��800��6)   .��5	      � -   5         �Name$ MainContainer��5	      .+�5   
   F� -   5         F�Name$ TrianglePath��5      
����  �
���   �$��1��6@   $��Center=�5      $��Center=�6.   ��5      B� 5      .��5      E�  E� 
StartPoint$	 0,0&�6!   .��5      ��  �� Point$ 30,50&�6&   �� 5      $ -30,50&�6&   5      5      z�5      T� 5      -   5        TriangleTransform��5   %   5      �� 5   
   -   5         ��Name$ RectangleShape��5      $��50��6,   $��30��67   
���  ��
���   �$��1��6]   $��Center=�5      $��Center=�62   z�5      T� 5      -   5        RectangleTransform��5   %   5       A� 5#   
   -   5         A�Name$ CircleShape��5#      $��40��6'   $��40��62   
��� � �
���   �$��1��6Z   $��Center=�5$      $��Center=�62   z�5%      T� 5&      -   5        CircleTransform��5&   %   5(      F� 5+   
   -   5        $ PyramidPath��5+      
���� ��
���   �$��1��6A   $��Center=�5,      $��Center=�6.   ��5-      B� 5.      .��5/      E� $	 0,0&�6!   .��50      �� $ 20,-30&�6&   �� 51      $
 40,0&�6&   �� 52      $ 20,15&�6&   �� 53      $	 0,0&�6&   54      55      z�57      T� 58      -	   5        PyramidTransform��58   %   5:      F� 5=   
   -
   5        $ 	PrismPath��5=      
��� ���
���   �$��1��6?   $��Center=�5>      $��Center=�6.   ��5?      B� 5@      .��5A      E� $	 0,0&�6!   .��5B      �� $ 15,-20&�6&   �� 5C      $ 65,-20&�6&   �� 5D      $
 50,0&�6&   �� 5E      $	 0,0&�6&   5F      5G      z�5I      T� 5J      -   5        PrismTransform��5J   %   5L      5M      5N      