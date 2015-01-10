%data = ();
for my $line (<DATA>) {
  my ($d,$k,$t,$a1,$a2) = split /\s+/, $line;
  $data{"$t $a1 $a2"}++;
}
print join "\n", sort keys %data;

__DATA__
places 1 ~text~  
places 1063 p  
places 1064 div essay-body 
places 10656 div essay-body 
places 1068 div essay-body 
places 1070 div essay-body 
places 1073 div essay-body 
places 1075 div essay-body 
places 1084 div essay-body 
places 1085 div essay-body 
places 1087 div essay-body 
places 1089 div essay-body 
places 1090 div essay-body 
places 1091 div essay-body 
places 1094 div essay-body 
places 1098 h1  
places 1098 h1  
places 1098 p  
places 1144 div essay-body 
places 1147 div essay-body 
places 11613 div essay-body tib 
places 1165 p ParagraphContinued 
places 1236 p  
places 13734 p Paragraph 
places 13735 p  
places 13740 p  
places 15344 ~text~  
places 15345 p  
places 15346 p  
places 15347 h2  
places 15348 p  
places 15348 h2  
places 15354 p  
places 15355 p  
places 15356 p  
places 15369 p  
places 15372 h2  
places 15372 p  
places 15373 p  
places 15374 p  
places 15374 div essay-body 
places 15374 p  
places 15374 p  
places 15375 p  
places 15376 p  
places 15389 p  
places 15401 p  
places 15404 p Paragraph 
places 15405 p  
places 15406 p  
places 15407 p  
places 15409 p  
places 15410 p  
places 15411 p  
places 15412 p  
places 15413 p  
places 15414 p  
places 15415 p  
places 15416 p  
places 15417 p  
places 15418 p  
places 15419 p  
places 15420 p  
places 15421 p  
places 15422 p  
places 15423 p  
places 15424 p  
places 15425 p  
places 15426 p  
places 15427 p  
places 15428 p  
places 15432 p  
places 15433 p  
places 15434 p  
places 15435 p  
places 15436 p  
places 15437 p  
places 15438 p  
places 15439 p  
places 15440 p  
places 15441 p  
places 15442 p  
places 15443 p  
places 15444 p  
places 15445 p  
places 15446 p  
places 15447 p  
places 15448 p  
places 15456 p  
places 15466 p  
places 15467 p  
places 15468 p  
places 15468 div essay-body tib 
places 15470 h1  
places 15472 h1  
places 15472 h1  
places 15474 h1  
places 15476 p  
places 15478 p  
places 15478 p  
places 15478 p  
places 15479 p  
places 15480 p  
places 15481 h2  
places 15481 h2  
places 15482 p  
places 15483 h2  
places 15774 div essay-body 
places 16408 div essay-body tib 
places 16409 div essay-body tib 
places 16410 div essay-body tib 
places 16411 div essay-body tib 
places 16412 div essay-body tib 
places 16413 div essay-body tib 
places 16414 div essay-body tib 
places 16415 div essay-body tib 
places 16416 div essay-body tib 
places 16417 div essay-body tib 
places 16418 div essay-body tib 
places 16420 div essay-body tib 
places 16421 div essay-body tib 
places 16422 div essay-body tib 
places 16424 div essay-body tib 
places 16425 div essay-body tib 
places 16426 div essay-body tib 
places 16427 div essay-body tib 
places 16428 div essay-body tib 
places 16429 div essay-body tib 
places 16430 div essay-body tib 
places 16431 div essay-body tib 
places 16432 div essay-body tib 
places 16433 div essay-body tib 
places 16434 div essay-body tib 
places 16435 div essay-body tib 
places 16436 div essay-body tib 
places 16437 div essay-body tib 
places 16438 div essay-body tib 
places 16439 div essay-body tib 
places 16440 div essay-body tib 
places 16441 div essay-body tib 
places 16442 div essay-body tib 
places 16443 div essay-body tib 
places 16444 div essay-body tib 
places 16468 div essay-body tib 
places 16469 div essay-body tib 
places 16470 div essay-body tib 
places 16471 div essay-body tib 
places 16472 div essay-body tib 
places 16473 div essay-body tib 
places 16474 div essay-body tib 
places 16475 div essay-body tib 
places 16476 div essay-body tib 
places 16477 div essay-body tib 
places 16478 div essay-body tib 
places 16479 div essay-body tib 
places 16480 div essay-body tib 
places 16481 div essay-body 
places 16482 div essay-body 
places 16483 div essay-body 
places 16484 div essay-body 
places 16485 div essay-body 
places 16486 div essay-body 
places 16487 div essay-body 
places 16488 div essay-body 
places 16489 div essay-body 
places 16490 div essay-body 
places 16491 div essay-body 
places 16492 div essay-body 
places 16493 div essay-body 
places 16494 div essay-body 
places 16495 div essay-body 
places 16496 div essay-body 
places 16497 div essay-body 
places 16498 div essay-body 
places 16499 div essay-body 
places 16500 div essay-body 
places 16501 div essay-body 
places 16502 div essay-body 
places 16503 div essay-body 
places 16504 div essay-body 
places 16506 div essay-body 
places 16507 div essay-body 
places 16508 div essay-body 
places 16509 div essay-body 
places 16510 div essay-body 
places 16511 div essay-body 
places 16512 div essay-body 
places 16513 div essay-body 
places 16514 div essay-body 
places 16515 div essay-body 
places 16516 div essay-body 
places 16517 div essay-body 
places 16518 div essay-body 
places 16519 div essay-body 
places 16520 div essay-body 
places 16521 div essay-body 
places 16522 div essay-body 
places 16523 div essay-body 
places 16524 div essay-body 
places 16525 div essay-body 
places 16526 div essay-body 
places 16527 div essay-body 
places 16528 div essay-body 
places 16529 div essay-body 
places 16531 div essay-body 
places 16532 div essay-body 
places 16533 div essay-body 
places 16534 div essay-body 
places 16535 div essay-body 
places 16536 div essay-body 
places 16537 div essay-body 
places 16538 div essay-body 
places 16539 div essay-body 
places 16540 div essay-body 
places 16541 div essay-body 
places 16542 div essay-body 
places 16543 div essay-body 
places 16544 div essay-body 
places 16545 div essay-body 
places 16546 div essay-body 
places 16548 div essay-body 
places 16549 div essay-body 
places 16550 div essay-body 
places 16551 div essay-body 
places 16552 div essay-body 
places 16553 div essay-body 
places 16554 div essay-body 
places 16555 div essay-body 
places 16556 div essay-body 
places 16557 div essay-body 
places 16558 div essay-body 
places 16559 div essay-body 
places 16560 div essay-body 
places 16561 div essay-body 
places 16562 div essay-body 
places 16563 div essay-body 
places 16564 div essay-body 
places 16565 div essay-body 
places 16566 div essay-body 
places 16567 div essay-body 
places 16568 div essay-body 
places 16569 div essay-body 
places 16570 div essay-body 
places 16571 div essay-body 
places 16572 div essay-body 
places 16573 div essay-body 
places 16574 div essay-body 
places 16575 div essay-body 
places 16576 div essay-body 
places 16577 div essay-body 
places 16578 div essay-body 
places 16579 div essay-body 
places 16580 div essay-body 
places 16581 div essay-body 
places 16582 div essay-body 
places 16583 h4  
places 16583 div essay-body 
places 16583 div essay-body 
places 16584 div essay-body 
places 16585 div essay-body 
places 16586 div essay-body 
places 16587 div essay-body 
places 16588 div essay-body 
places 16589 div essay-body 
places 16590 div essay-body 
places 16591 div essay-body 
places 16592 div essay-body 
places 16593 div essay-body 
places 16594 div essay-body 
places 16595 div essay-body 
places 16596 div essay-body 
places 16597 div essay-body 
places 16598 div essay-body 
places 16599 div essay-body 
places 16600 div essay-body 
places 16601 div essay-body 
places 16602 div essay-body 
places 16604 div essay-body 
places 16605 div essay-body 
places 16606 div essay-body 
places 16607 div essay-body 
places 16608 div essay-body 
places 16609 div essay-body 
places 16610 div essay-body 
places 16611 div essay-body 
places 16612 div essay-body 
places 16613 div essay-body 
places 16614 div essay-body 
places 16615 div essay-body 
places 16616 div essay-body 
places 16617 div essay-body 
places 16618 div essay-body 
places 16619 div essay-body 
places 16620 div essay-body 
places 16621 div essay-body 
places 16622 div essay-body 
places 16623 div essay-body 
places 16624 div essay-body 
places 16625 div essay-body 
places 16626 div essay-body 
places 16627 div essay-body 
places 16628 div essay-body 
places 16629 div essay-body 
places 16630 div essay-body 
places 16631 div essay-body 
places 16632 div essay-body 
places 16633 div essay-body 
places 16634 div essay-body 
places 16635 div essay-body 
places 16636 div essay-body 
places 16637 div essay-body 
places 16638 div essay-body 
places 16639 div essay-body 
places 16640 div essay-body 
places 16641 div essay-body 
places 16642 div essay-body 
places 16643 div essay-body 
places 16644 div essay-body 
places 16645 div essay-body 
places 16646 div essay-body 
places 16647 div essay-body 
places 16648 div essay-body 
places 16649 div essay-body 
places 16650 div essay-body 
places 16650 div essay-body 
places 16651 div essay-body 
places 16652 div essay-body 
places 16653 div essay-body 
places 16654 div essay-body 
places 16655 div essay-body 
places 16656 div essay-body 
places 16657 div essay-body 
places 16658 div essay-body 
places 16659 div essay-body 
places 16660 div essay-body 
places 16661 div essay-body 
places 16662 div essay-body 
places 16663 div essay-body 
places 16664 div essay-body 
places 16665 div essay-body 
places 16666 div essay-body 
places 16667 div essay-body 
places 16668 div essay-body 
places 16669 div essay-body 
places 16670 div essay-body 
places 16671 div essay-body 
places 16672 div essay-body 
places 16673 div essay-body 
places 16674 div essay-body 
places 16675 div essay-body 
places 16676 div essay-body 
places 16677 div essay-body 
places 16678 div essay-body 
places 16679 div essay-body 
places 16680 div essay-body 
places 16681 div essay-body 
places 16682 div essay-body 
places 16683 div essay-body 
places 16684 div essay-body 
places 16685 div essay-body 
places 16686 div essay-body 
places 16687 div essay-body 
places 16688 div essay-body 
places 16689 div essay-body 
places 16690 div essay-body 
places 16691 div essay-body 
places 16692 div essay-body 
places 16693 div essay-body 
places 16694 div essay-body 
places 16695 div essay-body 
places 16696 div essay-body 
places 16697 div essay-body 
places 16698 div essay-body 
places 16699 div essay-body 
places 16699 div essay-body 
places 16700 div essay-body 
places 16701 div essay-body 
places 16702 div essay-body 
places 16703 div essay-body 
places 16704 div essay-body 
places 16705 div essay-body 
places 16706 div essay-body 
places 16707 div essay-body 
places 16708 div essay-body 
places 16709 div essay-body 
places 16710 div essay-body 
places 16711 div essay-body 
places 16713 div essay-body 
places 16714 div essay-body 
places 16714 div essay-body 
places 16714 div essay-body 
places 16714 div essay-body 
places 16715 div essay-body 
places 16716 div essay-body 
places 16717 div essay-body 
places 16718 div essay-body 
places 16719 div essay-body 
places 16721 div essay-body 
places 16722 div essay-body 
places 16723 div essay-body 
places 16724 div essay-body 
places 16725 div essay-body 
places 16726 div essay-body 
places 16727 div essay-body 
places 16730 div essay-body 
places 16731 div essay-body 
places 16732 div essay-body 
places 16733 div essay-body 
places 16734 div essay-body 
places 16735 div essay-body 
places 16735 div essay-body 
places 16736 div essay-body 
places 16737 div essay-body 
places 16738 div essay-body 
places 16739 div essay-body 
places 16740 div essay-body 
places 16741 div essay-body 
places 16742 div essay-body 
places 16743 div essay-body 
places 16744 div essay-body 
places 16746 div essay-body 
places 16748 div essay-body 
places 16749 div essay-body 
places 16750 div essay-body 
places 16751 div essay-body 
places 16752 div essay-body 
places 16754 div essay-body 
places 16755 div essay-body 
places 16756 div essay-body 
places 16757 div essay-body 
places 16758 div essay-body 
places 16759 div essay-body 
places 16760 div essay-body 
places 16761 div essay-body 
places 16762 div essay-body 
places 16763 div essay-body 
places 16764 div essay-body 
places 16765 div essay-body 
places 16766 div essay-body 
places 16767 div essay-body 
places 16768 div essay-body 
places 16770 div essay-body 
places 16771 div essay-body 
places 16772 div essay-body 
places 16773 div essay-body 
places 16774 div essay-body 
places 16775 div essay-body 
places 16776 div essay-body 
places 16777 div essay-body 
places 16778 div essay-body 
places 16781 div essay-body 
places 16782 div essay-body 
places 16783 div essay-body 
places 16784 div essay-body 
places 16785 div essay-body 
places 16786 div essay-body 
places 16787 div essay-body 
places 16788 div essay-body 
places 16790 div essay-body 
places 16791 div essay-body 
places 16792 div essay-body 
places 16793 div essay-body 
places 16794 div essay-body 
places 16795 div essay-body 
places 16796 div essay-body 
places 16797 div essay-body 
places 16798 div essay-body 
places 16799 div essay-body 
places 16801 div essay-body 
places 16802 div essay-body 
places 16803 div essay-body 
places 16804 div essay-body 
places 16805 div essay-body 
places 16806 div essay-body 
places 16807 div essay-body 
places 16808 div essay-body 
places 16809 div essay-body 
places 16810 div essay-body 
places 16811 div essay-body 
places 16812 div essay-body 
places 16814 div essay-body 
places 16815 div essay-body 
places 16816 div essay-body 
places 16817 div essay-body 
places 16819 div essay-body 
places 16820 div essay-body 
places 16821 div essay-body 
places 16822 div essay-body 
places 16823 div essay-body 
places 16824 div essay-body 
places 16825 div essay-body 
places 16826 div essay-body 
places 16827 div essay-body 
places 16828 div essay-body 
places 16829 div essay-body 
places 16830 div essay-body 
places 16831 div essay-body 
places 16832 div essay-body 
places 16835 div essay-body 
places 16836 div essay-body 
places 16837 div essay-body 
places 16838 div essay-body 
places 16841 div essay-body 
places 16842 div essay-body 
places 16843 div essay-body 
places 16845 div essay-body 
places 16846 div essay-body 
places 16847 div essay-body 
places 16848 div essay-body 
places 16849 div essay-body 
places 16850 div essay-body 
places 16851 div essay-body 
places 16852 div essay-body 
places 16853 div essay-body 
places 16854 div essay-body 
places 16855 div essay-body 
places 16856 div essay-body 
places 16857 div essay-body 
places 16859 div essay-body 
places 16860 div essay-body 
places 16861 div essay-body 
places 16862 div essay-body 
places 16863 div essay-body 
places 16864 div essay-body 
places 16865 div essay-body 
places 16866 div essay-body 
places 16867 div essay-body 
places 16868 div essay-body 
places 16869 div essay-body 
places 16885 div essay-body tib 
places 16885 div essay-body tib 
places 16885 div essay-body tib 
places 16886 div essay-body tib 
places 16887 div essay-body tib 
places 16888 div essay-body tib 
places 16889 div essay-body tib 
places 16890 div essay-body tib 
places 16891 div essay-body tib 
places 16892 div essay-body tib 
places 16894 div essay-body tib 
places 16895 div essay-body tib 
places 16896 div essay-body tib 
places 16897 div essay-body tib 
places 16898 div essay-body tib 
places 16900 div essay-body tib 
places 16901 div essay-body tib 
places 16902 div essay-body tib 
places 16903 div essay-body tib 
places 16904 div essay-body tib 
places 16905 div essay-body tib 
places 16906 div essay-body tib 
places 16907 div essay-body tib 
places 16908 div essay-body tib 
places 16909 div essay-body tib 
places 16910 div essay-body tib 
places 16911 div essay-body tib 
places 16912 div essay-body tib 
places 16913 div essay-body tib 
places 16914 div essay-body tib 
places 16915 div essay-body tib 
places 16916 div essay-body tib 
places 16917 div essay-body tib 
places 16918 div essay-body tib 
places 16919 div essay-body tib 
places 16920 div essay-body tib 
places 16921 div essay-body tib 
places 16922 div essay-body tib 
places 16923 div essay-body tib 
places 16924 div essay-body tib 
places 16924 div essay-body tib 
places 16925 div essay-body tib 
places 16926 div essay-body tib 
places 16927 div essay-body tib 
places 16928 div essay-body tib 
places 16929 div essay-body tib 
places 16930 div essay-body tib 
places 16931 div essay-body tib 
places 16932 div essay-body tib 
places 16933 div essay-body tib 
places 16934 div essay-body tib 
places 16935 div essay-body tib 
places 16936 div essay-body tib 
places 16937 div essay-body tib 
places 16938 div essay-body tib 
places 16939 div essay-body tib 
places 16940 div essay-body tib 
places 16941 div essay-body tib 
places 16942 div essay-body tib 
places 16943 div essay-body tib 
places 16944 div essay-body tib 
places 16945 div essay-body tib 
places 16946 div essay-body tib 
places 16947 div essay-body tib 
places 16949 div essay-body tib 
places 16950 div essay-body tib 
places 16951 div essay-body tib 
places 16952 div essay-body tib 
places 16953 div essay-body tib 
places 16954 div essay-body tib 
places 16955 div essay-body tib 
places 16956 div essay-body tib 
places 16957 div essay-body tib 
places 16958 div essay-body tib 
places 16959 div essay-body tib 
places 16960 div essay-body tib 
places 16961 div essay-body tib 
places 16961 p  
places 16962 div essay-body tib 
places 17021 div essay-body tib 
places 17089 p  
places 17093 p  
places 17108 p  
places 17421 p Dissnormal 
places 17447 p  
places 179 div essay-body 
places 22146 div essay-body tib 
places 22253 p  
places 22297 div essay-body tib 
places 22298 div essay-body tib 
places 22299 div essay-body tib 
places 22300 div essay-body tib 
places 22302 div essay-body tib 
places 22303 div essay-body tib 
places 22304 div essay-body tib 
places 22305 div essay-body tib 
places 22306 div essay-body tib 
places 22307 div essay-body tib 
places 22308 div essay-body tib 
places 22309 div essay-body tib 
places 22335 div essay-body tib 
places 22338 div essay-body tib 
places 22339 div essay-body tib 
places 22340 div essay-body tib 
places 22341 div essay-body tib 
places 22342 div essay-body tib 
places 22343 div essay-body tib 
places 22344 div essay-body tib 
places 22348 div essay-body tib 
places 22349 div essay-body tib 
places 22350 div essay-body tib 
places 22352 div essay-body tib 
places 22353 div essay-body tib 
places 22354 div essay-body tib 
places 22355 div essay-body tib 
places 22356 div essay-body tib 
places 22357 div essay-body tib 
places 22361 div essay-body tib 
places 22363 div essay-body tib 
places 22365 div essay-body tib 
places 22366 div essay-body tib 
places 22367 div essay-body tib 
places 22368 div essay-body tib 
places 22369 div essay-body tib 
places 22370 div essay-body tib 
places 22371 div essay-body tib 
places 22372 div essay-body tib 
places 22373 div essay-body tib 
places 22374 div essay-body tib 
places 22375 div essay-body tib 
places 22377 div essay-body tib 
places 22378 div essay-body tib 
places 22379 div essay-body tib 
places 22380 div essay-body tib 
places 22381 div essay-body tib 
places 22382 div essay-body tib 
places 22384 div essay-body tib 
places 22385 div essay-body tib 
places 22386 div essay-body tib 
places 22387 div essay-body tib 
places 22388 div essay-body tib 
places 22389 div essay-body tib 
places 22390 div essay-body tib 
places 22391 div essay-body tib 
places 22393 div essay-body tib 
places 22395 div essay-body tib 
places 22396 div essay-body tib 
places 22397 div essay-body tib 
places 22401 div essay-body tib 
places 22409 div essay-body tib 
places 22411 div essay-body tib 
places 22412 div essay-body tib 
places 22413 div essay-body tib 
places 22415 div essay-body tib 
places 22416 div essay-body tib 
places 22418 div essay-body tib 
places 22421 div essay-body tib 
places 22424 div essay-body tib 
places 22568 p  
places 22707 p  
places 23155 div essay-body 
places 23294 div essay-body tib 
places 23335 div essay-body tib 
places 23404 div essay-body 
places 23405 div essay-body 
places 23406 div essay-body 
places 23407 div essay-body 
places 23408 div essay-body 
places 23409 div essay-body 
places 23410 div essay-body 
places 23411 div essay-body 
places 23412 div essay-body 
places 23413 div essay-body 
places 23414 div essay-body 
places 23415 div essay-body 
places 23416 div essay-body 
places 23417 div essay-body 
places 23418 div essay-body 
places 23419 div essay-body 
places 23420 div essay-body 
places 23421 div essay-body 
places 23422 div essay-body 
places 23423 div essay-body 
places 23424 div essay-body 
places 23425 div essay-body 
places 23426 div essay-body 
places 23427 div essay-body 
places 23428 div essay-body 
places 23429 div essay-body 
places 23430 div essay-body 
places 23431 div essay-body 
places 23432 div essay-body 
places 23433 div essay-body 
places 23434 div essay-body 
places 23435 div essay-body 
places 23436 div essay-body 
places 23437 div essay-body 
places 23438 div essay-body 
places 23439 div essay-body 
places 23440 div essay-body 
places 23441 div essay-body 
places 23442 div essay-body 
places 23443 div essay-body 
places 23444 div essay-body 
places 23445 div essay-body 
places 23446 div essay-body 
places 23447 div essay-body 
places 23448 div essay-body 
places 23449 div essay-body 
places 23450 div essay-body 
places 23451 div essay-body 
places 23452 div essay-body 
places 23453 div essay-body 
places 23454 div essay-body 
places 23455 div essay-body 
places 23456 div essay-body 
places 23457 div essay-body 
places 23458 div essay-body 
places 23459 div essay-body 
places 23460 div essay-body 
places 23461 div essay-body 
places 23462 div essay-body 
places 23463 div essay-body 
places 23464 div essay-body 
places 23465 div essay-body 
places 23466 div essay-body 
places 23467 div essay-body 
places 23468 div essay-body 
places 23469 div essay-body 
places 23470 div essay-body 
places 23471 div essay-body 
places 23472 div essay-body 
places 23473 div essay-body 
places 23474 div essay-body 
places 23475 div essay-body 
places 23476 div essay-body 
places 23477 div essay-body 
places 23478 div essay-body 
places 23479 div essay-body 
places 23480 div essay-body 
places 23481 div essay-body 
places 23482 div essay-body 
places 23483 div essay-body 
places 23484 div essay-body 
places 23485 div essay-body 
places 23486 div essay-body 
places 23487 div essay-body 
places 23488 div essay-body 
places 23489 div essay-body 
places 23490 div essay-body 
places 23492 div essay-body 
places 23493 div essay-body 
places 23494 div essay-body 
places 23497 div essay-body 
places 23498 div essay-body 
places 23499 div essay-body 
places 23500 div essay-body 
places 23501 div essay-body 
places 23502 div essay-body 
places 23503 div essay-body 
places 23505 div essay-body 
places 23506 div essay-body 
places 23507 div essay-body 
places 23508 div essay-body 
places 23509 div essay-body 
places 23510 div essay-body 
places 23511 div essay-body 
places 23512 div essay-body 
places 23513 div essay-body 
places 23514 div essay-body 
places 23515 div essay-body 
places 23516 div essay-body 
places 23517 div essay-body 
places 23518 div essay-body 
places 23519 div essay-body 
places 23520 div essay-body 
places 23521 div essay-body 
places 23522 div essay-body 
places 23523 div essay-body 
places 23524 div essay-body 
places 23525 div essay-body 
places 23526 div essay-body 
places 23527 div essay-body 
places 23528 div essay-body 
places 23529 div essay-body 
places 23530 div essay-body 
places 23531 div essay-body 
places 23532 div essay-body 
places 23533 div essay-body 
places 23534 div essay-body 
places 23535 div essay-body 
places 23536 div essay-body 
places 23537 div essay-body 
places 23538 div essay-body 
places 23539 div essay-body 
places 23540 div essay-body 
places 23541 div essay-body 
places 23542 div essay-body 
places 23543 div essay-body 
places 23544 div essay-body 
places 23545 div essay-body 
places 23546 div essay-body 
places 23547 div essay-body 
places 23548 div essay-body 
places 23549 div essay-body 
places 23550 div essay-body 
places 23551 div essay-body 
places 23552 div essay-body 
places 23553 div essay-body 
places 23554 div essay-body 
places 23555 div essay-body 
places 23556 div essay-body 
places 23557 div essay-body 
places 23558 div essay-body 
places 23559 div essay-body 
places 23560 div essay-body 
places 23561 div essay-body 
places 23562 div essay-body 
places 23563 div essay-body 
places 23564 div essay-body 
places 23565 div essay-body 
places 23566 div essay-body 
places 23567 div essay-body 
places 23568 div essay-body 
places 23569 div essay-body 
places 23570 div essay-body 
places 23571 div essay-body 
places 23572 div essay-body 
places 23573 div essay-body 
places 23574 div essay-body 
places 23575 div essay-body 
places 23576 div essay-body 
places 23577 div essay-body 
places 23578 div essay-body 
places 23579 div essay-body 
places 23580 div essay-body 
places 23581 div essay-body 
places 23582 div essay-body 
places 23583 div essay-body 
places 23584 div essay-body 
places 23585 div essay-body 
places 23586 div essay-body 
places 23587 div essay-body 
places 23588 div essay-body 
places 23589 div essay-body 
places 23590 div essay-body 
places 23591 div essay-body 
places 23592 div essay-body 
places 23593 div essay-body 
places 23594 div essay-body 
places 23595 div essay-body 
places 23596 div essay-body 
places 23597 div essay-body 
places 23598 div essay-body 
places 23599 div essay-body 
places 23600 div essay-body 
places 23601 div essay-body 
places 23602 div essay-body 
places 23603 div essay-body 
places 23604 div essay-body 
places 23605 div essay-body 
places 23606 div essay-body 
places 23607 div essay-body 
places 23608 div essay-body 
places 23609 div essay-body 
places 23610 div essay-body 
places 23611 div essay-body 
places 23612 div essay-body 
places 23613 div essay-body 
places 23614 div essay-body 
places 23615 div essay-body 
places 23616 div essay-body 
places 23617 div essay-body 
places 23618 div essay-body 
places 23619 div essay-body 
places 23620 div essay-body 
places 23621 div essay-body 
places 23623 div essay-body 
places 23624 div essay-body 
places 23625 div essay-body 
places 23626 div essay-body 
places 23627 div essay-body 
places 23628 div essay-body 
places 23629 div essay-body 
places 23630 div essay-body 
places 23631 div essay-body 
places 23632 div essay-body 
places 23633 div essay-body 
places 23634 div essay-body 
places 23635 div essay-body 
places 23636 div essay-body 
places 23637 div essay-body 
places 23638 div essay-body 
places 23639 div essay-body 
places 23640 div essay-body 
places 23641 div essay-body 
places 23642 div essay-body 
places 23643 div essay-body 
places 23644 div essay-body 
places 23653 p  
places 23671 p  
places 23671 p  
places 23672 p  
places 23673 p  
places 23674 p  
places 23675 p  
places 23676 p  
places 23677 p  
places 23678 p  
places 23679 p  
places 23680 p  
places 23681 p  
places 23682 p  
places 23683 p  
places 23684 p  
places 23685 p  
places 23686 p  
places 23687 p  
places 23688 p  
places 23689 p  
places 23690 p  
places 23691 p  
places 23700 p  
places 23725 p  
places 23725 p  
places 23744 p  
places 23744 p  
places 23745 p  
places 23748 p  
places 23750 p  
places 23751 h1  
places 23752 p  
places 23752 div essay-body 
places 23753 p  
places 24071 p  
places 24106 h2  
places 24107 h2  
places 24108 h2  
places 24111 p  
places 24112 p  
places 24121 p  
places 24122 p  
places 24123 p  
places 24124 p  
places 24125 p  
places 24126 p  
places 24127 p  
places 24128 p  
places 24353 h1  
places 24566 ~comment~  
places 24567 p  
places 24568 p  
places 25107 p  
places 2541 div essay-body 
places 2675 div essay-body 
places 317 p  
places 3507 div essay-body 
places 3718 div essay-body 
places 3862 ~text~  
places 3873 div essay-body 
places 433 p  
places 433 div essay-body tib 
places 4439 h1  
places 4439 p  
places 4439 div essay-body 
places 486 div essay-body 
places 4874 p  
places 516 div essay-body tib 
places 5224 h2 Letterblockwoopenspace 
places 5224 p  
places 5225 ~text~  
places 5225 h2  
places 5226 p  
places 5226 p  
places 5226 h2  
places 5228 div essay-body 
places 5230 p  
places 5231 p  
places 5233 p  
places 5234 ~text~  
places 5235 ~text~  
places 5298 div essay-body tib 
places 534 div essay-body 
places 570 div essay-body 
places 588 div essay-body 
places 634 div essay-body 
places 637 p  
places 674 div essay-body tib 
places 749 div essay-body tib 
places 782 div essay-body tib 
places 807 p  
places 838 div essay-body 
places 884 ~comment~  
subjects 104 p  
subjects 1063 p  
subjects 109 p  
subjects 111 p  
subjects 119 p  
subjects 125 p  
subjects 132 p  
subjects 133 p  
subjects 134 p  
subjects 141 p  
subjects 143 p  
subjects 147 p  
subjects 150 p  
subjects 154 p  
subjects 159 p  
subjects 160 p  
subjects 161 p  
subjects 162 p  
subjects 164 p  
subjects 169 p  
subjects 1705 p  
subjects 1708 p  
subjects 1708 p Paragraph 
subjects 1709 p  
subjects 1709 p Paragraph 
subjects 1710 p  
subjects 1710 p Paragraph 
subjects 1712 p  
subjects 1712 p Paragraph 
subjects 1713 p  
subjects 1713 p Paragraph 
subjects 1716 p  
subjects 1716 p Paragraph 
subjects 1718 p  
subjects 1724 p  
subjects 1725 p  
subjects 1725 p Paragraph 
subjects 1726 p  
subjects 1726 p Paragraph 
subjects 1727 p  
subjects 173 p  
subjects 1752 p  
subjects 1752 p Paragraph 
subjects 1775 p  
subjects 1776 p  
subjects 1776 p Paragraph 
subjects 1777 p  
subjects 1777 p Paragraph 
subjects 1780 p  
subjects 1780 p Paragraph 
subjects 1781 p  
subjects 1781 p Paragraph 
subjects 1782 p  
subjects 1783 p  
subjects 1784 p  
subjects 1784 p Paragraph 
subjects 1785 p  
subjects 1785 p Paragraph 
subjects 1786 p  
subjects 1787 p  
subjects 1788 p  
subjects 1789 p  
subjects 1790 p  
subjects 1808 h1  
subjects 1809 h1  
subjects 1811 h4  
subjects 1812 h1  
subjects 1813 h1  
subjects 1814 h2  
subjects 1815 h2  
subjects 1816 h1  
subjects 1817 h1  
subjects 1818 h1  
subjects 1820 h1  
subjects 1821 h1  
subjects 1822 h1  
subjects 1823 h1  
subjects 1824 h1  
subjects 1825 h1  
subjects 1826 h1  
subjects 1828 h1  
subjects 1829 h1  
subjects 1831 h1  
subjects 1832 h1  
subjects 1833 h1  
subjects 1834 h1  
subjects 1835 h1  
subjects 1836 h1  
subjects 1838 h1  
subjects 1839 h1  
subjects 1840 h1  
subjects 1841 h1  
subjects 1842 h1  
subjects 1848 h1  
subjects 1849 h1  
subjects 1851 h1  
subjects 1852 h1  
subjects 1853 h1  
subjects 1854 h1  
subjects 1855 h1  
subjects 1857 h1  
subjects 1858 h1  
subjects 1859 h1  
subjects 1860 h1  
subjects 1861 h1  
subjects 1862 h1  
subjects 1863 h1  
subjects 1864 h1  
subjects 1865 h1  
subjects 1866 h1  
subjects 1867 h1  
subjects 1868 h1  
subjects 1869 h1  
subjects 1870 h1  
subjects 1871 h1  
subjects 1872 p  
subjects 1873 h1  
subjects 1874 h1  
subjects 1875 h1  
subjects 1876 h1  
subjects 1877 h1  
subjects 1878 h1  
subjects 1880 h1  
subjects 1881 h1  
subjects 1882 h1  
subjects 1883 p  
subjects 1884 h1  
subjects 1886 h1  
subjects 1887 h1  
subjects 1888 h1  
subjects 1889 h1  
subjects 1891 h1  
subjects 1892 h1  
subjects 1895 h1  
subjects 1896 h1  
subjects 1897 h1  
subjects 1898 h1  
subjects 1908 h1  
subjects 1909 h1  
subjects 191 p  
subjects 1910 h1  
subjects 1912 h1  
subjects 1913 h1  
subjects 1914 p  
subjects 1915 h1  
subjects 1916 h1  
subjects 1917 h1  
subjects 1926 h1  
subjects 1927 h1  
subjects 1928 h1  
subjects 1929 h1  
subjects 1930 h1  
subjects 1933 h1  
subjects 1934 h1  
subjects 1938 h1  
subjects 1941 h1  
subjects 1945 h1  
subjects 1949 h1  
subjects 1950 h1  
subjects 1951 h1  
subjects 1952 h1  
subjects 1953 h1  
subjects 1957 h1  
subjects 1959 h1  
subjects 1960 h1  
subjects 1961 h1  
subjects 1962 h1  
subjects 1963 h1  
subjects 1964 h1  
subjects 1965 h1  
subjects 1966 h1  
subjects 1968 h1  
subjects 1969 h1  
subjects 1970 p  
subjects 1971 h1  
subjects 1977 h1  
subjects 1983 h1  
subjects 1986 h1  
subjects 1987 h1  
subjects 1989 h1  
subjects 1992 h1  
subjects 1995 h1  
subjects 20 p  
subjects 2001 h1  
subjects 2002 h1  
subjects 2003 h1  
subjects 2012 p  
subjects 2015 h1  
subjects 2017 h1  
subjects 2018 h1  
subjects 2019 h1  
subjects 202 p  
subjects 2020 h1  
subjects 2021 h1  
subjects 2022 h1  
subjects 2023 h1  
subjects 2024 h1  
subjects 2025 h1  
subjects 2026 h1  
subjects 2027 h1  
subjects 2028 h1  
subjects 2029 h1  
subjects 203 div  
subjects 2030 h1  
subjects 2031 h1  
subjects 2032 h1  
subjects 2033 h1  
subjects 2034 h1  
subjects 2035 h1  
subjects 2036 h1  
subjects 204 div  
subjects 2040 h1  
subjects 2041 h1  
subjects 2042 h1  
subjects 2043 h1  
subjects 2044 h1  
subjects 2045 h1  
subjects 2047 h1  
subjects 2062 p  
subjects 2063 h1  
subjects 2065 h1  
subjects 2066 h1  
subjects 2080 h1  
subjects 2093 p  
subjects 2095 h1  
subjects 21 h2  
subjects 2108 h1  
subjects 2109 h1  
subjects 2110 p  
subjects 2111 p  
subjects 2112 p  
subjects 2113 h1  
subjects 2114 p  
subjects 2115 p  
subjects 2116 p  
subjects 2117 p  
subjects 2118 p  
subjects 2119 p  
subjects 2121 p  
subjects 2122 p  
subjects 2124 p  
subjects 2125 p  
subjects 2126 p  
subjects 2127 p  
subjects 2128 p  
subjects 2130 h1  
subjects 2131 h1  
subjects 2132 h1  
subjects 2133 h1  
subjects 2134 h1  
subjects 2135 h1  
subjects 2136 h1  
subjects 2137 h1  
subjects 2138 h1  
subjects 2139 h1  
subjects 2144 p  
subjects 2150 p  
subjects 2151 p  
subjects 2152 p  
subjects 2153 p  
subjects 2154 p  
subjects 2156 p  
subjects 2157 p  
subjects 2160 p  
subjects 2164 p  
subjects 2165 h1  
subjects 2166 h1  
subjects 2167 p  
subjects 2168 p  
subjects 2169 h1  
subjects 2170 h1  
subjects 2171 p  
subjects 2172 p  
subjects 2173 p  
subjects 2174 p  
subjects 2176 p  
subjects 2177 p  
subjects 2178 p  
subjects 2179 h1  
subjects 2180 p  
subjects 2181 p  
subjects 2182 p  
subjects 2183 p  
subjects 2184 p  
subjects 2185 p  
subjects 2187 p  
subjects 2188 p  
subjects 2189 p  
subjects 2190 h1  
subjects 2191 h1  
subjects 2192 p  
subjects 2193 p  
subjects 2194 h1  
subjects 2195 p  
subjects 2196 p  
subjects 2197 p  
subjects 2198 p  
subjects 2199 p  
subjects 2200 p  
subjects 2201 p  
subjects 2202 h1  
subjects 2203 h1  
subjects 2204 h1  
subjects 2205 p  
subjects 2206 p  
subjects 2207 h1  
subjects 2208 p  
subjects 2209 p  
subjects 2210 h1  
subjects 2212 p  
subjects 2213 p  
subjects 2214 p  
subjects 2215 p  
subjects 2216 p  
subjects 2217 p  
subjects 2218 p  
subjects 2219 p  
subjects 2220 p  
subjects 2221 p  
subjects 2222 p  
subjects 2223 p  
subjects 2225 p  
subjects 2226 p  
subjects 2227 p  
subjects 2228 p  
subjects 2230 p  
subjects 2231 p  
subjects 2233 p  
subjects 2234 p  
subjects 2236 p  
subjects 2237 p  
subjects 2238 p  
subjects 2239 p  
subjects 2240 p  
subjects 2241 p  
subjects 2242 p  
subjects 2243 p  
subjects 2244 p  
subjects 2245 p  
subjects 2247 p  
subjects 2248 p  
subjects 2249 p  
subjects 2250 p  
subjects 2251 p  
subjects 2252 p  
subjects 2253 p  
subjects 2254 p  
subjects 2255 p  
subjects 2256 p  
subjects 2257 p  
subjects 2258 p  
subjects 2259 p  
subjects 2260 p  
subjects 2261 p  
subjects 2262 p  
subjects 2263 p  
subjects 2264 p  
subjects 2265 p  
subjects 2266 h1  
subjects 2267 p  
subjects 2268 p  
subjects 2269 p  
subjects 2270 p  
subjects 2271 p  
subjects 2272 p  
subjects 2273 p  
subjects 2274 h1  
subjects 2276 p  
subjects 2277 p  
subjects 2279 p  
subjects 2280 p  
subjects 2281 p  
subjects 2282 p  
subjects 2283 p  
subjects 2284 p  
subjects 2285 p  
subjects 2287 p  
subjects 2288 p  
subjects 2289 p  
subjects 2290 p  
subjects 2291 p  
subjects 2292 p  
subjects 2293 p  
subjects 2294 p  
subjects 2295 p  
subjects 2296 p  
subjects 2297 p  
subjects 2298 p  
subjects 2299 p  
subjects 23 p  
subjects 2300 p  
subjects 2301 p  
subjects 2302 p  
subjects 2303 p  
subjects 2304 p  
subjects 2305 p  
subjects 2306 p  
subjects 2307 p  
subjects 2308 p  
subjects 2309 p  
subjects 2310 p  
subjects 2311 p  
subjects 2312 p  
subjects 2313 p  
subjects 2315 p  
subjects 2316 p  
subjects 2317 p  
subjects 2318 p  
subjects 2319 p  
subjects 2321 p  
subjects 2322 p  
subjects 2323 p  
subjects 2324 p  
subjects 2325 p  
subjects 2326 p  
subjects 2327 p  
subjects 2328 p  
subjects 2329 p  
subjects 2330 p  
subjects 2331 p  
subjects 2332 p  
subjects 2334 p  
subjects 2335 p  
subjects 2336 p  
subjects 2337 h1  
subjects 2338 p  
subjects 2340 p  
subjects 2341 p  
subjects 2342 p  
subjects 2343 p  
subjects 2345 p  
subjects 2347 p  
subjects 2348 p  
subjects 2349 p  
subjects 2350 p  
subjects 2351 p  
subjects 2352 p  
subjects 2353 p  
subjects 2354 p  
subjects 2355 p  
subjects 2356 p  
subjects 2357 p  
subjects 2358 p  
subjects 2359 p  
subjects 2360 p  
subjects 2361 p  
subjects 2362 p  
subjects 2363 p  
subjects 2364 p  
subjects 2365 p  
subjects 2366 p  
subjects 2367 p  
subjects 2368 p  
subjects 2369 p  
subjects 2370 h1  
subjects 2371 p  
subjects 2372 p  
subjects 2373 p  
subjects 2376 p  
subjects 2377 p  
subjects 2379 p  
subjects 2380 h1  
subjects 2382 p  
subjects 2383 p  
subjects 2384 p  
subjects 2385 p  
subjects 2387 p  
subjects 2388 p  
subjects 2389 p  
subjects 2390 p  
subjects 2391 p  
subjects 2392 p  
subjects 2393 p  
subjects 2394 p  
subjects 2395 p  
subjects 2396 p  
subjects 2397 p  
subjects 2398 p  
subjects 2399 p  
subjects 24 p  
subjects 2400 p  
subjects 2401 p  
subjects 2402 p  
subjects 2403 p  
subjects 2404 p  
subjects 2405 p  
subjects 2407 p  
subjects 2408 p  
subjects 2409 p  
subjects 2410 p  
subjects 2411 p  
subjects 2412 p  
subjects 2413 p  
subjects 2414 p  
subjects 2415 p  
subjects 2416 p  
subjects 2417 p  
subjects 2418 p  
subjects 2419 p  
subjects 2420 p  
subjects 2421 p  
subjects 2422 p  
subjects 2423 p  
subjects 2425 p  
subjects 2426 h1  
subjects 2428 p  
subjects 2429 p  
subjects 2430 p  
subjects 2431 p  
subjects 2433 p  
subjects 2434 p  
subjects 2435 p  
subjects 2436 p  
subjects 2437 p  
subjects 2439 p  
subjects 2440 p  
subjects 2441 p  
subjects 2442 h1  
subjects 2443 h1  
subjects 2444 h1  
subjects 2445 h1  
subjects 2446 p  
subjects 2447 p  
subjects 2448 p  
subjects 2449 p  
subjects 2450 p  
subjects 2451 p  
subjects 2452 p  
subjects 2453 p  
subjects 2454 h1  
subjects 2455 p  
subjects 2456 p  
subjects 2457 p  
subjects 2458 p  
subjects 2459 h1  
subjects 2460 p  
subjects 2461 p  
subjects 2462 p  
subjects 2463 p  
subjects 2464 p  
subjects 2465 p  
subjects 2466 p  
subjects 2467 h1  
subjects 2468 p  
subjects 2469 p  
subjects 2470 p  
subjects 2472 p  
subjects 2473 h1  
subjects 2474 p  
subjects 2475 p  
subjects 2476 p  
subjects 2477 p  
subjects 2478 p  
subjects 2479 p  
subjects 2480 p  
subjects 2481 p  
subjects 2482 h1  
subjects 2483 p  
subjects 2484 p  
subjects 2485 h1  
subjects 2486 p  
subjects 2487 p  
subjects 2488 p  
subjects 2489 p  
subjects 2490 p  
subjects 2491 p  
subjects 2492 p  
subjects 2493 p  
subjects 2494 p  
subjects 2495 p  
subjects 2496 p  
subjects 2497 p  
subjects 2498 p  
subjects 2499 p  
subjects 25 p  
subjects 2501 h1  
subjects 2502 p  
subjects 2503 p  
subjects 2504 p  
subjects 2505 p  
subjects 2506 p  
subjects 2507 p  
subjects 2508 p  
subjects 2510 h1  
subjects 2511 h1  
subjects 2512 p  
subjects 2513 p  
subjects 2514 p  
subjects 2516 p  
subjects 2517 p  
subjects 2519 p  
subjects 252 p  
subjects 2521 p  
subjects 2522 p  
subjects 2523 p  
subjects 2524 p  
subjects 2525 p  
subjects 2526 p  
subjects 2527 p  
subjects 2528 p  
subjects 2529 p  
subjects 2530 p  
subjects 2531 p  
subjects 2532 p  
subjects 2533 p  
subjects 2534 p  
subjects 2535 p  
subjects 2536 p  
subjects 2537 p  
subjects 2538 p  
subjects 2539 p  
subjects 2540 p  
subjects 2541 p  
subjects 2542 p  
subjects 2543 p  
subjects 2545 p  
subjects 2546 p  
subjects 2547 p  
subjects 2548 p  
subjects 2549 p  
subjects 2550 p  
subjects 2552 p  
subjects 2554 p  
subjects 26 p  
subjects 263 div  
subjects 2636 p  
subjects 264 div  
subjects 265 p  
subjects 266 p  
subjects 268 p  
subjects 2695 p  
subjects 27 p  
subjects 2711 p  
subjects 2713 p  
subjects 2714 p  
subjects 28 p  
subjects 2805 p  
subjects 286 p  
subjects 286 p Paragraph 
subjects 286 h1 Paragraph 
subjects 286 p Paragraph 
subjects 286 p Paragraph 
subjects 286 p Paragraph 
subjects 286 p Paragraph 
subjects 286 p Paragraph 
subjects 286 p Paragraph 
subjects 286 p Paragraph 
subjects 289 p Paragraph 
subjects 29 p  
subjects 290 p  
subjects 292 p  
subjects 293 p  
subjects 293 p Paragraph 
subjects 294 p Paragraph 
subjects 295 p  
subjects 297 p  
subjects 2988 p  
subjects 299 p  
subjects 299 p Paragraph 
subjects 2992 p  
subjects 300 p Paragraph 
subjects 3006 p  
subjects 301 p  
subjects 302 p  
subjects 303 p  
subjects 3033 p  
subjects 304 p  
subjects 307 p  
subjects 3070 p  
subjects 3072 p  
subjects 308 p  
subjects 3088 p  
subjects 31 p  
subjects 3101 p  
subjects 32 p  
subjects 3435 p  
subjects 3437 p  
subjects 3438 p  
subjects 3443 p  
subjects 3445 p  
subjects 35 p  
subjects 353 p  
subjects 36 p  
subjects 363 p  
subjects 3655 p  
subjects 3702 p  
subjects 3765 p  
subjects 3765 p Paragraph 
subjects 377 p  
subjects 38 p  
subjects 3808 p  
subjects 3809 p  
subjects 381 p  
subjects 3810 p  
subjects 3811 p  
subjects 382 p  
subjects 385 p  
subjects 386 p  
subjects 387 p  
subjects 391 p  
subjects 3964 p  
subjects 3965 p  
subjects 3967 p  
subjects 3972 p  
subjects 3977 p  
subjects 3979 p  
subjects 3980 p  
subjects 3989 p  
subjects 399 p  
subjects 3990 p  
subjects 3991 p  
subjects 3992 p  
subjects 3992 p  
subjects 3993 p  
subjects 3994 p  
subjects 3995 p  
subjects 3996 p  
subjects 3997 p  
subjects 3998 p  
subjects 4000 p  
subjects 4001 p  
subjects 4005 p  
subjects 4008 p  
subjects 4009 p  
subjects 4012 p  
subjects 402 p  
subjects 406 p  
subjects 4091 p  
subjects 4092 p  
subjects 4093 p  
subjects 4095 p  
subjects 4096 p  
subjects 4097 p  
subjects 4098 p  
subjects 4099 p  
subjects 4100 p  
subjects 4101 p  
subjects 4109 p  
subjects 4110 p  
subjects 4139 p  
subjects 4145 p  
subjects 4146 p  
subjects 4173 p  
subjects 4174 p  
subjects 418 p  
subjects 4195 p  
subjects 4196 p  
subjects 4197 p  
subjects 4198 p  
subjects 420 p  
subjects 422 p  
subjects 423 p  
subjects 425 p  
subjects 426 p  
subjects 4287 p  
subjects 4290 p  
subjects 4291 p  
subjects 4292 p  
subjects 4294 p  
subjects 4309 p  
subjects 4315 p  
subjects 4318 p  
subjects 4319 p  
subjects 4320 p  
subjects 4321 p  
subjects 4322 p  
subjects 4323 p  
subjects 4324 p  
subjects 4326 p  
subjects 4327 p  
subjects 4328 p  
subjects 435 p  
subjects 436 p  
subjects 4374 p  
subjects 442 p  
subjects 4427 p  
subjects 4441 p  
subjects 448 p  
subjects 4482 p  
subjects 4483 p  
subjects 4499 p  
subjects 4500 p  
subjects 4501 p  
subjects 4502 p  
subjects 4503 p  
subjects 4504 p  
subjects 4509 p  
subjects 4533 p  
subjects 4539 p  
subjects 4544 p  
subjects 4545 p  
subjects 4546 p  
subjects 455 p  
subjects 4550 p  
subjects 4551 p  
subjects 4552 p  
subjects 456 p  
subjects 4576 p  
subjects 462 p  
subjects 463 p  
subjects 466 p  
subjects 469 p  
subjects 470 p  
subjects 471 p  
subjects 4719 p  
subjects 4720 p  
subjects 475 p  
subjects 4767 p  
subjects 4769 p Paragraph 
subjects 477 p  
subjects 4771 p Paragraph 
subjects 4772 p Paragraph 
subjects 4773 p Paragraph 
subjects 4774 p Paragraph 
subjects 4775 p Paragraph 
subjects 4776 p Paragraph 
subjects 4777 p Paragraph 
subjects 4778 p Paragraph 
subjects 4779 p Paragraph 
subjects 478 p  
subjects 4780 p Paragraph 
subjects 4781 p Paragraph 
subjects 4782 p Paragraph 
subjects 4783 p Paragraph 
subjects 4784 p Paragraph 
subjects 4785 p Paragraph 
subjects 4786 table  
subjects 4787 table  
subjects 4788 p Paragraph 
subjects 479 p  
subjects 4790 p Paragraph 
subjects 4791 p Paragraph 
subjects 4792 p  
subjects 4793 p Paragraph 
subjects 4794 p Paragraph 
subjects 4795 p Paragraph 
subjects 480 p  
subjects 481 p  
subjects 481 p  
subjects 482 p  
subjects 483 p  
subjects 4848 p  
subjects 485 p  
subjects 4851 p  
subjects 4852 p  
subjects 4853 p  
subjects 4854 p  
subjects 4855 p  
subjects 4856 p  
subjects 4857 p  
subjects 486 p  
subjects 4860 p  
subjects 4861 p  
subjects 4862 p  
subjects 4863 p  
subjects 4864 p  
subjects 4865 p  
subjects 4866 p  
subjects 4867 p  
subjects 4868 p  
subjects 4869 p  
subjects 487 p  
subjects 4871 p  
subjects 4872 p  
subjects 4873 p  
subjects 4874 p  
subjects 4876 p  
subjects 4881 p  
subjects 4882 p  
subjects 4884 p  
subjects 4885 p  
subjects 4887 p  
subjects 4888 p Paragraph 
subjects 4889 p Paragraph 
subjects 4890 p Paragraph 
subjects 4891 p Paragraph 
subjects 4892 p Paragraph 
subjects 4894 p Paragraph 
subjects 4895 p Paragraph 
subjects 4896 p Paragraph 
subjects 4897 table  
subjects 4898 p  
subjects 490 p  
subjects 4900 p Paragraph 
subjects 4901 p Paragraph 
subjects 4903 p Paragraph 
subjects 4904 p Paragraph 
subjects 4906 p Paragraph 
subjects 491 p  
subjects 4913 p  
subjects 4914 p Paragraph 
subjects 4915 p Paragraph 
subjects 4916 p  
subjects 492 p  
subjects 4921 p Paragraph 
subjects 4924 p  
subjects 494 p  
subjects 4941 p  
subjects 4949 p Paragraph 
subjects 495 p  
subjects 4950 p  
subjects 4951 p  
subjects 4952 p  
subjects 4961 p  
subjects 499 p  
subjects 5009 p  
subjects 5010 p  
subjects 5048 p  
subjects 5049 p  
subjects 5050 p  
subjects 5051 p  
subjects 5052 p  
subjects 5053 p  
subjects 5067 p Paragraph 
subjects 5070 p Paragraph 
subjects 5071 p Paragraph 
subjects 5072 p Paragraph 
subjects 5073 p Paragraph 
subjects 5074 p Paragraph 
subjects 5075 p Paragraph 
subjects 5077 p Paragraph 
subjects 5078 p Paragraph 
subjects 508 p  
subjects 5080 p Paragraph 
subjects 5081 p Paragraph 
subjects 5082 p Paragraph 
subjects 5083 p Paragraph 
subjects 5084 table  
subjects 5085 p Paragraph 
subjects 5086 p Paragraph 
subjects 5087 p Paragraph 
subjects 5088 p Paragraph 
subjects 5089 p Paragraph 
subjects 5090 p Paragraph 
subjects 5091 p Paragraph 
subjects 5092 p Paragraph 
subjects 5093 p Paragraph 
subjects 5094 p Paragraph 
subjects 5095 p Paragraph 
subjects 5096 p Paragraph 
subjects 5097 p Paragraph 
subjects 5098 p Paragraph 
subjects 5099 p Paragraph 
subjects 5100 p Paragraph 
subjects 5101 p Paragraph 
subjects 5102 p Paragraph 
subjects 5103 p Paragraph 
subjects 5106 p Paragraph 
subjects 5107 p Paragraph 
subjects 5110 p Paragraph 
subjects 5111 p Paragraph 
subjects 5112 p Paragraph 
subjects 5113 p Paragraph 
subjects 5115 p Paragraph 
subjects 5116 p Paragraph 
subjects 5117 p Paragraph 
subjects 5118 p Paragraph 
subjects 5119 p Paragraph 
subjects 5120 p Paragraph 
subjects 5121 p Paragraph 
subjects 5122 p Paragraph 
subjects 5124 p Paragraph 
subjects 5125 p Paragraph 
subjects 5126 p Paragraph 
subjects 5128 table  
subjects 5129 p Paragraph 
subjects 5130 table  
subjects 5132 p Paragraph 
subjects 5133 p Paragraph 
subjects 5134 p  
subjects 5135 p Paragraph 
subjects 5136 p Paragraph 
subjects 5138 p Paragraph 
subjects 5139 p Paragraph 
subjects 514 p  
subjects 5140 p Paragraph 
subjects 5142 p Paragraph 
subjects 5143 p Paragraph 
subjects 5145 p Paragraph 
subjects 5147 p Paragraph 
subjects 5148 p Paragraph 
subjects 5150 p Paragraph 
subjects 5151 p Paragraph 
subjects 5152 p Paragraph 
subjects 5153 p Paragraph 
subjects 5154 p Paragraph 
subjects 5155 p Paragraph 
subjects 5156 p Paragraph 
subjects 5157 p Paragraph 
subjects 5158 p Paragraph 
subjects 516 p  
subjects 5182 p  
subjects 5190 p Paragraph 
subjects 5191 p Paragraph 
subjects 5192 p Paragraph 
subjects 5193 p  
subjects 5194 p  
subjects 5195 p  
subjects 5196 p Paragraph 
subjects 5197 p Paragraph 
subjects 5198 ul  
subjects 5199 p Paragraph 
subjects 5200 p Paragraph 
subjects 5201 p Paragraph 
subjects 5202 p Paragraph 
subjects 5203 p Paragraph 
subjects 5205 p Paragraph 
subjects 5206 p Paragraph 
subjects 5207 p Paragraph 
subjects 5208 table  
subjects 5209 p Paragraph 
subjects 5210 p Paragraph 
subjects 5211 p Paragraph 
subjects 5214 p Paragraph 
subjects 5215 p Paragraph 
subjects 5216 p Paragraph 
subjects 5217 p Paragraph 
subjects 522 p  
subjects 5220 p Paragraph 
subjects 5221 p Paragraph 
subjects 5222 p Paragraph 
subjects 5223 p Paragraph 
subjects 5224 p Paragraph 
subjects 5225 p Paragraph 
subjects 5226 p Paragraph 
subjects 5227 p Paragraph 
subjects 5228 p Paragraph 
subjects 5229 p Paragraph 
subjects 523 p  
subjects 5230 p Paragraph 
subjects 5231 p Paragraph 
subjects 5232 p Paragraph 
subjects 5233 p Paragraph 
subjects 5234 p Paragraph 
subjects 5235 p Paragraph 
subjects 5237 p Paragraph 
subjects 5238 p Paragraph 
subjects 5239 p Paragraph 
subjects 524 p  
subjects 5240 p Paragraph 
subjects 5241 p Paragraph 
subjects 5242 p Paragraph 
subjects 5243 p Paragraph 
subjects 5244 p Paragraph 
subjects 5245 table  
subjects 5246 p Paragraph 
subjects 5248 p Paragraph 
subjects 5249 p Paragraph 
subjects 525 p  
subjects 5250 p Paragraph 
subjects 5251 p Paragraph 
subjects 5252 p Paragraph 
subjects 5253 p Paragraph 
subjects 5254 p Paragraph 
subjects 5255 p Paragraph 
subjects 5257 p Paragraph 
subjects 5258 ul  
subjects 5259 ul  
subjects 526 p  
subjects 5260 ul  
subjects 5261 p Paragraph 
subjects 5262 p Paragraph 
subjects 5263 ul  
subjects 5264 ul  
subjects 5265 p Paragraph 
subjects 5266 p  
subjects 5267 p  
subjects 5268 ul  
subjects 5269 p Paragraph 
subjects 5270 p Paragraph 
subjects 5271 p  
subjects 5272 p Paragraph 
subjects 5273 p Paragraph 
subjects 5274 ul  
subjects 5275 ul  
subjects 5276 ul  
subjects 5277 ul  
subjects 5278 ul  
subjects 5279 ul  
subjects 5280 p Paragraph 
subjects 5281 table  
subjects 5283 p  
subjects 5284 p Paragraph 
subjects 5285 p Paragraph 
subjects 5286 p Paragraph 
subjects 5287 p Paragraph 
subjects 5288 p Paragraph 
subjects 5289 p Paragraph 
subjects 5290 p Paragraph 
subjects 5291 p Paragraph 
subjects 5292 p Paragraph 
subjects 5293 p Paragraph 
subjects 5294 p Paragraph 
subjects 5295 p Paragraph 
subjects 5296 p Paragraph 
subjects 5297 p Paragraph 
subjects 5298 p Paragraph 
subjects 5299 p Paragraph 
subjects 5300 p Paragraph 
subjects 5301 p Paragraph 
subjects 5302 p Paragraph 
subjects 5303 p Paragraph 
subjects 5304 p Paragraph 
subjects 5305 p Paragraph 
subjects 5306 ul  
subjects 5307 ul  
subjects 5308 p Paragraph 
subjects 5309 p Paragraph 
subjects 5310 p Paragraph 
subjects 5311 p Paragraph 
subjects 5312 p Paragraph 
subjects 5313 p Paragraph 
subjects 5314 p Paragraph 
subjects 5315 p Paragraph 
subjects 5316 p Paragraph 
subjects 5318 ul  
subjects 5319 ul  
subjects 5320 ul  
subjects 5321 ul  
subjects 5322 ul  
subjects 5323 ul  
subjects 5324 ul  
subjects 5325 ul  
subjects 5326 ul  
subjects 5327 ul  
subjects 5328 ul  
subjects 5330 ul  
subjects 5331 ul  
subjects 5332 p Paragraph 
subjects 5333 p Paragraph 
subjects 5334 p Paragraph 
subjects 5335 p Paragraph 
subjects 5336 p Paragraph 
subjects 5338 ul  
subjects 5339 ul  
subjects 5340 p  
subjects 5341 p Paragraph 
subjects 5342 ul  
subjects 5343 ul  
subjects 5344 p  
subjects 5345 p Paragraph 
subjects 5346 p Paragraph 
subjects 5348 p Paragraph 
subjects 5349 p Paragraph 
subjects 5350 p Paragraph 
subjects 5351 p Paragraph 
subjects 5352 p Paragraph 
subjects 5353 p Paragraph 
subjects 5354 p Paragraph 
subjects 5355 p Paragraph 
subjects 5356 p Paragraph 
subjects 5357 p Paragraph 
subjects 5358 p Paragraph 
subjects 5359 p Paragraph 
subjects 5360 p Paragraph 
subjects 5361 p Paragraph 
subjects 5362 p Paragraph 
subjects 5363 p Paragraph 
subjects 5364 ul  
subjects 5365 p Paragraph 
subjects 5366 p Paragraph 
subjects 5367 p Paragraph 
subjects 5368 p Paragraph 
subjects 5369 p Paragraph 
subjects 5370 p Paragraph 
subjects 5381 ul  
subjects 5401 p  
subjects 5402 p  
subjects 5407 p  
subjects 5416 p  
subjects 5418 p  
subjects 5422 p  
subjects 5456 p  
subjects 5464 p  
subjects 5465 p  
subjects 5466 p  
subjects 5470 p  
subjects 549 p  
subjects 5517 p  
subjects 5543 p  
subjects 5548 p  
subjects 5549 p  
subjects 555 p  
subjects 5660 p  
subjects 5662 p  
subjects 5663 p  
subjects 5664 p  
subjects 5665 p  
subjects 5666 p  
subjects 5667 p  
subjects 5668 p  
subjects 5669 p  
subjects 5670 p  
subjects 5671 p  
subjects 5672 p  
subjects 5673 p  
subjects 5674 p  
subjects 5675 p  
subjects 5676 p  
subjects 5677 p  
subjects 5678 p  
subjects 5680 p  
subjects 5681 p  
subjects 5682 p  
subjects 5683 p  
subjects 5684 p  
subjects 5685 p  
subjects 5686 p  
subjects 5687 p  
subjects 5688 p  
subjects 5689 p  
subjects 5690 p  
subjects 5691 p  
subjects 5692 p  
subjects 5693 p  
subjects 5694 p  
subjects 5697 p  
subjects 5698 p  
subjects 5699 p  
subjects 5700 p  
subjects 5701 p  
subjects 5703 p  
subjects 5704 p  
subjects 5706 p  
subjects 5707 p  
subjects 5708 p  
subjects 5709 p  
subjects 5710 p  
subjects 5712 p  
subjects 5713 p  
subjects 5715 p  
subjects 5716 p  
subjects 5717 p  
subjects 5718 p  
subjects 5719 p  
subjects 5720 p  
subjects 5721 p  
subjects 5722 p  
subjects 5723 p  
subjects 5724 p  
subjects 5725 p  
subjects 5726 p  
subjects 5727 p  
subjects 5729 p  
subjects 5730 p  
subjects 5731 p  
subjects 5732 p  
subjects 5733 p  
subjects 5734 p  
subjects 5735 p  
subjects 5736 p  
subjects 5738 p  
subjects 5739 p  
subjects 5740 p  
subjects 5742 p  
subjects 5743 p  
subjects 5745 p  
subjects 5746 p  
subjects 5747 p  
subjects 5748 p  
subjects 5749 p  
subjects 5750 p  
subjects 5751 p  
subjects 5752 p  
subjects 5753 p  
subjects 5754 p  
subjects 5756 p  
subjects 5757 p  
subjects 5758 p  
subjects 5759 p  
subjects 576 p  
subjects 5760 p  
subjects 5762 p  
subjects 5769 p  
subjects 5770 p  
subjects 5771 p  
subjects 5772 p  
subjects 5773 p  
subjects 5778 p  
subjects 5779 p  
subjects 5781 p  
subjects 5783 p  
subjects 5804 p  
subjects 5814 p  
subjects 5815 p Paragraph 
subjects 5816 p Paragraph 
subjects 5818 p Paragraph 
subjects 5822 p Paragraph 
subjects 5823 p Paragraph 
subjects 5824 p Paragraph 
subjects 5825 p Paragraph 
subjects 5826 p Paragraph 
subjects 5827 p Paragraph 
subjects 5828 p Paragraph 
subjects 5829 p Paragraph 
subjects 5830 p  
subjects 5831 p Paragraph 
subjects 5834 p Paragraph 
subjects 5837 p  
subjects 5839 p Paragraph 
subjects 5840 p Paragraph 
subjects 5841 p  
subjects 5842 p Paragraph 
subjects 5843 p  
subjects 5844 p Paragraph 
subjects 5847 p Paragraph 
subjects 5852 p  
subjects 5857 p Paragraph 
subjects 588 p  
subjects 590 p  
subjects 5902 p  
subjects 5905 p  
subjects 591 p  
subjects 5913 p  
subjects 5920 p  
subjects 5935 p  
subjects 5944 p  
subjects 595 p  
subjects 6033 p  
subjects 6171 p  
subjects 619 p  
subjects 6310 p  
subjects 6327 p  
subjects 6328 p  
subjects 6330 p  
subjects 6345 ol  
subjects 635 p  
subjects 6364 p  
subjects 638 p  
subjects 639 p  
subjects 640 p  
subjects 6401 p  
subjects 6404 p  
subjects 641 p  
subjects 642 p  
subjects 643 p  
subjects 6431 ~conditional~  
subjects 644 p  
subjects 645 p  
subjects 646 p  
subjects 647 p  
subjects 648 p  
subjects 649 p  
subjects 650 p  
subjects 651 p  
subjects 655 p  
subjects 657 p  
subjects 661 p  
subjects 662 p  
subjects 663 p  
subjects 664 p  
subjects 6647 p  
subjects 665 p  
subjects 6651 p  
subjects 666 p  
subjects 667 p  
subjects 668 p  
subjects 669 p  
subjects 6690 p  
subjects 670 p  
subjects 6704 p  
subjects 6705 p  
subjects 6706 ~conditional~  
subjects 6707 p  
subjects 6709 p  
subjects 671 p  
subjects 6710 p  
subjects 6711 p  
subjects 6712 p  
subjects 6713 p  
subjects 6715 p  
subjects 6716 p  
subjects 6717 p  
subjects 6718 p  
subjects 6719 p  
subjects 672 p  
subjects 6720 p  
subjects 6721 p  
subjects 6722 p  
subjects 6723 p  
subjects 6724 p  
subjects 6725 p  
subjects 6726 p  
subjects 6727 p  
subjects 6728 p  
subjects 6729 p  
subjects 6730 p  
subjects 6731 p  
subjects 6732 p  
subjects 6733 p  
subjects 6734 p  
subjects 6735 p  
subjects 6736 p  
subjects 6737 p  
subjects 6738 p  
subjects 6739 p  
subjects 6740 p  
subjects 6741 p  
subjects 6742 p  
subjects 6743 p  
subjects 6744 p  
subjects 6745 p  
subjects 6747 p  
subjects 6748 p  
subjects 675 p  
subjects 6750 p  
subjects 6751 p  
subjects 6752 p  
subjects 6753 p  
subjects 6754 p  
subjects 6756 p  
subjects 6758 p  
subjects 6759 p  
subjects 676 p  
subjects 6760 p  
subjects 6761 p  
subjects 6762 p  
subjects 677 p  
subjects 6772 p  
subjects 6773 p  
subjects 6774 p  
subjects 6775 p  
subjects 6776 p  
subjects 6777 p  
subjects 6779 p  
subjects 678 p  
subjects 6780 p  
subjects 679 p  
subjects 680 p  
subjects 6805 p  
subjects 681 p  
subjects 6811 p  
subjects 6812 p  
subjects 6813 p  
subjects 6814 p  
subjects 6815 p  
subjects 6816 p  
subjects 6817 p  
subjects 6818 p  
subjects 6819 p  
subjects 682 p  
subjects 6820 p  
subjects 6821 p  
subjects 6822 p  
subjects 6823 p  
subjects 6824 p  
subjects 6825 p  
subjects 6826 p  
subjects 6827 p  
subjects 6828 p  
subjects 683 p  
subjects 6830 p  
subjects 6831 p  
subjects 6832 p  
subjects 6833 p  
subjects 6834 p  
subjects 6835 p  
subjects 6836 p  
subjects 6837 p  
subjects 6838 p  
subjects 6839 p  
subjects 684 p  
subjects 6840 p  
subjects 6841 p  
subjects 6842 p  
subjects 685 p  
subjects 686 p  
subjects 687 p  
subjects 6884 p  
subjects 6885 p  
subjects 6886 p  
subjects 6887 p  
subjects 6888 p  
subjects 6889 p  
subjects 689 p  
subjects 6890 p  
subjects 6891 p  
subjects 6892 p  
subjects 6894 p  
subjects 6895 p  
subjects 6896 p  
subjects 6898 p  
subjects 6899 p  
subjects 690 p  
subjects 6900 p  
subjects 6901 p  
subjects 6902 p  
subjects 6903 p  
subjects 6904 p  
subjects 6905 p  
subjects 6906 p  
subjects 6907 p  
subjects 6908 p  
subjects 6909 p  
subjects 691 p  
subjects 6910 p  
subjects 6911 p  
subjects 6912 p  
subjects 6913 p  
subjects 6914 p  
subjects 6915 p  
subjects 6916 p  
subjects 6917 p  
subjects 6918 p  
subjects 6919 p  
subjects 692 p  
subjects 6920 p  
subjects 6921 p  
subjects 6922 p  
subjects 6923 p  
subjects 6924 p  
subjects 6925 p  
subjects 6926 p  
subjects 6927 p  
subjects 6928 p  
subjects 693 p  
subjects 6932 p  
subjects 6933 p  
subjects 6934 p  
subjects 6936 p  
subjects 6937 p  
subjects 6938 p  
subjects 6939 p  
subjects 694 p  
subjects 6940 p  
subjects 6941 p  
subjects 6942 p  
subjects 6943 p  
subjects 6944 p  
subjects 6945 p  
subjects 6946 p  
subjects 6947 p  
subjects 6948 p  
subjects 6949 p  
subjects 695 p  
subjects 6950 p  
subjects 6951 p  
subjects 6952 p  
subjects 6953 p  
subjects 6954 p  
subjects 6955 p  
subjects 6956 p  
subjects 6957 p  
subjects 6958 p  
subjects 6959 p  
subjects 696 p  
subjects 6960 p  
subjects 6961 p  
subjects 6962 p  
subjects 6963 p  
subjects 6964 p  
subjects 6965 p  
subjects 6965 p  
subjects 6966 p  
subjects 6966 p  
subjects 6967 p  
subjects 6967 p  
subjects 6968 p  
subjects 6968 p  
subjects 6969 p  
subjects 697 p  
subjects 6970 p  
subjects 6971 p  
subjects 6972 p  
subjects 6973 p  
subjects 698 p  
subjects 705 p  
subjects 709 p  
subjects 727 p  
subjects 728 p  
subjects 729 p  
subjects 731 p  
subjects 732 p  
subjects 733 p  
subjects 737 p  
subjects 752 p  
subjects 760 p  
subjects 761 p  
subjects 762 p  
subjects 763 p  
subjects 764 p  
subjects 765 p  
subjects 766 p  
subjects 767 p  
subjects 768 p  
subjects 769 p  
subjects 770 p  
subjects 771 p  
subjects 772 p  
subjects 773 p  
subjects 774 p  
subjects 775 p  
subjects 776 p  
subjects 777 p  
subjects 778 p  
subjects 779 p  
subjects 780 p  
subjects 781 p  
subjects 782 p  
subjects 783 p  
subjects 784 p  
subjects 785 p  
subjects 786 p  
subjects 787 p  
subjects 788 p  
subjects 789 p  
subjects 790 p  
subjects 791 p  
subjects 792 p  
subjects 793 p  
subjects 794 p  
subjects 795 p  
subjects 796 p  
subjects 797 p  
subjects 798 p  
subjects 799 p  
subjects 800 p  
subjects 802 p  
subjects 803 p  
subjects 804 p  
subjects 805 p  
subjects 806 p  
subjects 807 p  
subjects 808 p  
subjects 809 p  
subjects 810 p  
subjects 816 p  
subjects 817 p  
subjects 818 p  
subjects 819 p  
subjects 820 p  
subjects 821 p  
subjects 822 p  
subjects 824 p  
subjects 825 p  
subjects 829 p  
subjects 831 p  
subjects 832 p  
subjects 833 p  
subjects 834 p  
subjects 835 p  
subjects 84 p  
subjects 840 p  
subjects 844 p  
subjects 845 p  
subjects 846 p  
subjects 847 p  
subjects 848 p  
subjects 849 p  
subjects 850 p  
subjects 852 p  
subjects 853 p  
subjects 854 p  
subjects 855 p  
subjects 856 p  
subjects 857 p  
subjects 871 p  
subjects 883 p  
subjects 884 p  
subjects 885 p  
subjects 887 p  
subjects 888 p  
subjects 889 p  
subjects 890 p  
subjects 891 p  
subjects 892 p  
subjects 893 p  
subjects 894 p  
subjects 895 p  
subjects 896 p  
subjects 897 p  
subjects 898 p  
subjects 899 p  
subjects 900 p  
subjects 902 p  
subjects 903 p  
subjects 904 p  
subjects 905 p  
subjects 906 p  
subjects 907 p  
subjects 908 p  
subjects 909 p  
subjects 910 p  
subjects 911 p  
subjects 912 p  
subjects 914 p  
subjects 915 p  
subjects 916 p  
subjects 917 p  
subjects 918 p  
subjects 920 p  
subjects 921 p  
subjects 923 p  
subjects 925 p  
subjects 927 p  
subjects 936 p  
subjects 937 p  
subjects 938 p  
subjects 947 p  
