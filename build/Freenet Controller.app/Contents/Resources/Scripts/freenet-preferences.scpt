FasdUAS 1.101.10   ��   ��    k             l     ������  ��        l      �� 	��   	   ==== Properties ====       
  
 l     ������  ��        j     �� �� &0 preferenceswindow preferencesWindow  m     ��
�� 
null      l     ������  ��        l     ������  ��        l      �� ��       ==== Event Handlers ====          l     ������  ��        l     �� ��    O I This event handler is called when the "preferences" menu item is chosen.         l     �� ��               i       !   I     �� "��
�� .menSchMInull���    obj  " o      ���� 0 	theobject 	theObject��   ! k     3 # #  $ % $ l     �� &��   & ) # Only load the preferences nib once    %  ' ( ' l     ������  ��   (  ) * ) Z      + ,���� + =     - . - o     ���� &0 preferenceswindow preferencesWindow . m    ��
�� 
null , k   
  / /  0 1 0 I  
 �� 2��
�� .appSloaNnull���    obj  2 m   
  3 3  Preferences   ��   1  4�� 4 r     5 6 5 4    �� 7
�� 
cwin 7 m     8 8  Preferences    6 o      ���� &0 preferenceswindow preferencesWindow��  ��  ��   *  9 : 9 l   ������  ��   :  ; < ; l   �� =��   =   Load in the preferences    <  > ? > I    )�� @���� "0 loadpreferences loadPreferences @  A�� A o     %���� &0 preferenceswindow preferencesWindow��  ��   ?  B C B l  * *������  ��   C  D E D l  * *�� F��   F "  Show the preferences window    E  G�� G r   * 3 H I H m   * +��
�� boovtrue I n       J K J 1   0 2��
�� 
pvis K o   + 0���� &0 preferenceswindow preferencesWindow��     L M L l     ������  ��   M  N O N l     ������  ��   O  P Q P i    
 R S R I     �� T��
�� .coVScliInull���    obj  T o      ���� 0 	theobject 	theObject��   S k     � U U  V W V l     �� X��   X "  Hide the preferences window    W  Y Z Y r     	 [ \ [ m     ��
�� boovfals \ n       ] ^ ] 1    ��
�� 
pvis ^ o    ���� &0 preferenceswindow preferencesWindow Z  _ ` _ l  
 
������  ��   `  a b a l  
 
�� c��   c  save     b  d e d Z  
   f g���� f =  
  h i h n   
  j k j 1    ��
�� 
pnam k o   
 ���� 0 	theobject 	theObject i m     l l 
 Save    g I    �� m���� $0 storepreferences storePreferences m  n�� n o    ���� &0 preferenceswindow preferencesWindow��  ��  ��  ��   e  o p o l  ! !������  ��   p  q r q Z   ! T s t���� s =  ! & u v u n   ! $ w x w 1   " $��
