# coding=Shift_JIS

CPUtypeINIT
===========

Mac OS �̎��̂���CPU�`���� PowerPC 603 �ɕύX���܂��B
AltiVec �������I�ɖ������ɂ��������Ƃ��ɕ֗����Ǝv���܂��B
�ύX�̓V�X�e���S�̂ɉe�����܂��B�i�󋵂ɂ���Đ؂�ւ���A�݂����Ȋ�p�Ȃ��Ƃ͂ł��܂���j

�Z�p�I�ɂ́A Gestalt() �֐���
  - gestaltNativeCPUtype
  - gestaltNativeCPUfamily
�ȏ�̃Z���N�^�ɑ΂���ԋp�l�� gestaltCPU603 �ɕύX���܂��B


�K�v�V�X�e������
----------------

- ����Talk 7.5


�g����
------

�V�X�e���t�H���_�̋@�\�g���t�H���_�ɕ��荞��ł��������B


�r���h���@
----------

MPW �� Pascal �R���p�C�����K�v�ł��B
CodeWarrior �ł��s����Ǝv���܂����A���̏ꍇ�͂������Őݒ肵�Ă��������B

MPW�ɓǂݍ��܂���O�ɉ��s�R�[�h��CR�ɂ���Ƃ�����������܂���B
���̏ꍇ�� switchcrlf.pl ���g�����A�������͓K���ȃe�L�X�g�G�f�B�^���g���Ă��������B

MPW�𗧂��グ�����Ƃ̎菇��

1. �J�����g�f�B���N�g�����R�[�h�̂���t�H���_�ɕύX����
2. �V�����s�� 'make' �Ɠ��͂��AEnter
3. �\�����ꂽ�r���h�R�}���h��I�����AEnter

�ɂȂ�܂��B


���W�I�Ȏg����
--------------

'CPUT' (128) ���\�[�X��ҏW���邱�Ƃ� Gestalt() �̕ԋp�l���J�X�^�}�C�Y�ł��܂��B
�iResEdit �e���v���[�g��������̂ŁA�J���ΕҏW���@�͕�����Ǝv���܂��j
�ݒ肷��l�ɂ��Ă� Universal Headers �� Gestalt.h �����Ă��������B
�i�������� Gestalt.h �ŃC���^�[�l�b�g�������Ă��������j

�ύX�̔��f�ɂ͍ċN�����K�v�ł��B
