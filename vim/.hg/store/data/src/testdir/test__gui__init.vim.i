        �  �      *���������~p%Z2��a@��:���            x�eR�j�0��+�&��к�5���@	4P�搓Q��ZĖT�h7�||F^�&m�~��h�{�`���s�uf_��< �����sB�"��I��#��rêb�X>d��	�Ŏe){v6J9�C��e����
������_�`������ъ�;�����;��Y�(�����
�ٻI)�}w���8*F��?�4/�l(���E�����%8��k*�-�Hb9�Q��9ƃ�������9Gӱ�ƾQr*|�緉[�Ph��4�1J���b��7���d��z��la_4����]� ;s�!ɃЀ��\�G�YX�V���,�U�ތa���F'�;b��n��X��^ˮҗ4ĥ�f��0&n�O6c��3�>\S�.u����^̬�%<�p8�;�Ou�"�s    �     }  �      +    �����K[����9��^/JGn�;H            x��A
�0E�ۜ�M�Q�"]�%���ԍw�d�>�?��B��<���2���sH�'� *c��^Q���<XU�s1�㏍��Ǻ���vm��y�j���Qd;�����/*k�:��+F         �  �     +o   ����Ю���s��޵\�>���) �            x�}�1O�0������
Em�JL���[!�$V��sT�u�4�BU<��޽�]��~d�yW�xFN�1�nr����MGS�`�H�]���=�{l�ZH=��4|Y�1���ɢ-e������d�:5}��UU��#<�s
���J����\�c>8"��Z+Ѥ�]�{�l�K�hOFQ��v�e�D�$J)nMZʷp���D�8/��}IN�ȯ��%����Jo�w�bޔ�1����f�K��3         .  �     /J   �����<`�h+��Z�>�k���               r   �   "source shared.vim
if !CanRunGui()
    4     ,  �     4'   �����᜘�}h+�*�*��}=2�              Q  p    call test_ignore_error('E285:')
    `     .  �     B�   ����a��%��,���=�|;j�⤋               �   �   "  throw 'Skipped, cannot run GUI'
    �     .  �     B�   �����7�h�Y/���0'u
^�˺�}               �   �   "  throw 'Skipped: cannot run GUI'
    �     ,  �     D�   ����Oێ�bT��Q�Wg�P��*�               �   �    source check.vim
CheckCanRunGui
    �     1  �     U   �����N^�=y77��%��y_�mTA�              �  �   %
" vim: shiftwidth=2 sts=2 expandtab
