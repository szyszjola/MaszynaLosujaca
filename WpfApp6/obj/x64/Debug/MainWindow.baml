   M S B A M L   `   `   `  ����B  >WpfApp6, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp6WpfApp6  5   	   U QMahApps.Metro, Version=1.5.0.23, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5   	       WpfApp6.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp6     5   	   PControls;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro     5   	     � WindowStartupLocation$  CenterScreen=�5   	    � WindowStyle$ ThreeDBorderWindow=�5	   	    � Title$ 
MainWindow��5   	   $
��1000��6   $
��1500��6*    � 	Resources 5       �� 
TargetType �� Property �� Value   buttonTemplate �� 
TargetType A�Name	 �� 
StartPoint
 �� EndPoint � Offset � Color �� RelativeSource �� Path J� RenderTransformOrigin �� ScaleX �� ScaleY �� Triggers P� Property P� Value �� 
TargetName��%|  '��       &	  H     �� 5   
   " ��6   .�5      ��  � ��$ 14(�6)   5      �� 5   
   " ��61   .R�5      � .+�5      A� $ outer��6   ��5      �� 5      $		 0,0&�6.   $	
 0,1&�6?   .��5      � $ 0Q�6+    66   ��  �� *TemplatedParent+$ Background.Color�� 5      $ 1Q�6+    66   ��  �� *TemplatedParent+$ BorderBrush.Color�5      5      A� 5      $ inner��6   $ 0.5,0.5&�6)   z�5      �� 5      $ .8Q�6)   $ .8Q�65   ��5      �� 5      $		 0,0&�6.   $	
 0,1&�6?   .��5       � $ 0Q�6+   $ White��66   � 5!      $ 1Q�6+   $ Transparent��66   5"      5$      �� 5%      $��Center=�6#   $��Center=�6>   #��z��6[   5)       5*      P� 5+       �@J�IsMouseOver . . �5,      �� $ outer��6    � �� 5-      
� 5.      .��5/   "   � $ 	#FF64CEE6��6/   $ 1Q�6A   � 50   "   $ 	#FF3D7CC7��6/   $ 0Q�6A   51      53      �� 54       � ��
 �����63   55      P� 56       � �� . . �57      ��  � z� 58      �� 59      $ .9Q�6-   $ .9Q�69   5;      �� 5<       �@J�RenderTransformOrigin$ .5,.5&�6>   5=      P� 5>       � {� .  . �5?      �� $ outer��6    � �� �	#FFE4E4D26@   �� 5@       � ��
 �����63   5A      5C      5E      .��5F      �  � RowDefinitions 5G   
   �� 5H      $��50 �6   �� 5I      $��* �6   �� 5J      $	��200 �6   .+�5L   
   �� $��0��6   ��5M      
� 5N      .��5O      � $ 	#FF9B8560��6#   $ 0Q�65   � 5P      $ 	#FFFFE4B6��6#   $ 1Q�65   5Q      5S      �� 5T   
   -   5         ��Name$ LosujButton��5T   �   $��80��6   $��80��6   
�������
���  ��#��[  6L   {�.  $��2��6�   $��Losuj��6�   $��10q�6�   $��20q�6�   $��Center=�6�   6�   �� 5U   
   -   5        $ WczytajButton��5U   �   $��80��6   $��80��6   
��� � �
��� ���#��[  6R   $��2��6~   $��Wczytaj��6�   $
��Left=�6�   $��Center=�6�   $��116,50,0,50q�6  &   System.Windows.Controls.DataGrid  5V   
   -   5          Name$ DG��5V   �      SelectionUnit$ FullRow=�6      SelectionMode$ Single=�6,      	RowHeight$ 20Q�6C   $	��450��6R   $	��400��6a      MinRowHeight$ 30Q�6q   $��Center=�6�   $��Center=�6�   $��1��6�      AutoGenerateColumns .     
IsReadOnly .    Columns 5W      0  *System.Windows.Controls.DataGridTextColumn  5X      ,  &System.Windows.Controls.DataGridColumn    MinWidth$	  150Q�6(   !   Header$! NUMER��67   1  +System.Windows.Controls.DataGridBoundColumn"   Binding" 6F   �� $ Numer�5Z        5[      $	  150Q�6&   $
! IMIE��65   " 6C   �� $
 Imie�  5\      $	  300Q�6&   $! NAZWISKO��65   " 6G   �� $ Nazwisko�#   ColumnHeaderStyle# 5^      �� 5_      =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6   .�5`      ��  � �� 5a      �� 5b      $
 0.5,1&�62   $	 0.5,0&�6C   .��5c   "   � $ 	#FFF1E6E6��6/   $ 0Q�6A   � 5d   "   $ White��6/   $ 1Q�6=   5e      5g      �� 5h       � ��$ 10,5,5,5q�60   �� 5i       � ��
 �����64   �� 5j       � ��$ 1,0,1,1q�68   �� 5k       � ��$ 14(�61   $ �� Triggers$ 5l      P� 5m       � �� . . �5n      ��  � ��$
 Bold"�6;   5o      5q      %   RowStyle% 5s      �� 5t      )  #System.Windows.Controls.DataGridRow"  6   .�5u      ��  � ��
 �����63   �� 5v       � ��$ 12(�61   $ 5w      P� 5x       �@J�IsMouseOver . . �5y      ��  � ��
 �<��6;   �� 5z       � ��
 �����6;   �� 5{       � ��$ DemiBold"�6;   5|      P� 5}       �@ 
IsSelected . . �5~      ��  � �� �	#FFEE64646;   �� 5       � ��
 �����6;   5�      5�      &   	CellStyle& 5�      �� 5�      *  $System.Windows.Controls.DataGridCell"  6   $ 5�      P� 5�       �@ 
IsSelected . . �5�      ��  � �� �	#FFEE64646;   5�      5�      5�      � 5�   
   -   5        ' �Name$' Progress��5�      $
��10,5q�6(   ( � Minimum$( 0Q�66   ) � Maximum$) 5Q�6B   �� 5�   
   -   5        * ��Name$* txbImie��5�   &   $y�Hidden=�6   $��1��67   $��60,122,842,271q�6D   �� 5�   
   -   5        $* txbNazwisko��5�   &   $y�Hidden=�6   $��1��6;   $��735,122,167,271q�6H   )  #MahApps.Metro.Controls.ProgressRing  5�   
   -   5        +  Name$+ ProgressRing��5�       
����  �,   IsActive, .  $��1��6Y   $��Center=�6f   $��Center=�6�   $	��100��6�   $	��100��6�   5�      5�      