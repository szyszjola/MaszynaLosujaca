   M S B A M L   `   `   `  ����B  >WpfApp6, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp6WpfApp6  5   	       WpfApp6.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp6     5   	     � WindowStartupLocation$  CenterScreen=�5   	    � WindowStyle$ ThreeDBorderWindow=�5   	    � Title$ 
MainWindow��5
   	   $
��1000��6   $
��1500��6*   .��5      �  � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      $��* �6   �� 5      $��80 �6   .+�5   
   �� $��0��6   ��5      
� 5      .��5      �  � Color$ 	#FF9B8560��6#    � Offset$ 0Q�65   � 5      $ 	#FFFFE4B6��6#   $ 1Q�65   5      5      �� 5   
   -   5         ��Name$ LosujButton��5   .   $��2��6   $��Losuj��6   $��10q�6C   $��20q�6P   $��Center=�6\   6y   �� 5   
   -   5        $ WczytajButton��5   0   $��2��6   $��Wczytaj��6   $
��Left=�6G   $��Center=�6b   $��10q�6}   $��20q�6�   6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ DG��5   K   $��Center=�6   $��Center=�60   $��1��6W      AutoGenerateColumns .  	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   MinWidth$	
 150Q�6%      Header$
 Imie��64   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6B   ��  �� Path$
 Imie�  5      $	
 300Q�6%   $ Nazwisko��64    6F   �� $ Nazwisko�5       �� 5!   
   -   5         ��Name$ txbImie��5!   &   $y�Hidden=�6   $��1��67   $��60,122,842,271q�6D   �� 5"   
   -   5        $ txbNazwisko��5"   &   $y�Hidden=�6   $��1��6;   $��735,122,167,271q�6H   5#      5$      