�� 
pnam x o   ! "���� 0 	theobject 	theObject v m   $ % y y  newfreenetlocation    t k   ) P z z  { | { r   ) 4 } ~ } c   ) 2  �  l  ) 0 ��� � I  ) 0���� �
�� .sysostflalis    ��� null��   � �� ���
�� 
prmp � m   + , � � 8 2Please specify the location of your Freenet Folder   ��  ��   � m   0 1��
�� 
TEXT ~ o      ���� 0 newfreenetlocation   |  ��� � O   5 P � � � k   = O � �  � � � r   = E � � � o   = >���� 0 newfreenetlocation   � n       � � � 1   B D��
�� 
pcnt � 4   > B�� �
�� 
texF � m   @ A � �  FreenetLocation    �  ��� � l  F O � � � r   F O � � � m   F G��
�� boovtrue � n       � � � 1   L N��
�� 
pvis � o   G L���� &0 preferenceswindow preferencesWindow � 1 +allows the pref window to become main again   ��   � o   5 :���� &0 preferenceswindow preferencesWindow��  ��  ��   r  � � � l  U U������  ��   �  � � � l  U U������  ��   �  � � � Z   U � � ����� � =  U Z � � � n   U X � � � 1   V X��
�� 
pnam � o   U V���� 0 	theobject 	theObject � m   X Y � �  newentropylocation    � k   ] � � �  � � � r   ] h � � � c   ] f � � � l  ] d ��� � I  ] d���� �
�� .sysostflalis    ��� null��   � �� ���
�� 
prmp � m   _ ` � � 8 2Please specify the location of your Entropy Folder   ��  ��   � m   d e��
�� 
TEXT � o      ���� 0 newentropylocation   �  ��� � O   i � � � � k   q � � �  � � � r   q y � � � o   q r���� 0 newentropylocation   � n       � � � 1   v x��
�� 
pcnt � 4   r v�� �
�� 
texF � m   t u � �  EntropyLocation    �  ��� � l  z � � � � r   z � � � � m   z {��
�� boovtrue � n       � � � 1   � ���
�� 
pvis � o   { ����� &0 preferenceswindow preferencesWindow � 1 +allows the pref window to become main again   ��   � o   i n���� &0 preferenceswindow preferencesWindow��  ��  ��   �  � � � l  � �������  ��   �  � � � Z   � � � ����� � =  � � � � � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 	theobject 	theObject � m   � � � �  newsamizdatlocation    � k   � � � �  � � � r   � � � � � c   � � � � � l  � � ��� � I  � ����� �
�� .sysostflalis    ��� null��   � �� ���
�� 
prmp � m   � � � � 9 3Please specify the location of your Samizdat Folder   ��  ��   � m   � ���
�� 
TEXT � o      ���� 0 newsamizdatlocation   �  ��� � O   � � � � � k   � � � �  � � � r   � � � � � o   � ��� 0 newsamizdatlocation   � n       � � � 1   � ��~
�~ 
pcnt � 4   � ��} �
�} 
texF � m   � � � �  SamizdatLocation    �  ��| � l  � � � � � r   � � � � � m   � ��{
�{ boovtrue � n       � � � 1   � ��z
�z 
pvis � o   � ��y�y &0 preferenceswindow preferencesWindow � 1 +allows the pref window to become main again   �|   � o   � ��x�x &0 preferenceswindow preferencesWindow��  ��  ��   �  � � � l  � ��w�v�w  �v   �  � � � l  � ��u�t�u  �t   �  ��s � l  � ��r�q�r  �q  �s   Q  � � � l     �p�o�p  �o   �  � � � l     �n�m�n  �m   �  � � � l      �l ��l   �   ==== Handlers ====     �  � � � l     �k�j�k  �j   �  � � � i     � � � I      �i ��h�i "0 loadpreferences loadPreferences �  ��g � o      �f�f 0 	thewindow 	theWindow�g  �h   � Q     M   k    @  l   �e�e     Read in the preferences     r    	
	 I   
�d
�d .appScalMnull���    obj  m      defaultObjectForKey:    �c�b
�c 
witQ m      location   �b  
 o      �a�a 0 thelocation theLocation  r     I   �`
�` .appScalMnull���    obj  m      defaultObjectForKey:    �_�^
�_ 
witQ m      entropy   �^   o      �]�] 0 
entropyloc    r      I   �\
�\ .appScalMnull���    obj  m      defaultObjectForKey:    �[ �Z
�[ 
witQ  m    !!  samizdat   �Z   o      �Y�Y 0 samizdatloc   "#" l  ! !�X�W�X  �W  # $%$ l  ! !�V&�V  & * $ Set the contents of the UI elements   % '�U' O   ! @()( k   % ?** +,+ r   % --.- o   % &�T�T 0 thelocation theLocation. n      /0/ 1   * ,�S
�S 
pcnt0 4   & *�R1
�R 
texF1 m   ( )22  FreenetLocation   , 343 r   . 6565 o   . /�Q�Q 0 
entropyloc  6 n      787 1   3 5�P
�P 
pcnt8 4   / 3�O9
�O 
texF9 m   1 2::  EntropyLocation   4 ;�N; r   7 ?<=< o   7 8�M�M 0 samizdatloc  = n      >?> 1   < >�L
�L 
pcnt? 4   8 <�K@
�K 
texF@ m   : ;AA  SamizdatLocation   �N  ) o   ! "�J�J 0 	thewindow 	theWindow�U   R      �I�H�G
�I .ascrerr ****      � ****�H  �G   I  H M�FB�E
�F .panSdlognull���    obj B m   H ICC   Error loading Preferences.   �E   � DED l     �D�C�D  �C  E FGF l     �BH�B  H m g This handler will get the values from the UI elements and store those values in the  preferences file.   G IJI l     �A�@�A  �@  J KLK i    MNM I      �?O�>�? $0 storepreferences storePreferencesO P�=P o      �<�< 0 	thewindow 	theWindow�=  �>  N k     XQQ RSR l     �;T�;  T * $ Get the contents of the UI elements   S U�:U Q     XVWXV k    IYY Z[Z O    "\]\ k    !^^ _`_ r    aba n    cdc 1    �9
�9 
pcntd 4    �8e
�8 
texFe m   	 
ff  FreenetLocation   b o      �7�7 0 thelocation theLocation` ghg r    iji n    klk 1    �6
�6 
pcntl 4    �5m
�5 
texFm m    nn  EntropyLocation   j o      �4�4 0 
entropyloc  h o�3o r    !pqp n    rsr 1    �2
�2 
pcnts 4    �1t
�1 
texFt m    uu  SamizdatLocation   q o      �0�0 0 samizdatloc  �3  ] o    �/�/ 0 	thewindow 	theWindow[ vwv l  # #�.�-�.  �-  w xyx l  # #�,z�,  z    Write out the preferences   y {|{ I  # -�+}~
�+ .appScalMnull���    obj } m   # $  setDefaultObject:forKey:   ~ �*��)
�* 
witP� J   % )�� ��� o   % &�(�( 0 thelocation theLocation� ��'� m   & '��  location   �'  �)  | ��� I  . 8�&��
�& .appScalMnull���    obj � m   . /��  setDefaultObject:forKey:   � �%��$
�% 
witP� J   0 4�� ��� o   0 1�#�# 0 
entropyloc  � ��"� m   1 2��  entropy   �"  �$  � ��� I  9 C�!��
�! .appScalMnull���    obj � m   9 :��  setDefaultObject:forKey:   � � ��
�  
witP� J   ; ?�� ��� o   ; <�� 0 samizdatloc  � ��� m   < =��  samizdat   �  �  � ��� l  D D���  �  � ��� I  D I���
� .panSdlognull���    obj � m   D E��  Preferences Saved.   �  �  W R      ���
� .ascrerr ****      � ****�  �  X I  Q X���
� .panSdlognull���    obj � m   Q T��  Error saving preferences.   �  �:  L ��� l     ���  �  � ��� l     ���  �  � ��� j    ��� 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier� m    �� % freenet-preferences.applescript   �       ���������  � �
�	�����
 &0 preferenceswindow preferencesWindow
�	 .menSchMInull���    obj 
� .coVScliInull���    obj � "0 loadpreferences loadPreferences� $0 storepreferences storePreferences� 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier
� 
null� � !�����
� .menSchMInull���    obj � 0 	theobject 	theObject�  � � �  0 	theobject 	theObject� �� 3���� 8����
�� 
null
�� .appSloaNnull���    obj 
�� 
cwin�� "0 loadpreferences loadPreferences
�� 
pvis� 4b   �  �j O*��/Ec   Y hO*b   k+ Oeb   �,F� �� S��������
�� .coVScliInull���    obj �� 0 	theobject 	theObject��  � ���������� 0 	theobject 	theObject�� 0 newfreenetlocation  �� 0 newentropylocation  �� 0 newsamizdatlocation  � ���� l�� y�� ������� ��� � � � � � �
�� 
pvis
�� 
pnam�� $0 storepreferences storePreferences
�� 
prmp
�� .sysostflalis    ��� null
�� 
TEXT
�� 
texF
�� 
pcnt�� �fb   �,FO��,�  *b   k+ Y hO��,�  ,*��l �&E�Ob    �*��/�,FOeb   �,FUY hO��,�  ,*��l �&E�Ob    �*��/�,FOeb   �,FUY hO��,�  0*�a l �&E�Ob    �*�a /�,FOeb   �,FUY hOP� �� ����������� "0 loadpreferences loadPreferences�� ����� �  ���� 0 	thewindow 	theWindow��  � ���������� 0 	thewindow 	theWindow�� 0 thelocation theLocation�� 0 
entropyloc  �� 0 samizdatloc  � ����!��2��:A����C��
�� 
witQ
�� .appScalMnull���    obj 
�� 
texF
�� 
pcnt��  ��  
�� .panSdlognull���    obj �� N B���l E�O���l E�O���l E�O� �*��/�,FO�*��/�,FO�*��/�,FUW X  �j � ��N���������� $0 storepreferences storePreferences�� ����� �  ���� 0 	thewindow 	theWindow��  � ���������� 0 	thewindow 	theWindow�� 0 thelocation theLocation�� 0 
entropyloc  �� 0 samizdatloc  � ��f��nu�����������������
�� 
texF
�� 
pcnt
�� 
witP
�� .appScalMnull���    obj 
�� .panSdlognull���    obj ��  ��  �� Y K� *��/�,E�O*��/�,E�O*��/�,E�UO���lvl O���lvl O���lvl O�j W X  a j  ascr  ��ޭ